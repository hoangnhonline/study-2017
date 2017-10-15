@extends('backend.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Livestream    
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('livestream.index') }}">Livestream</a></li>
      <li class="active">Tạo mới</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('livestream.index') }}" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="{{ route('livestream.store') }}" id="dataForm">
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
                  <label>Trạng thái</label>
                  <select class="form-control" name="status" id="status">                  
                    <option value="1" {{ old('status') == 1 ? "selected" : "" }}>Sắp diễn ra</option>
                    <option value="2" {{ old('status') == 2 ? "selected" : "" }}>Đang diễn ra</option>
                    <option value="3" {{ old('status') == 3 ? "selected" : "" }}>Đã kết thúc</option>                  
                  </select>
                </div>
                 <div class="form-group" >
                  
                  <label>Tên livestream <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="name" id="name" value="{{ old('name') }}">
                </div>
                <span class=""></span>
                <div class="form-group">                  
                  <label>Slug <span class="red-star">*</span></label>                  
                  <input type="text" class="form-control" readonly="readonly" name="slug" id="slug" value="{{ old('slug') }}">
                </div>                
                <div class="form-group">
                  <label for="email">Giáo viên<span class="red-star">*</span></label>
                  <select class="form-control" name="teacher_id" id="teacher_id">
                    <option value="">-- chọn --</option>
                    @if( $teacherList->count() > 0)
                      @foreach( $teacherList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('teacher_id') ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div> 
                <div class="form-group" >                  
                  <label>Ngày giờ diễn ra </label>
                  <input type="text" class="form-control" name="date_start" id="date_start" value="{{ old('date_start') }}">
                </div>  
                <div class="form-group" >                  
                  <label>Video ID </label>
                  <input type="text" class="form-control" name="video_id" id="video_id" value="{{ old('video_id') }}">
                </div>  

                <div style="clear:both"></div>                
                <!-- textarea -->
                <div class="form-group">
                  <label>Mô tả</label>
                  <textarea class="form-control" rows="6" name="description" id="description">{{ old('description') }}</textarea>
                </div>                 
                                              
               
            </div>          
                              
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm" id="btnSave">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="{{ route('livestream.index')}}">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-4">
        <!-- general form elements -->
        
      <!--/.col (left) -->      
    </div>
    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<link rel="stylesheet" href="{{ URL::asset('public/admin/dist/css/datetimepicker.css') }}">  
@stop
@section('js')
<script type="text/javascript" src="{{ URL::asset('public/admin/dist/js/datetimepicker.js') }}"></script>
<script type="text/javascript">
  $(document).ready(function(){
    $('#date_start').datetimepicker({
      format:'d-m-Y H:i',
      minDate:0
    });
    $('#btnSave').click(function(){
      if($('#status').val() == 2 && $('#video_id').val() == ""){
        alert('Vui lòng nhập VIDEO ID live stream đang diễn ra.');
        return false;
      }
    });
  });
</script>
@stop