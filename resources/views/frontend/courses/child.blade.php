@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>
		
		<li><a href="{!! route('courses-list') !!}" title="Khóa học">Khóa học</a></li>
		<li><a href="{!! route('courses-cate', $cateDetail->slug) !!}" title="{!! $cateDetail->name !!}">{!! $cateDetail->name !!}</a></li>			
		
		<li class="active">{!! $childDetail->name !!}</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-list-course block-title-cm">
	<div class="block-title">
		@if(!$subjectSlug)
		<h2 class="title">{!! $childDetail->name !!}</h2>
		@else
		<h2 class="title">{!! $subjectDetail->name !!} - {!! $childDetail->name !!}</h2>
		@endif
	</div><!-- /block-title -->
	<div class="block-content">		
		@if($is_thpt)
		<p style="margin-bottom: 15px;">
			<label>MÔN HỌC </label>
			<select class="form-control" id="subject_id">
				<option value="">--Tất cả--</option>
				@foreach($subjectList as $sub)
				<option value="{{ $sub->slug }}" {{ isset($subjectDetail) && $subjectDetail->id == $sub->id ? "selected" : "" }}>{!! $sub->name !!}</option>
				@endforeach
			</select>

		</p>
		@endif
		<div class="row">
			@foreach($coursesList as $obj)
			<div class="col-sm-4 col-xs-6">
				<div class="item">
					<a href="{{ route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}" class="image">
						<img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->name !!}">
					</a>
					<h4><a  href="{{ route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}" class="title">{!! $obj->name !!}</a></h4>
					<p class="des">{!! $obj->description !!}</p>
					<!-- <div class="statistics clearfix">
	                    <div class="statistics-item views">
	                    	<span class="course-item-views-number">316760</span> lượt xem
	                   	</div>
	                    <div class="statistics-item learners">
	                    	<span class="course-item-learners-number">79446</span> người học
	                    </div>
	                </div> --><!-- /course-item-statistics -->

				</div><!-- /item -->
				@if($obj->score > 0)
		            <span class="discout-ele">{{ $obj->score }} điểm</span>
		            @else
		            <span class="discout-ele free">FREE</span>
		            @endif
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
@section('js')

<script type="text/javascript">
	$(document).ready(function(){
		var slugOriginal = '{{ $slugOriginal }}';
		$('#subject_id').change(function(){		
			if($(this).val() != ''){
				location.href = "{{ env('APP_URL') }}/giao-duc-thpt/" + $(this).val() + "-" + slugOriginal; 	
			}else{
				location.href = "{{ env('APP_URL') }}/giao-duc-thpt/" + slugOriginal; 	
			}
			
		});
		
	});
</script>

@stop