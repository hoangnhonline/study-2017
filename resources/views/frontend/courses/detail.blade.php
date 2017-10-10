@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block-video block-video-pg">
	<div class="row">
		<div class="col-sm-8">
			@if($detail->video_id)
			<div class="video">
			
				<iframe width="100%" height="350" src="https://www.youtube-nocookie.com/embed/{!! $detail->video_id !!}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
			
			</div>
			@endif
		</div><!-- /col-sm-8 -->
		<div class="col-sm-4">
			<div class="bock-info">
				<div class="box-table">
					<div class="box-table-cell">
						<h1 class="title">{!! $detail->name !!}</h1>
						<p class="info">{!! $detail->description !!}</p>						
						<div class="group-btn">
							<a href="{!! route('lession-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>				
						</div>
					</div>
				</div>
			</div>
		</div><!-- /col-sm-4 -->
	</div>
</div><!-- /block-video -->
<div class="row">
	<div class="block-left col-sm-8">
		<div class="block-articles">
			<div class="content">
				<strong>Thông tin khóa học</strong>
				{!! $detail->content !!}
			</div>
			<div class="group-btn">				
				<a href="{!! route('lession-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>
			</div>
		</div>
	</div><!-- /block-left -->
	<div class="block-right col-sm-4">
		<div class="sidebar">
			<div class="block-sidebar block-tearchers-sb">
				<div class="block-title">
					<p class="title">Lợi ích khóa học</p>
				</div>
				<div class="block-content">
					<div class="item">						
						<div class="box-bottom-teacher">
							{!! $detail->benefit !!}
						</div><!-- /box-bottom-teacher -->
					</div><!-- /item -->					
				</div>
			</div><!-- /block-tearchers-sb -->
			<div class="block-sidebar block-tearchers-sb">
				<div class="block-title">
					<p class="title">Đối tượng phù hợp</p>
				</div>
				<div class="block-content">
					<div class="item">						
						<div class="box-bottom-teacher">
							{!! $detail->object !!}
						</div><!-- /box-bottom-teacher -->
					</div><!-- /item -->					
				</div>
			</div><!-- /block-tearchers-sb -->
			<div class="block-sidebar block-tearchers-sb">
				<div class="block-title">
					<p class="title">Giảng viên</p>
				</div>
				<div class="block-content">					
					<div class="item">
						<div class="box-head-teacher">
							<a class="image">
								<img src="{!! Helper::showImage($detail->teacher->image_url) !!}" alt="{!! $detail->teacher->name !!}">
							</a>
							<h3 class="name">{!! $detail->teacher->name !!}</h3>
						</div><!-- /box-head-teacher -->
						<div class="box-bottom-teacher">
							Dẫn dắt khóa học là {!! $detail->teacher->name !!} {!! $detail->teacher->content !!}
						</div><!-- /box-bottom-teacher -->
					</div><!-- /item -->
				</div>
			</div><!-- /block-tearchers-sb -->			
		</div>
	</div><!-- /block-right -->
</div><!-- /row -->
@stop