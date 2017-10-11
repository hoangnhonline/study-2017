<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\QuizCate;
use App\Models\Quiz;
use App\Models\QuizQuestions;
use App\Models\MetaData;
use App\Models\Rating;

use Helper, File, Session, Auth, Image;

class QuizQuestionsController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   
        
        $quiz_id = isset($request->quiz_id) ? $request->quiz_id : null;

        $items =QuizQuestions::where('quiz_id', $quiz_id)->orderBy('display_order')->paginate(40);
        
        $cateArr = QuizCate::getList(['limit' => 100]);  

        $quizDetail = Quiz::find($quiz_id);        
        $quizList = Quiz::getList(['cate_id' => $quizDetail->cate_id, 'limit' => 1000]);
        return view('backend.quiz-questions.index', compact( 'items', 'cateArr' , 'quiz_id', 'quizDetail', 'quizList'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        
        $cateArr = QuizCate::getList(['limit' => 100]);
        
        $quiz_id = $request->quiz_id;
        
        $quizDetail = Quiz::find($quiz_id);  
        $quizList = Quiz::getList(['cate_id' => $quizDetail->cate_id, 'limit' => 1000]);
        return view('backend.quiz-questions.create', compact( 'cateArr', 'quiz_id', 'quizDetail', 'quizList'));
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
        
        $this->validate($request,[            
            'quiz_id' => 'required',            
            'content' => 'required',                        
        ],
        [            
            'cate_id.required' => 'Bạn chưa chọn bài trắc nghiệm',            
            'content.required' => 'Bạn chưa nhập nội dung câu hỏi'
        ]);       
        
        $rs = QuizQuestions::create($dataArr);

        Session::flash('message', 'Tạo mới thành công');

        return redirect()->route('quiz-questions.index', ['quiz_id' => $dataArr['quiz_id']]);
    }
    
    /**
    * Display the specified resource.
    *
    * @param  int  $id
    * @return Response
    */
    public function show($id)
    {
    //
    }

    /**
    * Show the form for editing the specified resource.
    *
    * @param  int  $id
    * @return Response
    */
    public function edit($id)
    {
        
        
        $detail = QuizQuestions::find($id);
        if( Auth::user()->role < 3 ){
            if($detail->created_user != Auth::user()->id){
                return redirect()->route('courses.index');
            }
        }
        $cateArr = QuizCate::getList(['limit' => 100]);
        $quizList = Quiz::getList(['limit' => 100]);       
        
        return view('backend.quiz-questions.edit', compact('detail', 'cateArr', 'quizList'));
    }

    /**
    * Update the specified resource in storage.
    *
    * @param  Request  $request
    * @param  int  $id
    * @return Response
    */
    public function update(Request $request)
    {
        $dataArr = $request->all();
        
        
        $this->validate($request,[            
            'quiz_id' => 'required',            
            'content' => 'required',                        
        ],
        [            
            'cate_id.required' => 'Bạn chưa chọn bài trắc nghiệm',            
            'content.required' => 'Bạn chưa nhập nội dung câu hỏi'
        ]);
         
        $model = QuizQuestions::find($dataArr['id']);

        $model->update($dataArr);        
        
        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('quiz-questions.index', ['quiz_id' => $dataArr['quiz_id']]);
    }

    /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return Response
    */
    public function destroy($id)
    {
        // delete
        $model = Quiz::find($id);
        $model->delete();

        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('quiz-questions.index');
    }
}
