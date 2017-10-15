<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Livestream;
use App\Models\Objects;
use App\Models\Subjects;
use App\Models\MetaData;
use Carbon\Carbon;
use Helper, File, Session, Auth, Image;

class LivestreamController extends Controller
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
        $status = isset($request->status) && $request->status ? $request->status : null;
        
        $query = Livestream::whereRaw('1');

        if( $name != ''){
            $query->where('alias', 'LIKE', '%'.$name.'%');
        }

        if( $status ){
            $query->where('status', $status);
        }

        $items = $query->orderBy('id', 'desc')->paginate(20);
        
        return view('backend.livestream.index', compact( 'items', 'name', 'teacherList', 'status'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        $teacherList = Objects::where('type', 1)->get();
        
        return view('backend.livestream.create', compact( 'teacherList'));
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
            'teacher_id' => 'required',
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'teacher_id.required' => 'Bạn chưa chọn giáo viên'       
        ]);       
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);      
        if($dataArr['date_start']){
            $dataArr['date_start'] = Carbon::parse($dataArr['date_start'])->format('Y-m-d H:i:s');
        }else{
            $dateArr['date_start'] = null;
        }
        $dataArr['created_user'] = Auth::user()->id;

        $dataArr['updated_user'] = Auth::user()->id;
        $dataArr['status'] = 1;

        $rs = Livestream::create($dataArr);

        $object_id = $rs->id;

        Session::flash('message', 'Tạo mới thành công');

        return redirect()->route('livestream.index');
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
        $detail = Livestream::find($id);
        if( Auth::user()->role < 3 ){
            if($detail->created_user != Auth::user()->id){
                return redirect()->route('livestream.index');
            }
        }                          
        $teacherList = Objects::where('type', 1)->get();
        return view('backend.livestream.edit', compact('detail', 'teacherList'));
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
            'teacher_id' => 'required',
        ],
        [        
            'name.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',  
            'teacher_id.required' => 'Bạn chưa chọn giáo viên'       
        ]);   
        if($dataArr['date_start']){
            $dataArr['date_start'] = Carbon::parse($dataArr['date_start'])->format('Y-m-d H:i:s');
        }else{
            $dateArr['date_start'] = null;
        }
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);       
        
        $dataArr['updated_user'] = Auth::user()->id;

        $model = Livestream::find($dataArr['id']);

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('livestream.edit', $dataArr['id']);
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
        $model = Livestream::find($id);
        $model->delete();
        MetaData::find( $model->meta_id )->delete();
        // redirect
        Session::flash('message', 'Xóa thành công');
        return redirect()->route('livestream.index');
    }
}
