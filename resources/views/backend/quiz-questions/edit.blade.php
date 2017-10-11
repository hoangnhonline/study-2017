@extends('backend.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Câu hỏi    
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('quiz-questions.index') }}">Câu hỏi</a></li>
      <li class="active">Cập nhật</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('quiz-questions.index') }}" style="margin-bottom:5px">Quay lại</a>
    <a class="btn btn-primary btn-sm" href="{{ route('news-detail', [$detail->slug, $detail->id ]) }}" target="_blank" style="margin-top:-6px"><i class="fa fa-eye" aria-hidden="true"></i> Xem</a>    
    <form role="form" method="POST" action="{{ route('quiz-questions.update') }}" id="dataForm">
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
                  <label for="email">Bài trắc nghiệm <span class="red-star">*</span></label>
                  <select class="form-control" name="quiz_id" id="quiz_id">
                    <option value="">-- chọn --</option>
                    @if( $quizList->count() > 0)
                      @foreach( $quizList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('quiz_id',$detail->quiz_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div>                           
                
                <div class="form-group" >
                  
                  <label>Nội dung <span class="red-star">*</span></label>
                  <textarea name="content" rows="4" class="form-control">{!! old('content', $detail->content) !!}</textarea>                  
                </div>                         
                <div style="clear:both"></div>
                <div class="form-group" style="margin-top:10px;margin-bottom:10px">  
                  <label class="col-md-3 row">Hình ảnh</label>    
                  <div class="col-md-9">
                    <img id="thumbnail_image" src="{{ old('image_url', $detail->image_url) ? Helper::showImage(old('image_url', $detail->image_url)) : URL::asset('public/admin/dist/img/img.png') }}" class="img-thumbnail" width="300" >                    
                    <button class="btn btn-default btn-sm btnSingleUpload" data-set="image_url" data-image="thumbnail_image" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                    <input type="hidden" name="image_url" id="image_url" value="{{ old('image_url', $detail->image_url) }}"/>
                  </div>
                  <div style="clear:both"></div>
                </div>                               
                <div class="form-group">
                  <label>Số đáp án</label>
                  <select class="form-control" name="no_answer" id="no_answer">                  
                    @for($i = 2; $i <= 6; $i++)
                    <option value="{{ $i }}" {{ old('no_answer', $detail->no_answer) ==  $i  ? "selected" : "" }}>{{ $i }}</option>
                    @endfor
                  </select>
                </div> 
                  
            </div>          
            <input type="hidden" name="image_url" id="image_url" value="{{ $detail->image_url }}"/>
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="{{ route('quiz-questions.index')}}">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-4">
            
    </div>
    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
@stop