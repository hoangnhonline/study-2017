@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>		
		<li class="active">{!! $detailPage->title !!}</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-members block-title-cm">
	<div class="block-title">
		<h1 class="title">			
			{!! $detailPage->title !!}
		</h1>
	</div><!-- /block-title -->
	
	<div class="block-page-about">			
		<div class="block-article">
			<div class="block block-content">						
				{!! $detailPage->content !!}
			</div>
		</div>
	</div>
	
</div>
@stop
  