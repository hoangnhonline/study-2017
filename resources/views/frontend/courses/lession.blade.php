@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block-lesson">
	<div class="row">
		<div class="col-sm-4">
			<div class="block-lesson-left">
				<h2 class="block-title">{!! $detail->courses->name !!}</h2><!-- /block-title -->
				<div class="block-content">
					@if($partList)
					@foreach($partList as $part)
					<div class="box-item">
						<h3 class="box-item-title">{!! $part->name !!}</h3>
						@if( !empty($lessionArr[$part->id]) )
						<ul class="box-item-list">
							@foreach( $lessionArr[$part->id] as $less )
							<li @if( $detail->id == $less->id ) class="skill-playing" @endif><a href="{!! route('lession-detail', ['slug' => $less->slug, 'id' => $less->id] ) !!}" title="{!! $less->name !!}">{!! $less->name !!}</a></li>						
							@endforeach	
						</ul>
						@endif
					</div>
					@endforeach
					@endif
				</div><!-- /block-content -->
			</div><!-- /block-lesson-left -->
		</div><!-- /block-lesson-left -->
		<div class="col-sm-8">
			<div class="block block-lesson-right">
				<div class="block-lesson-player">
					<iframe width="100%" height="365" src="https://www.youtube-nocookie.com/embed/{!! $detail->video_id !!}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
				</div>
			</div><!-- /block-lesson-right -->
			<div class="block block-share">
				Share
			</div><!-- /block-share -->
			<div class="block-lesson-ct">
				<div class="block-lesson-tab">
				 	<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#content" aria-controls="content" role="tab" data-toggle="tab">Nội dung</a></li>
						<li role="presentation"><a href="#comment" aria-controls="comment" role="tab" data-toggle="tab">Thảo luận</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="content">
							<div class="block-editor-content">
								{!! $detail->content !!}
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="comment">
							Comment FB
						</div>
					</div>
				</div>
			</div><!-- /block-lesson-ct" -->
			<div class="group-btn clearfix">				
				@if( $detail->display_order > 1 )
				<a class="btn btn-lesson pull-left" href="#">BÀI HỌC TRƯỚC</a>
				@endif
				<a class="btn btn-lesson pull-right" href="#">BÀI KẾ TIẾP</a>
			</div>
		</div><!-- /block-lesson-right -->
	</div>
</div><!-- /block-lesson -->
@stop