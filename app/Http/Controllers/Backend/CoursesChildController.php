<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\CoursesChild;
use App\Models\CoursesCate;
use Helper, File, Session, Auth;

class CoursesChildController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {
        $cate_id = $request->cate_id ? $request->cate_id : null;
        if(!$cate_id){
            return redirect()->route('courses.index');
        }
        $cateDetail = CoursesCate::find($cate_id);
        $items = CoursesChild::where('status', 1)->where('cate_id', $cate_id)->orderBy('display_order')->get();
        return view('backend.courses-child.index', compact( 'items', 'cate_id', 'cateDetail'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        $cate_id = $request->cate_id ? $request->cate_id : null;
        $cateDetail = CoursesCate::find($cate_id);
        if(!$cate_id){
            return redirect()->route('courses.index');
        }
        return view('backend.courses-child.create', compact('cate_id', 'cateDetail'));
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
        ],
        [
            'name.required' => 'Bạn chưa nhập tên danh mục con',            
        ]);

        $dataArr['slug'] = str_slug($dataArr['name'], '-');
        
        $dataArr['created_user'] = Auth::user()->id;

        $dataArr['updated_user'] = Auth::user()->id;
        
        CoursesChild::create($dataArr);

        Session::flash('message', 'Tạo mới danh mục thành công');

        return redirect()->route('courses-child.index', ['cate_id' => $dataArr['cate_id']]);
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
        $detail = CoursesChild::find($id);
        $cateDetail = CoursesCate::find($detail->cate_id);
        $cate_id = $detail->cate_id;
        return view('backend.courses-child.edit', compact( 'detail', 'cateDetail', 'cate_id'));
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
          
        ],
        [
            'name.required' => 'Bạn chưa nhập tên danh mục con',
          
        ]);       
       
        $dataArr['slug'] = str_slug($dataArr['name'], '-');
        
        $model = CoursesChild::find($dataArr['id']);
        
        $dataArr['updated_user'] = Auth::user()->id;

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật danh mục thành công');

        return redirect()->route('courses-child.index', ['cate_id' => $dataArr['cate_id']]);
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

        $model = CoursesChild::find($id);
        $cate_id = $model->cate_id;
        $model->update(['status' => 0]);        
        // redirect
        Session::flash('message', 'Xóa danh mục con thành công');
        return redirect()->route('courses-child.index', ['cate_id' => $cate_id]);
    }
}
