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

use Helper, File, Session, Auth;
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
                  
            $seo['title'] = $cateDetail->meta_title ? $cateDetail->meta_title : $cateDetail->title;
            $seo['description'] = $cateDetail->meta_description ? $cateDetail->meta_description : $cateDetail->title;
            $seo['keywords'] = $cateDetail->meta_keywords ? $cateDetail->meta_keywords : $cateDetail->title;

            $quizList = Quiz::getList(['cate_id' => $cateDetail->id, 'pagination' => $settingArr['articles_per_page']]);      

            return view('frontend.quiz.index', compact('coursesList', 'seo', 'socialImage', 'quizList', 'cateDetail'));
        }else{
            return view('erros.404');
        }   
    }
    public function confirm(Request $request){
        $quiz_id = $request->id;
        $quizDetail = Quiz::find($quiz_id);
        if($quizDetail){
            
            $socialImage = null;
            $seo['title'] = $seo['description'] = $seo['keywords'] = 'Xác nhận làm bài - '.$quizDetail->name ;

            return view('frontend.quiz.confirm', compact('quizDetail', 'seo', 'socialImage', 'quizList', 'cateDetail'));
        }else{
            return view('erros.404');
        }  
        
    }
    public function doing(Request $request){
        $quiz_id = $request->id;
        $quizDetail = Quiz::find($quiz_id);
        if($quizDetail){
            
            $socialImage = null;
            $seo['title'] = $seo['description'] = $seo['keywords'] = 'Làm bài - '.$quizDetail->name ;
            $quizQuestions = QuizQuestions::where('quiz_id', $quiz_id)->orderByRaw('RAND()')->get();

            return view('frontend.quiz.doing', compact('quizDetail', 'seo', 'socialImage', 'quizList', 'cateDetail', 'quizQuestions'));
        }else{
            return view('erros.404');
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
            return view('erros.404');
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
            return view('erros.404');
        }
    }
}

