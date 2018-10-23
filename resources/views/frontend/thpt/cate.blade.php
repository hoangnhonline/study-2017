@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>
		
		<li><a href="{!! route('thpt-list') !!}" title="Giáo dục THPT">Giáo dục THPT</a></li>		
		
		<li class="active">{!! $classDetail->name !!}</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-list-course block-title-cm">
	<div class="block-title">	
		<h2 class="title">{!! $classDetail->name !!}</h2>		
	</div><!-- /block-title -->
	<div class="block-content">		
		@if($slugClass == 'giao-duc-stem')
		<ul id="classList">
			<li>				
				<a href="{{ route('thpt-cate-child', ['giao-duc-stem', 'lop-10']) }}" >Lớp 10</a>
			</li>
			<li>
				<a href="{{ route('thpt-cate-child', ['giao-duc-stem', 'lop-11']) }}" >Lớp 11</a>
			</li>
			<li>
				<a href="{{ route('thpt-cate-child', ['giao-duc-stem', 'lop-12']) }}" >Lớp 12</a>
			</li>
		</ul>
		<div class="clearfix"></div>
		@else
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
			@foreach($coursesArr as $obj)
			<?php 
				$obj = $obj->group_id > 0 ? $obj->group : $obj;
			?>
			<div class="col-sm-4 col-xs-6">
				<div class="item">
					<a href="{{ route('thpt-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}" class="image">
						<img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->name !!}">
					</a>
					<h4><a  href="{{ route('thpt-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}" class="title">{{ $obj->name }}</a></h4>
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
<style type="text/css">
#classList {
	margin-bottom: 20px;
}
	#classList li{
		display: inline;
		padding: 10px;
		background-color: #51A0FB;
		color: #FFF;
		margin-right: 10px;
	}
	#classList li a {
		color: #FFF;
	}
	#classList li a:hover {
		color: #FFF;
	}


</style>
@stop
@section('js')
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#subject_id').change(function(){		
			if($(this).val() != ''){
				location.href = "{{ env('APP_URL') }}/giao-duc-thpt/{{ $slugClass }}/" + $(this).val() ; 	
			}else{
				location.href = "{{ env('APP_URL') }}/giao-duc-thpt/{{ $slugClass }}"; 	
			}
			
		});
		
	});
</script>

@stop