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
      <li class="active">Cập nhật</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('livestream.index') }}" style="margin-bottom:5px">Quay lại</a>     
    <form role="form" method="POST" action="{{ route('livestream.update') }}" id="dataForm">
    <div class="row">
      <!-- left column -->
      <input name="id" value="{{ $detail->id }}" type="hidden">
      <div class="col-md-8">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            Chỉnh sửa
          </div>
          <!-- /.box-header -->               
            {!! csrf_field() !!}

            <div class="box-body">
              @if(Session::has('message'))
              <p class="alert alert-info" >{{ Session::get('message') }}</p>
              @endif
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
                    <option value="1" {{ old('status', $detail->status) == 1 ? "selected" : "" }}>Sắp diễn ra</option>
                    <option value="2" {{ old('status', $detail->status) == 2 ? "selected" : "" }}>Đang diễn ra</option>
                    <option value="3" {{ old('status', $detail->status) == 3 ? "selected" : "" }}>Đã kết thúc</option>                  
                  </select>
                </div>
                <div class="form-group" >
                  
                  <label>Tên livestream <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="name" id="name" value="{{ old('name', $detail->name) }}">
                </div>
                <span class=""></span>
                <div class="form-group">                  
                  <label>Slug <span class="red-star">*</span></label>                  
                  <input type="text" class="form-control" name="slug"  readonly="readonly" id="slug" value="{{ old('slug', $detail->slug) }}">
                </div>
                <div class="form-group">
                  <label for="email">Giáo viên<span class="red-star">*</span></label>
                  <select class="form-control" name="teacher_id" id="teacher_id">
                    <option value="">-- chọn --</option>
                    @if( $teacherList->count() > 0)
                      @foreach( $teacherList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('teacher_id', $detail->teacher_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div>
                <?php 
                $date_start = $detail->date_start ? Carbon\Carbon::parse($detail->date_start)->format('d/m/Y H:i') : null;
                ?>
                <div class="form-group" >                  
                  <label>Ngày giờ diễn ra </label>
                  <input type="text" class="form-control" name="date_start" id="date_start" value="{{ old('date_start',  $date_start) }}">
                </div>
                <div class="form-group" >
                  
                  <label>Video ID </label>
                  <input type="text" class="form-control" name="video_id" id="video_id" value="{{ old('video_id', $detail->video_id) }}">
                </div>                 
                <div style="clear:both"></div>                
                <!-- textarea -->
                <div class="form-group">
                  <label>Mô tả</label>
                  <textarea class="form-control" rows="6" name="description" id="description">{{ $detail->description }}</textarea>
                </div>                 
                             
            </div>          
            <input type="hidden" name="image_url" id="image_url" value="{{ $detail->image_url }}"/>
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="{{ route('livestream.index')}}">Hủy</a>
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
<!-- Modal -->
<div id="tagModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
    <form method="POST" action="{{ route('tag.ajax-save') }}" id="formAjaxTag">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tạo mới tag</h4>
      </div>
      <div class="modal-body" id="contentTag">
          <input type="hidden" name="type" value="2">
           <!-- text input -->
          <div class="col-md-12">
            <div class="form-group">
              <label>Tags<span class="red-star">*</span> ( Cách nhau bằng dấu ; )</label>
              <textarea class="form-control" name="str_tag" id="str_tag" rows="4" >{{ old('str_tag') }}</textarea>
            </div>
            
          </div>
          <div classs="clearfix"></div>
      </div>
      <div style="clear:both"></div>
      <div class="modal-footer" style="text-align:center">
        <button type="button" class="btn btn-primary btn-sm" id="btnSaveTagAjax"> Save</button>
        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal" id="btnCloseModalTag">Close</button>
      </div>
      </form>
    </div>

  </div>
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
  });
</script>
@stop