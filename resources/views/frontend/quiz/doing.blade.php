@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="#">Trang Chủ</a></li>
		<li><a href="#">Thi THPT Quốc Gia</a></li>
		<li class="active">Toán Học</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-question">
	<h2 class="title">{!! $quizDetail->name !!}</h2>
	<div class="box-question">
		<h3 class="box-title">ĐỀ BÀI</h3>
		@if( $quizQuestions )
		<div class="box-question-list">
			<?php $k = 0; ?>
			@foreach($quizQuestions as $question)
			<?php $k ++ ; ?>
			<div class="ql-row clearfix">
				<div class="stt-left"><span class="sttl-sp">{{ $k }}</span></div>
				<div class="ct-right">
					<div class="ctr-recommend">
                        <p style="font-size:15px;margin-bottom:10px">{!! $question->content !!}</p>
						<p><img src="{!! Helper::showImage($question->image_url) !!}" style="opacity: 1;" alt=""></p>
                    </div><!-- /ctr-recommend -->
                    <div class="ctr-choice">
                    	<span class="sp-choice">Chọn <b>1</b> câu trả lời đúng</span>
                    	<?php 
		                  $arr = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
		                 ?>
                        <ul class="list-choice">
                        	<?php $i = 0; ?>
                        	@foreach($question->answers as $ans)
                        	<li>
                        		<label>
                        			<input type="radio" name="ans[{{ $question->id }}]" value="{!! $ans->id !!}">
                        			<span style="font-size:14px">{{ $arr[$i] }}: {!! $ans->content !!}</span>
                        		</label>
                        	</li>
                        	<?php $i++; ?>
                        	@endforeach
                        </ul>
                    </div><!-- /ctr-choice -->
                    <!--<div id="" class="ctr-note">
                        + Nếu có vấn đề với câu hỏi, bạn hãy click
                        <a id="" class="cl under" href="#"> vào đây</a>
                        để gửi thông báo cho ViettelStudy. Cảm ơn!<br>
                    </div><!-- /ctr-note -->
				</div>
			</div><!-- /ql-row -->
			@endforeach



		</div>
		@endif
	</div><!-- /box-question -->
	<div class="group-btn">
		<a href="#" title="" class="btn">Nộp Bài</a>
	</div>
</div><!-- /block-question -->
<div class="block-time">
	<span class="sp-text">Thời gian còn lại</span>
	<span class="sp-time" id="aTime">00:16:53</span>
</div>
@stop