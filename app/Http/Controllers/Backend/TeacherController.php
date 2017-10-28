<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Objects;
use App\Models\Subjects;
use App\Models\MetaData;
use App\Models\TeacherSubject;
use Helper, File, Session, Auth, Image;

class TeacherController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   

        $name = isset($request->name) && $request->name != '' ? $request->name : '';
        
        $query = Objects::where('type', 1);

        // check editor
        if( Auth::user()->role < 3 ){
            $query->where('created_user', Auth::user()->id);
        }
        if( $name != ''){
            $query->where('alias', 'LIKE', '%'.$name.'%');
        }

        $items = $query->orderBy('is_hot', 'desc')->orderBy('id', 'desc')->paginate(20);
        
        //subjects
        $subjectList = Subjects::orderBy('display_order')->get();
        return view('backend.teacher.index', compact( 'items', 'name', 'subjectList'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
         $subjectList = Subjects::orderBy('display_order')->get();
        return view('backend.teacher.create', compact('subjectList'));
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
            'subject_id' => 'required',
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'subject_id.required' => 'Bạn chưa chọn môn học'       
        ]);       
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);      
        
        $dataArr['created_user'] = Auth::user()->id;

        $dataArr['updated_user'] = Auth::user()->id;
        $dataArr['type'] = 1; //teacher
        $dataArr['is_hot'] = isset($dataArr['is_hot']) ? 1 : 0;  

        $rs = Objects::create($dataArr);

        $object_id = $rs->id;

        $this->storeMeta( $object_id, 0, $dataArr);
        if(!empty($dataArr['subject_id'])){
            foreach($dataArr['subject_id'] as $subject_id){
                TeacherSubject::create(['subject_id' => $subject_id, 'teacher_id' => $object_id]);
            }
        }
        Session::flash('message', 'Tạo mới thành công');

        return redirect()->route('teacher.index');
    }
    public function storeMeta( $id, $meta_id, $dataArr ){
       
        $arrData = [ 'name' => $dataArr['meta_title'], 'description' => $dataArr['meta_description'], 'keywords'=> $dataArr['meta_keywords'], 'custom_text' => $dataArr['custom_text'], 'updated_user' => Auth::user()->id ];
        if( $meta_id == 0){
            $arrData['created_user'] = Auth::user()->id;            
            $rs = MetaData::create( $arrData );
            $meta_id = $rs->id;
            
            $modelSp = Objects::find( $id );
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
        
        $tagSelected = [];

        $detail = Objects::find($id);
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
        return view('backend.teacher.edit', compact('detail', 'meta', 'subjectList'));
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
            'subject_id' => 'required',
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'subject_id.required' => 'Bạn chưa chọn môn học'       
        ]);   
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);
        
        $dataArr['type'] = 1;
        $dataArr['updated_user'] = Auth::user()->id;
        $dataArr['is_hot'] = isset($dataArr['is_hot']) ? 1 : 0;  
         
        $model = Objects::find($dataArr['id']);

        $model->update($dataArr);
        
        $this->storeMeta( $dataArr['id'], $dataArr['meta_id'], $dataArr);
        TeacherSubject::where('teacher_id', $dataArr['id'])->delete();
        if(!empty($dataArr['subject_id'])){
            foreach($dataArr['subject_id'] as $subject_id){
                TeacherSubject::create(['subject_id' => $subject_id, 'teacher_id' => $dataArr['id']]);
            }
        }
        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('teacher.edit', $dataArr['id']);
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
        $model = Objects::find($id);
        $model->delete();
        MetaData::find( $model->meta_id )->delete();
        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('teacher.index');
    }
}
