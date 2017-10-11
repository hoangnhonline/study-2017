@extends('backend.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Câu trả lời : <span style="color:blue">{{ $questionDetail->content }}</span>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('quiz-questions.index') }}">Câu hỏi</a></li>
      <li class="active">Tạo mới</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('quiz-questions.index', ['quiz_id' => $questionDetail->quiz_id]) }}" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="{{ route('quiz-answers.store') }}" id="dataForm">
    <div class="row">
      <!-- left column -->

      <div class="col-md-8">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">{{ $questionDetail->content }}</h3>
          </div>
          <div>
            <img src="{{ Helper::showImage($questionDetail->image_url) }}">
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
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th></th>
                      <th>Câu trả lời</th>
                      <th width="1%" style="white-space: nowrap;">Đáp án đúng</th>
                    </tr>
                  </thead>
                  <?php 
                  $arr = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
                  ?>
                  <tbody>                    
                    @for($i = 0; $i < $questionDetail->no_answer; $i ++ )
                    <tr>                                            
                      <td class="text-center">
                        {{ $arr[$i] }}
                      </td>
                      <td>
                        <input type="text" name="content[]" value="{{ isset($answerList[$i]) ? $answerList[$i]['content'] : "" }}" class="form-control">
                      </td>                      
                      <td class="text-center">
                        <input type="radio" name="is_true" value="{{ $i }}" {{ isset($answerList[$i]) &&  $answerList[$i]['is_true'] == 1 ? "checked" : "" }}>
                      </td>
                    </tr>
                    @endfor
                  </tbody>
                </table>              
                <input type="hidden" name="question_id" value="{{ $question_id }}">
                
                  
            </div>          
                              
            <div class="box-footer">
              <button type="submit" id="btnSave" class="btn btn-primary btn-sm">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="{{ route('quiz-questions.index', ['quiz_id' => $questionDetail->quiz_id]) }}">Hủy</a>
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
@section('js')
<script type="text/javascript">
  $(document).ready(function(){
    $('#btnSave').click(function(){
      
      if($('input[name="is_true"]:checked').length == 0){
        alert('Vui lòng chọn đáp án đúng');return false;
      }
    });
  });
</script>
@stop