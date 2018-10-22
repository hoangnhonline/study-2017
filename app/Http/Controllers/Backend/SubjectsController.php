<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Subjects;
use App\Models\MetaData;
use App\Models\Classthpt;
use Helper, File, Session, Auth, Image;

class SubjectsController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   
        $class_id = isset($request->class_id) ? $request->class_id : 1;
 $classList = Classthpt::orderBy('display_order')->get();
        $items = Subjects::where('class_id', $class_id)->orderBy('display_order')->get();
               
        return view('backend.subjects.index', compact( 'items', 'class_id', 'classList'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        $classList = Classthpt::orderBy('display_order')->get();
        $class_id = isset($request->class_id) ? $request->class_id : 1;
        return view('backend.subjects.create', compact('classList', 'class_id'));
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
            'name' => 'required'            
        ],
        [        
            'name.required' => 'Bạn chưa nhập tên môn học'            
        ]);       
    
        $dataArr['created_user'] = Auth::user()->id;

        $dataArr['updated_user'] = Auth::user()->id;
    
        $dataArr['display_order'] = Helper::getNextOrder('subjects');
        $dataArr['slug'] = str_slug($dataArr['name'], '-');
        $rs = Subjects::create($dataArr);

        Session::flash('message', 'Tạo mới thành công');

        return redirect()->route('subjects.index', ['class_id' => $dataArr['class_id']]);
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

        $detail = Subjects::find($id);
       $classList = Classthpt::orderBy('display_order')->get();        
        $class_id = $detail->class_id;
        return view('backend.subjects.edit', compact('detail', 'classList', 'class_id'));
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
            'name' => 'required'                    
        ],
        [         
            'name.required' => 'Bạn chưa nhập tên môn học'        
        ]);               
        
        $dataArr['updated_user'] = Auth::user()->id;
        $dataArr['slug'] = str_slug($dataArr['name'], '-');
        $model = Subjects::find($dataArr['id']);

        $model->update($dataArr);
        
        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('subjects.index', ['class_id' => $dataArr['class_id']]);
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
        $model = Subjects::find($id);
        $class_id = $model->class_id;
        $model->delete();        
        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('subjects.index', ['class_id' => $class_id]);
    }
}
