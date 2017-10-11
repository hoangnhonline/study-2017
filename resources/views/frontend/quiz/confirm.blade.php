@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="#">Thi Thử</a></li>
		<li class="active">Xác Nhận Làm Bài Thi Trắc Nghiệm</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-star-test">
	<h3 class="stt-h3">XÁC NHẬN LÀM BÀI THI</h3>
	<div class="block clearfix">
		<div class="col-sm-6 box">
			<p>{!! $quizDetail->name !!}</p>
		</div>
		<div class="col-sm-6 box">
			<p>Thời gian: 28 phút</p>
		</div>
	</div>
	<div class="group-btn">
		<a href="{{ route('quiz-doing', ['slug' => $quizDetail->slug, 'id' => $quizDetail->id ]) }}" title="" class="btn">Bắt Đầu Làm Bài</a>
	</div>
</div><!-- /block-star-test -->
@stop