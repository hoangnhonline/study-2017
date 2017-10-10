@extends('backend.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Bài học    
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('courses-lession.index') }}">Bài học</a></li>
      <li class="active">Tạo mới</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('courses-lession.index') }}?courses_id={{ $coursesDetail->id }}&part_id={{ $partDetail ? $partDetail->id : "" }}" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="{{ route('courses-lession.store') }}" id="dataForm">
    <div class="row">
      <!-- left column -->

      <div class="col-md-8">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tạo mới</h3>
          </div>
          <!-- /.box-header -->               
            {!! csrf_field() !!}

            <div class="box-body">
              @if (count($errors) > 0)
                  <div class="alert alert-danger">
                      <ul>
                          @foreach ($errors->all() as $error)
                              <li>{{ $error }}</li>
                          @endforeach
                      </ul>
                  </div>
              @endif                    
                <div class="form-group">
                  <label for="email">Khóa học<span class="red-star">*</span></label>
                  <select class="form-control" name="courses_id" id="courses_id">
                    <option value="">-- chọn --</option>
                    @if( $coursesList->count() > 0)
                      @foreach( $coursesList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('courses_id', $courses_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div>
                <div class="form-group">
                  <label for="email">Mục lục</label>
                  <select class="form-control" name="part_id" id="part_id">
                    <option value="">-- chọn --</option>
                    @if( $partList->count() > 0)
                      @foreach( $partList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('part_id', $partDetail->id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div> 
                 <div class="form-group" >
                  
                  <label>Tên bài học <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="name" id="name" value="{{ old('name') }}">
                </div>
                <span class=""></span>
                <div class="form-group">                  
                  <label>Slug <span class="red-star">*</span></label>                  
                  <input type="text" class="form-control" readonly="readonly" name="slug" id="slug" value="{{ old('slug') }}">
                </div> 
                <div class="form-group" >
                  
                  <label>Video ID <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="video_id" id="video_id" value="{{ old('video_id') }}">
                </div>  
                <div class="form-group">
                  <label>Mô tả</label>
                  <textarea class="form-control" rows="4" name="content" id="content">{{ old('content') }}</textarea>
                </div> 
            </div>          
                              
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="{{ route('courses-lession.index') }}?courses_id={{ $coursesDetail->id }}&part_id={{ $partDetail ? $partDetail->id : "" }}">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-4">
        
      <!--/.col (left) -->      
    </div>
    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
@stop