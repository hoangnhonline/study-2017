<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Subjects;
use App\Models\MetaData;

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
        
        $items = Subjects::orderBy('display_order')->get();
        
        return view('backend.subjects.index', compact( 'items' ));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        return view('backend.subjects.create');
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

        $rs = Subjects::create($dataArr);

        Session::flash('message', 'Tạo mới thành công');

        return redirect()->route('subjects.index');
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
       
        return view('backend.subjects.edit', compact('detail'));
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
        
        $model = Subjects::find($dataArr['id']);

        $model->update($dataArr);
        
        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('subjects.edit', $dataArr['id']);
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
        $model->delete();        
        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('subjects.index');
    }
}
