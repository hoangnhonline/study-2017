<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Courses;
use App\Models\Classthpt;
use App\Models\GroupBai;
use App\Models\Objects;
use App\Models\Subjects;
use App\Models\MetaData;

use Helper, File, Session, Auth, Image;

class GroupBaiController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   
        $class_id = $request->class_id ? $request->class_id : null;
        $stem_class_id = $request->stem_class_id ? $request->stem_class_id : null;

        $stemClassDetail = Classthpt::find($stem_class_id);
        
        $name = isset($request->name) && $request->name != '' ? $request->name : '';
        
        $query = GroupBai::where('status', 1);
        if($class_id){
            $query->where('class_id', $class_id);
        }
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

        $items = $query->orderBy('id', 'desc')->paginate(20);
        
        //subjects
        $classList = Classthpt::orderBy('display_order')->get();
        $stemClassList = Classthpt::where('type', 1)->orderBy('display_order')->get();
        return view('backend.group-bai.index', compact( 'items', 'name', 'classList', 'coursesDetail', 'stemClassList', 'stemClassDetail', 'class_id', 'stem_class_id'));
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
        $subjectList = Subjects::orderBy('display_order')->get();
        $teacherList = Objects::where('type', 1)->get();
        $groupList = GroupBai::where('type', 1)->get();
        return view('backend.group-bai.create', compact('coursesDetail', 'class_id', 'classList', 'stem_class_id', 'stemClassList', 'subjectList', 'subjectList', 'teacherList', 'groupList'));
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
            'class_id' => 'required',
            'subject_id' => 'required',
            'teacher_id' => 'required',            
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',          
            'class_id.required' => 'Bạn chưa chọn lớp',            
            'subject_id.required' => 'Bạn chưa chọn môn học',            
            'teacher_id.required' => 'Bạn chưa chọn giáo viên',
        ]);       
        
        $dataArr['alias'] = str_slug($dataArr['name'], ' ');      
        $dataArr['slug'] = str_slug($dataArr['name'], '-');      
        $dataArr['is_hot'] = isset($dataArr['is_hot']) ? 1 : 0;           
        $dataArr['is_share'] = isset($dataArr['is_share']) ? 1 : 0;  
        $dataArr['created_user'] = Auth::user()->id;

        $dataArr['updated_user'] = Auth::user()->id;
		if($dataArr['image_url']){
            $image_url = $dataArr['image_url'];
            $tmp = explode('/', $dataArr['image_url']);
            
            if(!is_dir('uploads/thumbs/articles/')){
                mkdir('uploads/thumbs/articles/', 0777, true);
            }

            $origin_img = base_path().$image_url;
            $img = Image::make($origin_img);
            $w_img = $img->width();
            $h_img = $img->height();

            $tmpArrImg = explode('/', $origin_img);
            
            $new_img = config('study.upload_thumbs_path').end($tmpArrImg);

            if($w_img/$h_img > 600/400){

                Image::make($origin_img)->resize(null, 400, function ($constraint) {
                        $constraint->aspectRatio();
                })->crop(600, 400)->save($new_img);
            }else{
                Image::make($origin_img)->resize(400, null, function ($constraint) {
                        $constraint->aspectRatio();
                })->crop(600, 400)->save($new_img);
            }
        }	
        $rs = GroupBai::create($dataArr);

        Session::flash('message', 'Tạo mới thành công');


        return redirect()->route('group-bai.index', ['class_id' => $dataArr['class_id'], 'stem_class_id' => $dataArr['stem_class_id']]);
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
        $detail = GroupBai::find($id);
        if( Auth::user()->role < 3 ){
            if($detail->created_user != Auth::user()->id){
                return redirect()->route('courses.index');
            }
        }       
    
        $meta = (object) [];
        if ( $detail->meta_id > 0){
            $meta = MetaData::find( $detail->meta_id );
        }        
        $classList = Classthpt::orderBy('display_order')->get();
        $stemClassList = Classthpt::where('type', 1)->orderBy('display_order')->get();
        $subjectList = Subjects::where('class_id', $detail->class_id)->orderBy('display_order')->get();
        $teacherList = Objects::where('type', 1)->get();
        $groupList = GroupBai::where('type', 1)->get();
            
        return view('backend.group-bai.edit', compact('detail', 'meta', 'subjectList', 'teacherList','classList', 'stemClassList', 'groupList'));
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
            'class_id' => 'required',
            'subject_id' => 'required',
            'teacher_id' => 'required',            
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',          
            'class_id.required' => 'Bạn chưa chọn lớp',            
            'subject_id.required' => 'Bạn chưa chọn môn học',            
            'teacher_id.required' => 'Bạn chưa chọn giáo viên',                        

        ]);
        
        $dataArr['alias'] = str_slug($dataArr['name'], ' ');      
        $dataArr['slug'] = str_slug($dataArr['name'], '-');        
        $dataArr['is_hot'] = isset($dataArr['is_hot']) ? 1 : 0;           
        $dataArr['is_share'] = isset($dataArr['is_share']) ? 1 : 0;  
        $dataArr['updated_user'] = Auth::user()->id;
        
        $model = GroupBai::find($dataArr['id']);
		if($dataArr['image_url']){
            $image_url = $dataArr['image_url'];
            $tmp = explode('/', $dataArr['image_url']);
            
            if(!is_dir('uploads/thumbs/articles/')){
                mkdir('uploads/thumbs/articles/', 0777, true);
            }

            $origin_img = base_path().$image_url;
            $img = Image::make($origin_img);
            $w_img = $img->width();
            $h_img = $img->height();

            $tmpArrImg = explode('/', $origin_img);
            
            $new_img = config('study.upload_thumbs_path').end($tmpArrImg);

            if($w_img/$h_img > 600/400){

                Image::make($origin_img)->resize(null, 400, function ($constraint) {
                        $constraint->aspectRatio();
                })->crop(600, 400)->save($new_img);
            }else{
                Image::make($origin_img)->resize(400, null, function ($constraint) {
                        $constraint->aspectRatio();
                })->crop(600, 400)->save($new_img);
            }
        }
        $model->update($dataArr);

        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('group-bai.index', ['class_id' => $dataArr['class_id']]);
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
        $model = GroupBai::find($id);
        $model->delete();        
        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('group-bai.index');
    }
}
