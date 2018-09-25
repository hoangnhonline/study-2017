@extends('backend.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Khóa học    
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('courses.index') }}">Khóa học</a></li>
      <li class="active">Cập nhật</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('courses.index') }}" style="margin-bottom:5px">Quay lại</a>
    <a class="btn btn-primary btn-sm" href="{{ route('courses-detail', ['slug' => $detail->slug, 'id' => $detail->id ]) }}" target="_blank" style="margin-top:-6px"><i class="fa fa-eye" aria-hidden="true"></i> Xem</a>    
    <form role="form" method="POST" action="{{ route('courses.update') }}" id="dataForm">
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
              <?php 
              $parentList = DB::table('courses_cate')->orderBy('display_order')->get();

              ?>             
                                
                <div class="form-group" >                  
                <label>Khóa học <span class="red-star">*</span></label>
                <select class="form-control" name="cate_id" id="cate_id">
                    <option value="">--Chọn--</option>
                    @foreach($parentList as $cate)          
                    <option value="{{ $cate->id }}" {{ $cate->id == old('cate_id', $detail->cate_id) ? "selected" : "" }}>{{ $cate->name }}</option>
                    @endforeach
                </select>
              </div> 
              <div class="form-group">
                  <label for="email">Môn học</label>                
                  <select class="form-control" name="subject_id" id="subject_id">
                    <option value="">--Chọn--</option>
                    @foreach($subjectList as $cate)          
                    <option value="{{ $cate->id }}" {{ $cate->id == old('subject_id', $detail->subject_id) ? "selected" : "" }}>{{ $cate->name }}</option>
                    @endforeach
                </select>                 
                </div> 
                <div class="form-group" >
                  
                  <label>Tên khóa học <span class="red-star">*</span></label>
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
                <div class="form-group" >
                  
                  <label>Số điểm</label>
                  <input type="text" class="form-control" name="score" id="score" value="{{ old('score', $detail->score) }}">
                </div>
                <div class="form-group" >
                  
                  <label>Video ID </label>
                  <input type="text" class="form-control" name="video_id" id="video_id" value="{{ old('video_id', $detail->video_id) }}">
                </div> 
                <div class="form-group" style="margin-top:10px;margin-bottom:10px">  
                  <label class="col-md-3 row">Thumbnail ( 300x169 px)</label>    
                  <div class="col-md-9">
                    <img id="thumbnail_image" src="{{ $detail->image_url ? Helper::showImage($detail->image_url ) : URL::asset('public/admin/dist/img/img.png') }}" class="img-thumbnail" width="145" height="85">
                 
                    <button class="btn btn-default btn-sm btnSingleUpload" data-set="image_url" data-image="thumbnail_image" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                  </div>
                  <div style="clear:both"></div>
                </div>
                <div style="clear:both"></div>                
                <!-- textarea -->
                <div class="form-group">
                  <label>Mô tả</label>
                  <textarea class="form-control" rows="6" name="description" id="description">{{ $detail->description }}</textarea>
                </div> 
                <div class="row">
                <div class="form-group col-md-4">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="is_hot" value="1" {{ old('is_hot', $detail->is_hot) == 1 ? "checked" : "" }}>
                      HOT
                    </label>
                  </div>               
                </div>
                <div class="form-group col-md-4">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="single" value="1" {{ old('single', $detail->single) == 1 ? "checked" : "" }}>
                      Bài học lẻ
                    </label>
                  </div>               
                </div>
                <div class="form-group col-md-4">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="is_share" id="is_share" value="1" {{ old('is_share', $detail->is_share) == 1 ? "checked" : "" }}>
                      Share để học Free
                    </label>
                  </div>               
                </div>
                 </div><!--row-->
                <div class="form-group">
                  <label>Ẩn/hiện</label>
                  <select class="form-control" name="status" id="status">                  
                    <option value="0" {{ $detail->status == 0 ? "selected" : "" }}>Ẩn</option>
                    <option value="1" {{ $detail->status == 1 ? "selected" : "" }}>Hiện</option>                  
                  </select>
                </div>              
                <div class="form-group">
                  <label>Chi tiết</label>
                  <textarea class="form-control" rows="4" name="content" id="content">{{ old('content', $detail->content) }}</textarea>
                </div>
                <div class="form-group">
                  <label>Lợi ích khóa học</label>
                  <textarea class="form-control" rows="4" name="benefit" id="benefit">{{ old('benefit', $detail->benefit) }}</textarea>
                </div>
                <div class="form-group">
                  <label>Đối tượng phù hợp</label>
                  <textarea class="form-control" rows="4" name="object" id="object">{{ old('object', $detail->object) }}</textarea>
                </div>                                
                  
            </div>          
            <input type="hidden" name="image_url" id="image_url" value="{{ $detail->image_url }}"/>
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="{{ route('courses.index')}}">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-4">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Thông tin SEO</h3>
          </div>
        <!-- /.box-header -->
            <div class="box-body">
              <input type="hidden" name="meta_id" value="{{ $detail->meta_id }}">
              <div class="form-group">
                <label>Meta title </label>
                <input type="text" class="form-control" name="meta_title" id="meta_title" value="{{ !empty((array)$meta) ? $meta->title : "" }}">
              </div>
              <!-- textarea -->
              <div class="form-group">
                <label>Meta desciption</label>
                <textarea class="form-control" rows="6" name="meta_description" id="meta_description">{{ !empty((array)$meta) ? $meta->description : "" }}</textarea>
              </div>  

              <div class="form-group">
                <label>Meta keywords</label>
                <textarea class="form-control" rows="4" name="meta_keywords" id="meta_keywords">{{ !empty((array)$meta) ? $meta->keywords : "" }}</textarea>
              </div>  
              <div class="form-group">
                <label>Custom text</label>
                <textarea class="form-control" rows="6" name="custom_text" id="custom_text">{{ !empty((array)$meta) ? $meta->custom_text : ""  }}</textarea>
              </div>
            
          </div>    

      </div>
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
@stop