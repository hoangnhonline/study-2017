<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Quiz;
use App\Models\QuizCate;
use App\Models\QuizQuestions;
use App\Models\QuizAnswers;
use App\Models\Settings;
use App\Models\UserQuiz;
use App\Models\UserCourses;
use App\Models\Customer;
use App\Models\ArticlesCate;
use App\Models\Articles;


use Helper, File, Session, Auth, Image, Hash;
use Mail;

class QuizController extends Controller
{
    public function index(Request $request)
    {
        $socialImage = null;
        $slug = $request->slug; 
        $cateDetail = QuizCate::where('slug' , $slug)->first();
        
        if($cateDetail){
            $title = trim($cateDetail->meta_title) ? $cateDetail->meta_title : $cateDetail->name;
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
                  
            if( $cateDetail->meta_id > 0){
               $meta = MetaData::find( $cateDetail->meta_id )->toArray();
               $seo['title'] = $meta['title'] != '' ? $meta['title'] : $cateDetail->name;
               $seo['description'] = $meta['description'] != '' ? $meta['description'] : $cateDetail->name;
               $seo['keywords'] = $meta['keywords'] != '' ? $meta['keywords'] : $cateDetail->name;
            }else{
                $seo['title'] = $seo['description'] = $seo['keywords'] = $cateDetail->name;
            } 

            $quizList = Quiz::getList(['cate_id' => $cateDetail->id, 'pagination' => $settingArr['articles_per_page']]);      
            $cateList = ArticlesCate::getList(['limit' => 100, 'except' => $cateDetail->id, 'type' => 1]);
            if($cateList){
                foreach($cateList as $cate){
                    $articleByCate[$cate->id] = Articles::getList(['cate_id' => $cate->id, 'limit' => 5]);
                }
            }
            return view('frontend.quiz.index', compact('coursesList', 'seo', 'socialImage', 'quizList', 'cateDetail', 'cateList', 'articleByCate'));
        }else{
            return view('errors.404');
        }   
    }

    public function shareSuccess(Request $request){
        $user_id = Session::get('userId');
        $mod = $request->mod;
        $type = $request->type;
        if ($mod == "courses"){
            $rs = UserCourses::where(['user_id' => $user_id, 'courses_id' => $request->courses_id, 'type' => $type])->first();
            if( !$rs ){
                UserCourses::create(['user_id' => $user_id, 'courses_id' => $request->courses_id, 'score' => 0, 'type' => $type]);
            }
            $cus = Customer::find($user_id);            
            $cus->score++;
            $cus->save();            
        }else{
            $url = $request->url;
            
            $str_random = $request->str_random;
            $quiz_id = $request->quiz_id;        
            // check + diem
            $rs = UserQuiz::where(['user_id' => $user_id, 'quiz_id' => $quiz_id, 'is_share' => 1])->count();
            if( $rs == 0){
                $cus = Customer::find($user_id);            
                $cus->score++;
                $cus->save();
                echo "1";
            }
            // update is_share = 1
            UserQuiz::where(['user_id' => $user_id, 'quiz_id' => $quiz_id, 'str_random' => $str_random])->update(['is_share' => 1]);
            }
        
    }
    public function confirm(Request $request){
        $quiz_id = $request->id;
        $quizDetail = Quiz::find($quiz_id);
        if($quizDetail){
            $cateDetail = QuizCate::find($quizDetail->cate_id);
            $socialImage = null;
            $seo['title'] = $seo['description'] = $seo['keywords'] = $quizDetail->name ;

            return view('frontend.quiz.confirm', compact('quizDetail', 'seo', 'socialImage', 'quizList', 'cateDetail'));
        }else{
            return view('errors.404');
        }  
        
    }
    public function nopBai(Request $request){
        $dataArr = $request->all();
        $quiz_id = $dataArr['quiz_id'];
        $arrDapAn = QuizQuestions::where('quiz_id', $quiz_id)->orderBy('id', 'desc')->pluck('answer_id', 'id');
        //dd($dataArr, $arrDapAn);
        $tong_so_cau = count($arrDapAn);
        $so_cau_dung = 0;
        $quizDetail = Quiz::find($quiz_id);
        if(!empty($dataArr['ans'])){
            foreach($dataArr['ans'] as $question_id => $answer_id){
                if($arrDapAn[$question_id] == $answer_id){
                    $so_cau_dung++;
                }
            }
        }
         $seo['title'] = $seo['description'] = $seo['keywords'] = 'Kết quả';
        $diem = $so_cau_dung*100/$tong_so_cau;
        $diem = round( $diem, 2);
        $socialImage = null;        
        $image = Image::canvas(500, 300, '#f5f5f0');
        $image->insert(Session::get('avatar'));        
        $image->text($diem, 350, 180, function($font) {
            $font->file(public_path().'/assets/fonts/cafeta.ttf');
            $font->size(150);
            $font->color('#51A0FB');
            $font->align('center');  
        });
        $image->text($quizDetail->name, 250, 270, function($font) {
            $font->file(public_path().'/assets/fonts/cafeta.ttf');
            $font->size(40);
            $font->color('#51A0FB');
            $font->align('center');            
        });
        $image_name = Session::get('userId')."-".$quizDetail->id."-".time();
        $strRandom = md5($image_name);
        $image->save(public_path()."/uploads/result/".$image_name.'.png', 100);

        $rs = UserQuiz::create([
                'image_url' => "/public/uploads/result/".$image_name.".png",
                'user_id' => Session::get('userId'),
                'quiz_id' => $quizDetail->id,
                'is_share' => 0,
                'score' => $diem,
                'str_random' => $strRandom            
            ]);
        $userQuizId = $rs->id;
        $phut_use = $request->phut_use;
        $giay_use = $request->giay_use;
        return view('frontend.quiz.done', compact('quizDetail', 'seo', 'socialImage', 'so_cau_dung', 'diem', 'tong_so_cau', 'userQuizId', 'strRandom', 'phut_use', 'giay_use'));

    }
    public function doing(Request $request){
        $quiz_id = $request->id;
        $quizDetail = Quiz::find($quiz_id);
        if($quizDetail){
            $cateDetail = QuizCate::find($quizDetail->cate_id);
            $socialImage = null;
            $seo['title'] = $seo['description'] = $seo['keywords'] = 'Làm bài - '.$quizDetail->name ;
            $quizQuestions = QuizQuestions::where('quiz_id', $quiz_id)->orderByRaw('RAND()')->get();

            return view('frontend.quiz.doing', compact('quizDetail', 'seo', 'socialImage', 'quizList', 'cateDetail', 'quizQuestions'));
        }else{
            return view('errors.404');
        }  
        
    }
    public function detail(Request $request)
    
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = Quiz::find($id);
        
        if( $detail ){           

            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            $otherList = Quiz::getListOther(['id' => $id, 'limit' => 5]);
            $seo['title'] = $detail->meta_title ? $detail->meta_title : $detail->title;
            $seo['description'] = $detail->meta_description ? $detail->meta_description : $detail->title;
            $seo['keywords'] = $detail->meta_keywords ? $detail->meta_keywords : $detail->title;            

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
            $firstLession = Quiz::getFirstLession($id);
            //dd($firstLession);
            return view('frontend.quiz.detail', compact('detail', 'otherList', 'seo', 'socialImage', 'firstLession'));

        }else{
            return view('errors.404');
        }
    }
    public function lession(Request $request)
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = QuizLession::find($id);
        
        if( $detail ){           
            $lessionArr = [];
            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
           
            $seo['title'] = $detail->meta_title ? $detail->meta_title : $detail->title;
            $seo['description'] = $detail->meta_description ? $detail->meta_description : $detail->title;
            $seo['keywords'] = $detail->meta_keywords ? $detail->meta_keywords : $detail->title;            

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
            $partList = QuizPart::getList(['courses_id' => $detail->courses_id]);
            if($partList){
                foreach($partList as $part){
                    $lessionArr[$part->id] = QuizLession::getList(['part_id' => $part->id]);
                }
            }
            return view('frontend.quiz.lession', compact('detail', 'seo', 'socialImage', 'partList', 'lessionArr'));
            

        }else{
            return view('errors.404');
        }
    }
}

