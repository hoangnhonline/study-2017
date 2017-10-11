@extends('backend.layout')
@section('content')
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Câu hỏi : <span style="color:blue">{{ $quizDetail->name }}</span>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="{{ route( 'quiz-questions.index' ) }}">Câu hỏi</a></li>
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
      <a href="{{ route('quiz-questions.create', ['quiz_id' => $quiz_id]) }}" class="btn btn-info btn-sm" style="margin-bottom:5px">Tạo mới</a>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Bộ lọc</h3>
        </div>
        <div class="panel-body">
          <form class="form-inline" role="form" method="GET" action="{{ route('quiz-questions.index') }}" id="searchForm">            
            <div class="form-group">
              <label for="email">Danh mục </label>
              <select class="form-control" name="cate_id" id="cate_id" disabled="disabled">
                <option value="">--Tất cả--</option>
                @if( $cateArr->count() > 0)
                  @foreach( $cateArr as $value )
                  <option value="{{ $value->id }}" {{ $value->id == $quizDetail->cates->id ? "selected" : "" }}>{{ $value->name }}</option>
                  @endforeach
                @endif
              </select>
            </div>
            <div class="form-group">
              <label for="email">Bài trắc nghiệm </label>
              <select class="form-control" name="quiz_id" id="quiz_id">
                <option value="">--Tất cả--</option>
                @if( $quizList->count() > 0)
                  @foreach( $quizList as $value )
                  <option value="{{ $value->id }}" {{ $value->id == $quizDetail->id ? "selected" : "" }}>{{ $value->name }}</option>
                  @endforeach
                @endif
              </select>
            </div>
            <button type="submit" class="btn btn-default btn-sm">Lọc</button>
          </form>         
        </div>
      </div>
      <div class="box">

        <div class="box-header with-border">
          <h3 class="box-title">Danh sách ( <span class="value">{{ $items->total() }} trắc nghiệm )</span></h3>
        </div>
        
        <!-- /.box-header -->
        <div class="box-body">
          <div style="text-align:center">
            {{ $items->appends( ['quiz_id' => $quiz_id] )->links() }}
          </div>  
          <table class="table table-bordered" id="table-list-data">
            <tr>
              <th style="width: 1%">#</th>
              <th width="35%">Tiêu đề</th>
              <th width="40%">Hình ảnh</th>
              <th width="10px">Câu trả lời</th>      
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
                  <a style="font-size:17px" href="{{ route( 'quiz-questions.edit', [ 'id' => $item->id ]) }}">{{ $item->content }}</a>
                  
                  @if( $item->is_hot == 1 )
                  <label class="label label-danger">HOT</label>
                  @endif                  
                  <p>{{ $item->description }}</p>
                </td>
                <td>
                  <img src="{{ Helper::showImage($item->image_url) }}" width="80%">
                </td>
                <td>
                  <a class="btn btn-primary btn-sm" href="{{ route('quiz-answers.index', ['question_id' => $item->id])}}" ><span class="badge">{{ $item->answers->count() }}</span> Câu trả lời </a>
                </td>
                <td style="white-space:nowrap"> 
                  <a class="btn btn-default btn-sm" href="{{ route('news-detail', [$item->slug, $item->id ]) }}" target="_blank"><i class="fa fa-eye" aria-hidden="true"></i> Xem</a>                 
                  <a href="{{ route( 'quiz-questions.edit', [ 'id' => $item->id ]) }}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></a>                 
                  
                  <a onclick="return callDelete('{{ $item->content }}','{{ route( 'quiz-questions.destroy', [ 'id' => $item->id ]) }}');" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>
                  
                </td>
              </tr> 
              @endforeach
            @else
            <tr>
              <td colspan="9">Không có dữ liệu.</td>
            </tr>
            @endif

          </tbody>
          </table>
          <div style="text-align:center">
            {{ $items->appends( ['quiz_id' => $quiz_id] )->links() }}
          </div>  
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