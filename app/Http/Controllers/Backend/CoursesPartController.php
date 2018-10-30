<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Courses;
use App\Models\CoursesPart;
use App\Models\Objects;
use App\Models\Subjects;
use App\Models\MetaData;

use Helper, File, Session, Auth, Image;

class CoursesPartController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   
        $courses_id = $request->courses_id;
        
        $name = isset($request->name) && $request->name != '' ? $request->name : '';
        
        $query = CoursesPart::where('status', 1)->where('courses_id', $courses_id);

        // check editor
        if( Auth::user()->role < 3 ){
            $query->where('created_user', Auth::user()->id);
        }
        if( $name != ''){
            $query->where('alias', 'LIKE', '%'.$name.'%');
        }

        $items = $query->orderBy('display_order')->paginate(20);
        
        //subjects
        $coursesList = Courses::orderBy('display_order')->get();

        $coursesDetail = Courses::find($courses_id);
        return view('backend.courses-part.index', compact( 'items', 'name', 'coursesList', 'coursesDetail'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        $courses_id = $request->courses_id;
        $teacherList = Objects::where('type', 1)->get();
        $subjectList = Subjects::orderBy('display_order')->get();
        $coursesDetail = Courses::find($courses_id);
        $coursesList = Courses::orderBy('display_order')->get();
        return view('backend.courses-part.create', compact('subjectList', 'teacherList', 'coursesDetail', 'courses_id', 'coursesList'));
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
            'name' => 'required',            
            'slug' => 'required',
            'courses_id' => 'required',
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'courses_id.required' => 'Bạn chưa chọn khoa hoc'       
        ]);       
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);      
        
        $dataArr['created_user'] = Auth::user()->id;

        $dataArr['updated_user'] = Auth::user()->id;
        
        $dataArr['display_order'] = Helper::getNextOrder('courses_part', ['courses_id' => $dataArr['courses_id']]);        

        $rs = CoursesPart::create($dataArr);

        Session::flash('message', 'Tạo mới thành công');

        return redirect()->route('courses-part.index', ['courses_id' => $dataArr['courses_id']]);
    }
    public function storeMeta( $id, $meta_id, $dataArr ){
       
        $arrData = [ 'name' => $dataArr['meta_title'], 'description' => $dataArr['meta_description'], 'keywords'=> $dataArr['meta_keywords'], 'custom_text' => $dataArr['custom_text'], 'updated_user' => Auth::user()->id ];
        if( $meta_id == 0){
            $arrData['created_user'] = Auth::user()->id;            
            $rs = MetaData::create( $arrData );
            $meta_id = $rs->id;
            
            $modelSp = Courses::find( $id );
            $modelSp->meta_id = $meta_id;
            $modelSp->save();
        }else {
            $model = MetaData::find($meta_id);           
            $model->update( $arrData );
        }              
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
        $detail = CoursesPart::find($id);
        
        if( Auth::user()->role < 3 ){
            if($detail->created_user != Auth::user()->id){
                return redirect()->route('courses.index');
            }
        }       
    
        $meta = (object) [];
        if ( $detail->meta_id > 0){
            $meta = MetaData::find( $detail->meta_id );
        }        
        $subjectList = Subjects::orderBy('display_order')->get();
        $teacherList = Objects::where('type', 1)->get();
        //subjects
        $coursesList = Courses::orderBy('display_order')->get();
        return view('backend.courses-part.edit', compact('detail', 'meta', 'subjectList', 'teacherList', 'coursesList'));
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
            'name' => 'required',            
            'slug' => 'required',
            'courses_id' => 'required',
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'courses_id.required' => 'Bạn chưa chọn khoa hoc'       
        ]); 
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);       
        
        $dataArr['updated_user'] = Auth::user()->id;
        
        $model = CoursesPart::find($dataArr['id']);

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('courses-part.edit', $dataArr['id']);
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
        $model = CoursesPart::find($id);
        $model->delete();
        if($model->meta_id > 0){
            MetaData::find( $model->meta_id )->delete();
        }
        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('courses-part.index');
    }
}
