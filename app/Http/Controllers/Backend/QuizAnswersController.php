<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\QuizCate;
use App\Models\Quiz;
use App\Models\QuizQuestions;
use App\Models\QuizAnswers;
use App\Models\MetaData;
use App\Models\Rating;

use Helper, File, Session, Auth, Image;

class QuizAnswersController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   
        
        $question_id = isset($request->question_id) ? $request->question_id : null;        

        $questionDetail = QuizQuestions::find($question_id);        
        
        $answerList = QuizAnswers::getList(['question_id' => $question_id, 'limit' => 1000])->toArray();
        //dd($answerList);
        return view('backend.quiz-answers.index', compact( 'questionDetail', 'answerList', 'question_id'));
    }

   

    /**
    * Store a newly created resource in storage.
    *
    * @param  Request  $request
    * @return Response
    */
    public function store(Request $request)
    {

        $dataArr = $request->all();
        $question_id = $dataArr['question_id'];
        //delete all
        QuizAnswers::where('question_id', $dataArr['question_id'])->delete();
        
        foreach($dataArr['content'] as $key => $content){
            $is_true = $key == $dataArr['is_true'] ? 1 : 0;

            $rs = QuizAnswers::create([
                'content' => $content,
                'question_id' => $question_id,
                'is_true' => $is_true,
                'display_order' => $key + 1
            ]);

            if($is_true == 1){
                QuizQuestions::where('id', $question_id)->update(['answer_id' => $rs->id]);
            }
        }

        Session::flash('message', 'Thao tác thành công');

        $questionDetail = QuizQuestions::find($question_id);        
        
        $answerList = QuizAnswers::getList(['question_id' => $question_id, 'limit' => 1000]);

        return view('backend.quiz-answers.index', compact( 'questionDetail', 'answerList', 'question_id'));
    }
    
   
}
