@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="#">Trang Chủ</a></li>
		<li class="active">Thi Thử Danh Mục Chi Tiết</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="row">
	<div class="block-left col-sm-8">
		<div class="block-list-question">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Danh sách bài {!! $cateDetail->name !!}</h3>					
				</div>
				<div class="panel-body">
					<?php $i = 0; ?>
					@foreach($quizList as $obj)
					<?php $i++; ?>
					<div class="item">
                        <a href="#" class="number">
                            <span class="text">BÀI THI </span>
                            <span class="unit">{!! str_pad('0',2, $i) !!}</span>
                        </a>
                        <a href="{!! route('quiz-confirm', ['slug' => $obj->slug, 'id' => $obj->id] ) !!}" class="title">
                        	{!! $obj->name !!}
                        </a>
                    </div><!-- /item -->
                    @endforeach
                    
                    <!--<nav class="block-pagination-no">
						<ul class="pagination">
							<li>
								<a href="#" aria-label="Previous">
									<i class="fa fa-angle-left"></i>
								</a>
							</li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li>
								<a href="#" aria-label="Next">
									<i class="fa fa-angle-right"></i>
								</a>
							</li>
						</ul>
					</nav>-->
				</div>
			</div>
		</div><!-- /block-list-question -->
	</div><!-- /block-left -->
	<div class="block-right col-sm-4">
		<div class="sidebar">
			<div class="block-sidebar">
				<div class="block-fb">
					<div class="fb-inner">
						<div class="fb-page" data-href="https://www.facebook.com/facebook" data-width="300px" data-small-header="true" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/facebook" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div>
					</div>
				</div>
			</div><!-- /block-sidebar -->
			<div class="block-sidebar">
				<div class="block-link">
					<div class="block-title">
						<h2 class="title">Đề thi thử nhận quà</h2>
					</div>
					<div class="block-content">
						<ul>
							<li class="first">Danh sách môn thi</li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
							<li><a href="#" title="">Đề thi thử nhận quà môn Hóa học - (4)</a></li>
						</ul>
					</div>
				</div>
			</div><!-- /block-sidebar -->
		</div>
	</div><!-- /block-right -->
</div><!-- /row -->
@stop