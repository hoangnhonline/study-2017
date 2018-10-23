@extends('backend.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Nhóm bài học   
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('group-bai.index') }}">Nhóm bài học</a></li>
      <li class="active">Tạo mới</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('group-bai.index') }}" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="{{ route('group-bai.store') }}" id="dataForm">
    <div class="row">
      <!-- left column -->

      <div class="col-md-10">
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
                  <label for="email">Lớp<span class="red-star">*</span></label>
                  <select class="form-control get-child get-child-2" data-col="class_id" name="class_id" id="class_id" data-child="subject_id" data-mod="subjects" data-col-2="stem_class_id" data-mod-2="group_bai" data-child-2="group_id">
                    <option value="">-- chọn --</option>
                    @if( $classList->count() > 0)
                      @foreach( $classList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('class_id', $class_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div>
                <div class="form-group stem" style="display: none;">
                  <label for="email">STEM</label>
                  <select class="form-control get-child get-child-2" data-col="class_id" name="stem_class_id" id="stem_class_id" data-child="subject_id"  data-mod="subjects" data-col-2="stem_class_id" data-mod-2="group_bai" data-child-2="group_id" > 
                    <option value="">-- chọn --</option>
                    @if( $stemClassList->count() > 0)
                      @foreach( $stemClassList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('stem_class_id', $stem_class_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div> 
                <div class="row">
                <div class="form-group col-md-6">
                  <label for="email">Môn học</label>                
                  <select class="form-control get-child" name="subject_id" id="subject_id" data-col="subject_id" data-mod="group_bai" data-child="group_id" >
                    <option value="">--Chọn--</option>                    
                </select>                 
                </div>  
                <div class="form-group col-md-6">
                  <label for="email">Giáo viên<span class="red-star">*</span></label>
                  <select class="form-control get-child" name="teacher_id" id="teacher_id" data-col="subject_id" data-mod="group_bai" data-child="group_id">
                    <option value="">-- chọn --</option>
                    @if( $teacherList->count() > 0)
                      @foreach( $teacherList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('teacher_id') ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div>
              </div>                 
                 <div class="form-group" >
                  
                  <label>Tên nhóm bài học <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="name" id="name" value="{{ old('name') }}">
                </div>                                 
                <div class="form-group" style="margin-top:10px;margin-bottom:10px">  
                  <label class="col-md-3 row">Thumbnail ( 300x169 px)</label>    
                  <div class="col-md-9">
                    <img id="thumbnail_image" src="{{ old('image_url') ? Helper::showImage(old('image_url')) : URL::asset('public/admin/dist/img/img.png') }}" class="img-thumbnail" width="145" height="85">                    
                    <button class="btn btn-default btn-sm btnSingleUpload" data-set="image_url" data-image="thumbnail_image" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                    <input type="hidden" name="image_url" id="image_url" value="{{ old('image_url') }}"/>
                  </div>
                  <div style="clear:both"></div>
                </div> 
                <div class="form-group">
                  <label>Mô tả ngắn</label>
                  <textarea class="form-control" rows="4" name="description" id="description">{{ old('description') }}</textarea>
                </div>                             </div>          
                              
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="{{ route('group-bai.index') }}">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-2">
        
      <!--/.col (left) -->      
    </div>
    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>

@stop
@section('js')
<script type="text/javascript">
  $(document).ready(function(){
      $('#class_id').change(function(){
          if($(this).val() == 4){ //stem
              $('.stem').show();
          }else{
              $('.stem').hide();
          }
      });
  });
</script>
@stop