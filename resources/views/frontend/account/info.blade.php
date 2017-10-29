@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>		
		<li class="active">Thông tin tài khoản</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="row">
	<div class="container" style="margin-bottom:10px">
		<div class="block-title">
			<h2 class="title">THÔNG TIN TÀI KHOẢN</h2>
		</div>
	</div>
	<div class="block-left col-sm-4">
		<div class="panel panel-default">
		  <div class="panel-heading block-user">
		  		<div class=" col-sm-3">
		  			<span class="ava-img">
					<img alt="{{ Session::get('username') }}" src="{{ Session::get('avatar') ? Session::get('avatar') :  URL::asset('public/assets/images/icon-user.png') }}">
					</span>
				</div>
				<div class="col-sm-9">
					<p style="margin-bottom:5px;font-size:14px"><strong>{{ Session::get('username') }}</strong></p>
					<p>Điểm tích lũy : <strong>{{ $detail->score }}</strong></p>					
					</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		  <div class="panel-body">
		  		<div class="user-dropdown-links clearfix">
					<a class="link" href="{{ route('xem-thong-tin') }}" {{ $routeName == 'xem-thong-tin' ? 'style=color:#51A0FB;font-size:16px' : ''}}  >Thông tin tài khoản</a>
					<a class="link"  {{ $routeName == 'khoa-hoc-cua-toi' ? 'style=color:#51A0FB;font-size:16px' : ''}} href="{{ route('khoa-hoc-cua-toi') }}">Các khoá học của tôi</a>
					
				</div><!-- /user-dropdown-links -->
			</div>
		</div>
	</div><!-- /block-left -->
	<div class="block-right col-sm-8">
		
	</div><!-- /block-right -->
</div><!-- /row -->
@stop