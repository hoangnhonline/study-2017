@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block-list-course block-title-cm">
	<div class="block-title">
		<h2 class="title">KHÓA HỌC CỦA TÔI</h2>
	</div><!-- /block-title -->
	<div class="block-content">
		<div class="row">
			@foreach($coursesList as $obj)
			<div class="col-sm-4 col-xs-6">
				<div class="item">
					<a href="{{ route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}" class="image">
						<img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->name !!}">
					</a>
					<h4><a href="{{ route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}" class="title">{!! $obj->name !!}</a></h4>
					<p class="des">{!! $obj->description !!}</p>
					<div class="group-btn">
	                    <a href="{{ route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}" class="btn">Xem chi tiết</a>
	                </div><!-- /course-item-statistics -->

				</div><!-- /item -->				
			</div><!-- /col-sm-4 -->
			@endforeach
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