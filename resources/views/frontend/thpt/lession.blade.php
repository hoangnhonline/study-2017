@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block-lesson">
	<div class="row">
		<div class="col-sm-4">
			<div class="block block-livetream">
		      <div class="contaier">
		        <!-- <img src="images/icon-streaming.png" alt="" style="display: inline-block; vertical-align: middle; margin-right: 10px;">Live Tream -->
		        <div class="panel panel-default">
		          <div class="panel-heading">
		            <h3 class="panel-title">
		              {!! $detail->name !!}
		            </h3>
		          </div>
		          <div class="panel-body block-lesson-left">
		            	<div class="block-content">
							{!! $detail->description !!}
					</div><!-- /block-content -->
		          </div>
		        </div>
		      </div>
		    </div><!-- /block-livetream -->			
		</div><!-- /block-lesson-left -->
		<div class="col-sm-8">
			<div class="block block-lesson-right">
				<div class="block-lesson-player">
					<iframe width="100%" height="365" src="https://www.youtube-nocookie.com/embed/{!! $detail->video_id !!}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
				</div>
			</div><!-- /block-lesson-right -->
			<div class="block block-share" id="share-buttons" style="margin-bottom:10px">
				<div class="share-item">
					<div class="fb-like" data-href="{{ url()->current() }}" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
				</div>
				<div class="share-item" style="max-width: 65px;">
					<div class="g-plus" data-action="share"></div>
				</div>
				<div class="share-item">
					<a class="twitter-share-button"
				  href="https://twitter.com/intent/tweet?text={!! $detail->title !!}">
				Tweet</a>
				</div>
				<div class="share-item">
					<div class="addthis_inline_share_toolbox"></div>
				</div>
			</div><!-- /block-share-->	
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