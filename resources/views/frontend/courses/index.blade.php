@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>		
		<li class="active">Khóa học</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-list-course block-title-cm">
	<div class="block-title">
		<h2 class="title">DANH SÁCH KHÓA HỌC</h2>
	</div><!-- /block-title -->
	<div class="block-content">
		<div class="row">
			@if($coursesList->count() > 0)
			@foreach($coursesList as $obj)
			<div class="col-sm-4 col-xs-6">
				<div class="item">
					<a href="{{ route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}" class="image">
						<img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->name !!}">
					</a>
					<h4><a href="{{ route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}"  class="title">{!! $obj->name !!}</a></h4>
					<p class="des">{!! $obj->description !!}</p>
					<!--<div class="statistics clearfix">
	                    <div class="statistics-item views">
	                    	<span class="course-item-views-number">316760</span> lượt xem
	                   	</div>
	                    <div class="statistics-item learners">
	                    	<span class="course-item-learners-number">79446</span> người học
	                    </div>
	                </div><!-- /course-item-statistics -->

				</div><!-- /item -->
				@if($obj->score > 0)
		            <span class="discout-ele">{{ $obj->score }} điểm</span>
		            @else
		            <span class="discout-ele free">FREE</span>
		            @endif
			</div><!-- /col-sm-4 -->
			@endforeach
			@else
			<p style="font-style: italic;color: red" class="col-md-12">Chưa có bài học nào!</p>
			@endif
		</div><!-- /row -->
		<!--<nav class="block-pagination">
			<ul class="pagination">
				<li><a href="#">Đầu</a></li>
				<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
				<li><a href="#">Cuối</a></li>
			</ul>
		</nav><!-- /block-pagination -->
	</div><!-- /block-content -->
</div><!-- /block-list-course -->
@stop