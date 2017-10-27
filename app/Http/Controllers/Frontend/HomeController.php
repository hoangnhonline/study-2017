<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Articles;
use App\Models\ArticlesCate;
use App\Models\Customer;
use App\Models\Newsletter;
use App\Models\Settings;
use App\Models\Pages;
use App\Models\Rating;
use App\Models\Courses;
use App\Models\Objects;
use App\Models\Livestream;
use App\Models\UserQuiz;
use App\Models\Quiz;

use Helper, File, Session, Auth, Hash, Response;

class HomeController extends Controller
{
    
    public static $loaiSpArrKey = [];    

    public function __construct(){
        
       

    }    
    public function rss(Request $request){        
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        $articlesList = Articles::where('status', 1)->where('cate_id', '<>', 7)->orderBy('id', 'desc')->get();  
        return Response::view('frontend.home.rss', compact('productList', 'settingArr', 'articlesList'))->header('Content-Type', 'text/xml');
    }
    public function insertRating(Request $request){
        $score = $request->score;
        $object_id = $request->object_id;
        $object_type = $request->object_type;
        if($score){
            $rs = Rating::where(['score' => $score, 'object_id' => $object_id, 'object_type' => $object_type])->first();
            if($rs){
                $rs->amount = $rs->amount + 1;
                $rs->save();
            }else{
                Rating::create(['score' => $score, 'object_id' => $object_id, 'object_type' => $object_type, 'amount' => 1]);
            }
        }
        return view('frontend.partials.rating', compact('object_id', 'object_type'));
    }
    public function share(Request $request){
        $strRandom = $request->strRandom;
        $detail = UserQuiz::where('str_random', $strRandom)->first();
        if(!$detail){
            return redirect()->route('home');
        }
        $quizDetail = Quiz::find($detail->quiz_id);
        return view('frontend.share', compact('id', 'detail', 'quizDetail'));
    }
    public function index(Request $request)
    {   
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');

        $seo = $settingArr;
        $seo['title'] = $settingArr['site_title'];
        $seo['description'] = $settingArr['site_description'];
        $seo['keywords'] = $settingArr['site_keywords'];
        $socialImage = $settingArr['banner'];
        
        $coursesList = Courses::getList(['is_hot' => 1, 'limit' => 9]);

        $teacherList = Objects::getList(['type' => 1, 'is_hot' => 1, 'limit' => 10]);

        $studentList = Objects::getList(['type' => 2, 'is_hot' => 1, 'limit' => 10]);

        $articlesList = Articles::getList(['is_hot' => 1, 'limit' => 4]);
        $livestream = Livestream::where('status', 2)->orderBy('id', 'desc')->first();
        return view('frontend.home.index', compact('teacherList', 'studentList', 'coursesList', 'socialImage', 'seo', 'articlesList', 'livestream'));

    }
    public function getChild(Request $request){
        $module = $request->mod;
        $id = $request->id;
        $column = $request->col;
        return Helper::getChild($module, $column, $id);
    }
    public function pages(Request $request){
        $slug = $request->slug;

        $detailPage = Pages::where('slug', $slug)->first();
         
        if(!$detailPage){
            return redirect()->route('home');
        }
        $seo['title'] = $detailPage->meta_title ? $detailPage->meta_title : $detailPage->title;
        $seo['description'] = $detailPage->meta_description ? $detailPage->meta_description : $detailPage->title;
        $seo['keywords'] = $detailPage->meta_keywords ? $detailPage->meta_keywords : $detailPage->title;      
        $socialImage = $detailPage->image_url ? $detailPage->image_url : null;      

        return view('frontend.pages.index', compact('detailPage', 'seo', 'slug', 'socialImage'));    
    }

    public function services(Request $request){
        $servicesList = Articles::where('cate_id', 7)->orderBy('display_order')->orderBy('id')->get();
        
        $seo['title'] =  $seo['description'] = $seo['keywords'] = "Dịch vụ";           

        return view('frontend.pages.services', compact('servicesList', 'seo'));    
    }

    
    public function getNoti(){
        $countMess = 0;
        if(Session::get('userId') > 0){
            $countMess = CustomerNotification::where(['customer_id' => Session::get('userId'), 'status' => 1])->count();    
        }
        return $countMess;
    }
    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function search(Request $request)
    {
        $tu_khoa = $request->keyword;
        $parent_id = $request->cid ? $request->cid : null;
        $tu_khoa_find = Helper::stripUnicode($tu_khoa);
        $query = Product::where('product.alias', 'LIKE', '%'.$tu_khoa_find.'%')->orWhere('product.code', 'LIKE', '%'.$tu_khoa_find.'%');
            if($parent_id > 0){
                $query->where('parent_id', $parent_id);
            }
                    $query->leftJoin('product_img', 'product_img.id', '=','product.thumbnail_id')
                    ->select('product_img.image_url', 'product.*')                                                  
                    ->orderBy('product.id', 'desc');
                   $productList = $query->paginate(15);
        $seo['title'] = $seo['description'] =$seo['keywords'] = "Tìm kiếm sản phẩm theo từ khóa '".$tu_khoa."'";
       
        return view('frontend.cate.search', compact('productList', 'tu_khoa', 'seo', 'parent_id'));
    }
    public function ajaxTab(Request $request){
        $table = $request->type ? $request->type : 'category';
        $id = $request->id;

        $arr = Film::getFilmHomeTab( $table, $id);

        return view('frontend.index.ajax-tab', compact('arr'));
    }
    public function contact(Request $request){        

        $seo['title'] = 'Liên hệ';
        $seo['description'] = 'Liên hệ';
        $seo['keywords'] = 'Liên hệ';
        $socialImage = null;
        $servicesList = Articles::where('cate_id', 7)->orderBy('display_order')->orderBy('id')->get();
        return view('frontend.contact.index', compact('seo', 'socialImage', 'servicesList'));
    }

    

    public function registerNews(Request $request)
    {

        $register = 0; 
        $email = $request->email;
        $newsletter = Newsletter::where('email', $email)->first();
        if(is_null($newsletter)) {
           $newsletter = new Newsletter;
           $newsletter->email = $email;
           $newsletter->is_member = 0;
           $newsletter->save();
           $register = 1;
        }

        return $register;
    }

}
