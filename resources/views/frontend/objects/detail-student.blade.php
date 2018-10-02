@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>
		<li><a href="{!! route('student-list') !!}">Danh sách học viên</a></li>
		<li class="active">{!! $detail->name !!}</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="row">
	<div class="block-left col-sm-8">
		<div class="block-detail block-title-cm">
			<div class="block-title">
				<h2 class="title">HỌC VIÊN TIÊU BIỂU</h2>
			</div>
			<div class="block-content">
				<div class="box-content">
					<div class="row">
						<div class="col-sm-6 col-xs-12 box-item">
						      <img src="{!! Helper::showImage($detail->image_url) !!}" alt="{!! $detail->name !!}">
						</div><!-- /box-item -->
						<div class="col-sm-6 col-xs-12 box-item">
						 	<div class="inner">
					            <p><b>{!! $detail->name !!}</b></p>
		                        <p>{!! $detail->school_name !!}</p>		 
						    </div>
						</div><!-- /box-item -->
					</div>
				    <div class="box-bottom">
				        {!! $detail->content !!}
				    </div><!-- /box-bottom -->
				</div><!-- /block-right -->
			</div>
		</div>
	</div><!-- /block-left -->
	<div class="block-right col-sm-4">
		<div class="sidebar">
			<div class="block-sidebar">
				<div class="block-fb">
					<div class="fb-inner">
						<div class="fb-page" data-href="https://www.facebook.com/CongTyCoPhanKetNoiVanHoaViet/" data-width="300px" data-small-header="true" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/CongTyCoPhanKetNoiVanHoaViet/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/CongTyCoPhanKetNoiVanHoaViet/">Facebook</a></blockquote></div>
					</div>
				</div>
			</div><!-- /block-sidebar -->
			<div class="block-sidebar">
				<div class="block-link">
					<div class="block-title">
						<h2 class="title">CÁC HỌC VIÊN TIÊU BIỂU KHÁC</h2>
					</div>
					<div class="block-content">
						<ul>
							@if($otherList)
							@foreach($otherList as $obj)
							<li><a href="{{ route('teacher-detail', ['slug' => $obj->slug, 'id' => $obj->id]) }}" title="{!! $obj->name !!}">{!! $obj->name !!}</a></li>
							@endforeach
							@endif
						</ul>
					</div>
				</div>
			</div><!-- /block-sidebar -->
		</div>
	</div><!-- /block-right -->
</div><!-- /row -->
@stop