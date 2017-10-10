@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>
		<li class="active">Danh sách @if( $type == 1 ) giáo viên @else học viên @endif</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-teachers block-title-cm">
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
			<div class="col-sm-3 item">
				<div class="image">
					<a href="{{ route('teacher-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}">
						<img alt="{!! $obj->name !!}" src="{!! Helper::showImage($obj->image_url) !!}">
					</a>
				</div>
				<h3 class="name-teacher">
					<a href="{{ route('teacher-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}">
						{!! $obj->name !!}
					</a>
				</h3>
				@if( $type == 1 )
				<p class="subject">Môn: {!! $obj->subjects->name !!}</p>
				@else
				<p class="subject">{!! $obj->school_name !!}</p>
				@endif
			</div><!-- /item -->
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