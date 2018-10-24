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
      <li class="active">Cập nhật</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('group-bai.index') }}" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="{{ route('group-bai.update') }}" id="dataForm">
      <input type="hidden" name="id" value="{{ $detail->id }}">
    <div class="row">
      <!-- left column -->

      <div class="col-md-10">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Cập nhật</h3>
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
                  <select class="form-control get-child" data-col="class_id" name="class_id" id="class_id" data-child="subject_id" data-mod="subjects">
                    <option value="">-- chọn --</option>
                    @if( $classList->count() > 0)
                      @foreach( $classList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('class_id', $detail->class_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div>
                <div class="form-group stem" style="display: none;">
                  <label for="email">STEM</label>
                  <select class="form-control get-child" data-col="class_id" name="stem_class_id" id="stem_class_id" data-child="subject_id" data-mod="subjects" > 
                    <option value="">-- chọn --</option>
                    @if( $stemClassList->count() > 0)
                      @foreach( $stemClassList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('stem_class_id', $detail->stem_class_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div> 
                <div class="row">
                <div class="form-group col-md-6">
                  <label for="email">Môn học</label>                
                  <select class="form-control" name="subject_id" id="subject_id">
                    <option value="">--Chọn--</option>  
                    @if( $subjectList->count() > 0)
                      @foreach( $subjectList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('subject_id', $detail->subject_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif                  
                </select>                 
                </div>  
                <div class="form-group col-md-6">
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
              </div>                 
                 <div class="form-group" >
                  
                  <label>Tên nhóm bài học <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="name" id="name" value="{{ old('name', $detail->name) }}">
                </div>                
               <div class="form-group" >
                  
                  <label>Số điểm</label>
                  <input type="text" class="form-control" name="score" id="score" value="{{ old('score', $detail->score) }}">
                </div>
                <div class="row">
                <div class="form-group col-md-6">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="is_hot" value="1" {{ old('is_hot', $detail->is_hot) == 1 ? "checked" : "" }}>
                      NỔI BẬT
                    </label>
                  </div>               
                </div>                
                <div class="form-group col-md-6">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="is_share" id="is_share" value="1" {{ old('is_share', $detail->is_share) == 1 ? "checked" : "" }}>
                      Share để học Free
                    </label>
                  </div>               
                </div>
                 </div><!--row-->
                <div class="form-group" style="margin-top:10px;margin-bottom:10px">  
                  <label class="col-md-3 row">Thumbnail ( 300x169 px)</label>    
                  <div class="col-md-9">
                    <img id="thumbnail_image" src="{{ $detail->image_url ? Helper::showImage($detail->image_url ) : URL::asset('public/admin/dist/img/img.png') }}" class="img-thumbnail" width="145" height="85">
                 
                    <button class="btn btn-default btn-sm btnSingleUpload" data-set="image_url" data-image="thumbnail_image" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                    <input type="hidden" name="image_url" id="image_url" value="{{ $detail->image_url }}"/>
                  </div>
                  <div style="clear:both"></div>
                </div>                 
                <div class="form-group">
                  <label>Mô tả</label>
                  <textarea class="form-control" rows="4" name="description" id="description">{{ old('description', $detail->description) }}</textarea>
                </div> 
            </div>          
                              
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