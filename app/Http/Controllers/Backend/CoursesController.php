<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Courses;
use App\Models\Objects;
use App\Models\Subjects;
use App\Models\MetaData;
use App\Models\CoursesChild;

use Helper, File, Session, Auth, Image;

class CoursesController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   

        $teacherList = Objects::where('type', 1)->get();
        $name = isset($request->name) && $request->name != '' ? $request->name : '';         
        $query = Courses::where('status', 1);

        $cate_id = isset($request->cate_id) ? $request->cate_id : null;
        $child_id = isset($request->child_id) ? $request->child_id : null;
        $childList = [];
        if( $cate_id > 0){
            $query->where('cate_id', $cate_id);
            $childList = CoursesChild::where('status', 1)->where('cate_id', $cate_id)->get(); 
        }
        if( $child_id > 0){
            $query->where('child_id', $child_id);
        }
        // check editor
        if( Auth::user()->role < 3 ){
            $query->where('created_user', Auth::user()->id);
        }
        if( $name != ''){
            $query->where('alias', 'LIKE', '%'.$name.'%');
        }

        $items = $query->orderBy('is_hot', 'desc')->orderBy('score', 'desc')->orderBy('id', 'desc')->paginate(20);
        
        //subjects
        $subjectList = Subjects::orderBy('display_order')->get();
        return view('backend.courses.index', compact( 'items', 'name', 'subjectList', 'teacherList', 'cate_id', 'childList', 'child_id'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        $teacherList = Objects::where('type', 1)->get();
        $subjectList = Subjects::orderBy('display_order')->get();
        return view('backend.courses.create', compact('subjectList', 'teacherList'));
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
            'cate_id' => 'required',
            'name' => 'required',            
            'slug' => 'required',
            'teacher_id' => 'required'            
        ],
        [   
            'cate_id.required' => 'Bạn chưa chọn danh mục',         
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'teacher_id.required' => 'Bạn chưa chọn giáo viên',

        ]);       
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);      
        
        $dataArr['created_user'] = Auth::user()->id;

        $dataArr['updated_user'] = Auth::user()->id;
        
        $dataArr['is_hot'] = isset($dataArr['is_hot']) ? 1 : 0; 
        $dataArr['single'] = isset($dataArr['single']) ? 1 : 0;  
        $dataArr['is_share'] = isset($dataArr['is_share']) ? 1 : 0;  

        $dataArr['score'] = $dataArr['is_share'] == 0 ?  (int) $dataArr['score'] : 0 ;

        $rs = Courses::create($dataArr);

        $object_id = $rs->id;

        $this->storeMeta( $object_id, 0, $dataArr);

        Session::flash('message', 'Tạo mới thành công');

        return redirect()->route('courses.index');
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
        $detail = Courses::find($id);
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
        $childList = [];
        if($detail->cate_id > 0){
            $childList = CoursesChild::where('status', 1)->where('cate_id', $detail->cate_id)->get();
        }
        return view('backend.courses.edit', compact('detail', 'meta', 'subjectList', 'teacherList', 'childList'));
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
            'cate_id' => 'required',
            'name' => 'required',            
            'slug' => 'required',
            'teacher_id' => 'required'            
        ],
        [   
            'cate_id.required' => 'Bạn chưa chọn danh mục',         
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'teacher_id.required' => 'Bạn chưa chọn giáo viên',

        ]);   
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);       
        
        $dataArr['updated_user'] = Auth::user()->id;
        
        $dataArr['is_hot'] = isset($dataArr['is_hot']) ? 1 : 0;  
        
        $dataArr['single'] = isset($dataArr['single']) ? 1 : 0;

        $dataArr['is_share'] = isset($dataArr['is_share']) ? 1 : 0;    
        
        $dataArr['score'] = $dataArr['is_share'] == 0 ?  (int) $dataArr['score'] : 0 ;

        $model = Courses::find($dataArr['id']);

        $model->update($dataArr);
        
        $this->storeMeta( $dataArr['id'], $dataArr['meta_id'], $dataArr);

        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('courses.edit', $dataArr['id']);
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
        $model = Courses::find($id);
        $model->delete();
        MetaData::find( $model->meta_id )->delete();
        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('courses.index');
    }
}
