@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>
		<li class="active">Danh sách @if( $type == 1 ) giáo viên @else học viên @endif</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-members block-title-cm">
	<div class="block-title">
		<h2 class="title">
			DANH SÁCH @if( $type == 1 ) giáo viên @else học viên @endif
			@if( $type == 1 )
			<select name="" class="seclect-list-question" data-width="100px">
				@foreach($subjectList  as $obj)
				<option value="{{ $obj->id }}">{!! $obj->name !!}</option>
				@endforeach
			</select>
			@endif
		</h2>
	</div><!-- /block-title -->
	<div class="block-content">
		<div class="row">			
          	@foreach($objectsList as $obj)
          	@if( $type == 1 )			
			<div class="col-sm-3">
				<div class="item">
					<div class="image">
						<a href="{{ route('teacher-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}"><img alt="{!! $obj->name !!}" src="{!! Helper::showImage($obj->image_url) !!}"></a>
					</div>
					<div class="description">
						<h3 class="name-members">
							<a href="{{ route('teacher-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}">{!! $obj->name !!}</a>
						</h3>
						<p class="subject">Môn: {!! $obj->subjects->name !!}</p>
					</div>
				</div>
			</div>
			@else
			<div class="col-sm-3">
				<div class="item">
					<div class="image">
						<a href="{{ route('student-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}"><img alt="{!! $obj->name !!}" src="{!! Helper::showImage($obj->image_url) !!}"></a>
					</div>
					<div class="description">
						<h3 class="name-members">
							<a href="{{ route('student-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}">{!! $obj->name !!}</a>
						</h3>
						<p class="subject">{!! $obj->school_name !!}</p>
					</div>
				</div>
			</div>
			@endif
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
</div><!-- /block-list-item -->
@stop