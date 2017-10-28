<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Customer;
use Helper, File, Session, Auth;
use Maatwebsite\Excel\Facades\Excel;

class CustomerController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {
        $status = isset($request->status) ? $request->status : 0;
        $type = isset($request->type) ? $request->type : '';

        $fullname = isset($request->fullname) && $request->fullname != '' ? $request->fullname : '';
        $email = isset($request->email) && $request->email != '' ? $request->email : '';
        $phone = isset($request->phone) && $request->phone != '' ? $request->phone : '';
        
        $query = Customer::whereRaw('1');

        $status = 1;

        if( $status > 0){
            $query->where('status', $status);
        }
        if( $type ){
            $query->where('type', $type);
        }
        if( $fullname != ''){
            $query->where('fullname', 'LIKE', '%'.$fullname.'%');
        }
        if( $phone != ''){
            $query->where('phone', 'LIKE', '%'.$phone.'%');
        }
        if( $email != ''){
            $query->where('email', 'LIKE', '%'.$email.'%');
        }
        $items = $query->orderBy('id', 'desc')->paginate(20);
        
        return view('backend.customer.index', compact( 'items', 'email', 'status' , 'phone', 'fullname', 'type'));
    }    
    public function download()
    {
        $contents = [];
        $items = Customer::where('email', '<>', '')->orderBy('id', 'DESC')->groupBy('email')->get();
               
        Excel::create('thanh-vien', function($excel) use ($items) {

            $excel->sheet('Sheet 1', function($sheet) use ($items) {
                $sheet->loadView('backend.customer.export')->with('items',$items);
                 // Set width
                
                //$sheet->setOrientation('landscape');
            });

        })->export('xls');        
    }
    public function export(){
        $query = Product::where('product.status', 1);        
        $query->join('users', 'users.id', '=', 'product.created_user');
        $query->join('cate_parent', 'cate_parent.id', '=', 'product.parent_id');
        $query->join('cate', 'cate.id', '=', 'product.cate_id');
        $query->leftJoin('product_img', 'product_img.id', '=','product.thumbnail_id');
        $items = $query->select(['product_img.image_url','product.*','product.id as product_id', 'full_name' , 'product.created_at as time_created', 'users.full_name', 'cate_parent.name as ten_loai', 'cate.name as ten_cate'])->get();
        $sizeList = Size::orderBy('display_order')->get();            
        foreach($sizeList as $size){
            $sizeArr[$size->id] = $size;
        }
        $colorList = Color::orderBy('display_order')->get();              
        foreach($colorList as $color){
            $colorArr[$color->id] = $color;
        }
        //return view('backend.inventory.export', compact( 'items', 'colorArr', 'sizeArr'));
       // dd($colorArr);
         Excel::create('nam-phuc', function($excel) use ($items, $sizeArr, $colorArr) {

            $excel->sheet('product', function($sheet) use ($items, $sizeArr, $colorArr) {
                $sheet->loadView('backend.inventory.export')->with('items',$items)->with('sizeArr',$sizeArr)->with('colorArr',$colorArr);
                 // Set width
                
                //$sheet->setOrientation('landscape');
            });

        })->export('xls');
       
    }
    /**
    * Store a newly created resource in storage.
    *
    * @param  Request  $request
    * @return Response
    */    

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

        $detail = Customer::find($id);

        return view('backend.customer.edit', compact('detail'));
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
            'email' => 'required|unique:newsletter,email,'.$dataArr['id'],
        ],
        [   
            'email.required' => 'Bạn chưa nhập email',
            'email.unique' => 'Email đã được sử dụng.'
        ]);
    
        $dataArr['updated_user'] = Auth::user()->id;
        
        $model = Customer::find($dataArr['id']);

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật thành công');        

        return redirect()->route('customer.index', ['status' => $dataArr['status']]);
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
        $model = Customer::find($id);
        $model->delete();

        // redirect
        Session::flash('message', 'Xóa newsletter thành công');
        return redirect()->route('customer.index');
    }
}