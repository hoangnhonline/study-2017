@extends('backend.layout')
@section('content')
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Môn học
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="{{ route( 'subjects.index' ) }}">Môn học</a></li>
    <li class="active">Danh sách</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      @if(Session::has('message'))
      <p class="alert alert-info" >{{ Session::get('message') }}</p>
      @endif
      <a href="{{ route('subjects.create') }}" class="btn btn-info btn-sm" style="margin-bottom:5px">Tạo mới</a>
      
      <div class="box">

        <div class="box-header with-border">
          <h3 class="box-title">Danh sách</span></h3>
        </div>
        
        <!-- /.box-header -->
        <div class="box-body">
          
          <table class="table table-bordered" id="table-list-data">
            <tr>
              <th style="width: 1%">#</th>
              <th>Tên</th>
              <th width="1%;white-space:nowrap">Thao tác</th>
            </tr>
            <tbody>
            @if( $items->count() > 0 )
              <?php $i = 0; ?>
              @foreach( $items as $item )
                <?php $i ++; ?>
              <tr id="row-{{ $item->id }}">
                <td><span class="order">{{ $i }}</span></td>
                <td>                  
                  <a style="font-size:17px" href="{{ route( 'subjects.edit', [ 'id' => $item->id ]) }}">{{ $item->name }}</a>
                </td>
                <td style="white-space:nowrap">                          
                  <a href="{{ route( 'subjects.edit', [ 'id' => $item->id ]) }}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></a>                                   
                  <a onclick="return callDelete('{{ $item->name }}','{{ route( 'subjects.destroy', [ 'id' => $item->id ]) }}');" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>
                  
                </td>
              </tr> 
              @endforeach
            @else
            <tr>
              <td colspan="3">Không có dữ liệu.</td>
            </tr>
            @endif

          </tbody>
          </table>         
        </div>        
      </div>
      <!-- /.box -->     
    </div>
    <!-- /.col -->  
  </div> 
</section>
<!-- /.content -->
</div>
<input type="hidden" id="table_name" value="articles">
@stop