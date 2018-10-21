<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Courses;
use App\Models\Classthpt;
use App\Models\ThptBaihoc;
use App\Models\Objects;
use App\Models\Subjects;
use App\Models\MetaData;

use Helper, File, Session, Auth, Image;

class ThptBaihocController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   
        $class_id = $request->class_id;
        $stem_class_id = $request->has('stem_class_id') ? $request->stem_class_id : -1;

        $stemClassDetail = Classthpt::find($stem_class_id);
        
        $name = isset($request->name) && $request->name != '' ? $request->name : '';
        
        $query = ThptBaihoc::where('status', 1)->where('class_id', $class_id);

        if($stem_class_id){
            $query->where('stem_class_id', $stem_class_id);
        }
        // check editor
        if( Auth::user()->role < 3 ){
            $query->where('created_user', Auth::user()->id);
        }
        if( $name != ''){
            $query->where('alias', 'LIKE', '%'.$name.'%');
        }

        $items = $query->orderBy('display_order')->paginate(20);
        
        //subjects
        $classList = Classthpt::orderBy('display_order')->get();
        $stemClassList = Classthpt::where('type', 1)->orderBy('display_order')->get();
        return view('backend.thpt-baihoc.index', compact( 'items', 'name', 'classList', 'coursesDetail', 'stemClassList', 'stemClassDetail'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        $class_id = $request->class_id ?  $request->class_id : null;
        $stem_class_id = $request->stem_class_id ? $request->stem_class_id : null;
        
        $classList = Classthpt::orderBy('display_order')->get();
        $stemClassList = Classthpt::where('type', 1)->orderBy('display_order')->get();
        return view('backend.thpt-baihoc.create', compact('coursesDetail', 'class_id', 'classList', 'stem_class_id', 'stemClassList'));
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
            'class_id' => 'required',            
            'video_id' => 'required',
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'class_id.required' => 'Bạn chưa chọn khoa hoc',            
            'video_id.required' => 'Bạn chưa nhap Video ID'

        ]);       
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);      
        
        $dataArr['created_user'] = Auth::user()->id;

        $dataArr['updated_user'] = Auth::user()->id;
        
        $dataArr['display_order'] = Helper::getNextOrder('courses_lession', ['stem_class_id' => $dataArr['stem_class_id']]);        

        $rs = ThptBaihoc::create($dataArr);

        Session::flash('message', 'Tạo mới thành công');

        return redirect()->route('thpt-baihoc.index', ['class_id' => $dataArr['class_id'], 'stem_class_id' => $dataArr['stem_class_id']]);
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
        $detail = ThptBaihoc::find($id);
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
        $classList = Courses::orderBy('display_order')->get();
      
        return view('backend.thpt-baihoc.edit', compact('detail', 'meta', 'subjectList', 'teacherList','classList'));
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
            'class_id' => 'required',            
            'video_id' => 'required',
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'class_id.required' => 'Bạn chưa chọn khoa hoc',            
            'video_id.required' => 'Bạn chưa nhap Video ID'

        ]);
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);       
        
        $dataArr['updated_user'] = Auth::user()->id;
        
        $model = ThptBaihoc::find($dataArr['id']);

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('thpt-baihoc.edit', $dataArr['id']);
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
        $model = Classthpt::find($id);
        $model->delete();
        MetaData::find( $model->meta_id )->delete();
        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('thpt-baihoc.index');
    }
}
