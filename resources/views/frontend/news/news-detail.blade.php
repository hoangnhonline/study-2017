@extends('frontend.layout') 

@include('frontend.partials.meta') 

@section('content')
<div class="block block-breadcrumb">
    <ol class="breadcrumb">
        <li><a href="{{ route('home') }}">Trang chủ</a></li>        
        <li><a href="{{ route('news-list', $cateDetail->slug) }}">{!! $cateDetail->name !!}</a></li>  
        <li class="active">{{ $detail->title }}</li>     
    </ol>
</div><!-- /block-breadcrumb -->
<div class="row">
	<div class="block-left col-sm-8">
		<div class="block block-article">
			<h1 class="block title">{!! $detail->title !!}</h1><!-- /title -->			
			<div class="reviews-summary" id="rating-summary" itemscope itemtype="http://schema.org/Review">
						
            </div><!-- /reviews-summary -->
            <div class="block-author">
            	<ul>
            		<li>
            			<span>Tác giả:</span>
            			<span class="name">{!! $detail->createdUser->display_name !!}</span>
            		</li>
            		<li>
            			{!! date('d/m/Y', strtotime($detail->created_at)) !!}
            		</li>
            		<li>
            			{!! Helper::view($detail->id, 2) !!} lượt xem
            		</li>
            	</ul>
            </div>
			<div class="block block-share" id="share-buttons" style="margin-bottom:10px">
				<div class="share-item">
					<div class="fb-like" data-href="{{ url()->current() }}" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
				</div>
				<div class="share-item" style="max-width: 65px;">
					<div class="g-plus" data-action="share"></div>
				</div>				
			</div><!-- /block-share-->			
		</div><!-- /block-article -->
		<div class="block-editor-content">
			{!! $detail->content !!}
			<div class="clearfix" style="margin-bottom: 15px;"></div>
			@if($detail->youtube_id)
			<iframe width="100%" height="400" src="https://www.youtube-nocookie.com/embed/{!! $detail->youtube_id !!}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
			@endif
		</div><!-- /block-editor-content -->

		@if($tagSelected->count() > 0)
		<div class="block-tags">
			<ul>
				<li class="tags-first">Tags:</li>
				<?php $i = 0; ?>
		        @foreach($tagSelected as $tag)
		        <?php $i++; ?>
				<li class="tags-link"><a href="{{ route('tag', $tag->slug) }}" title="{!! $tag->name !!}">{!! $tag->name !!}</a></li>
				@endforeach
			</ul>
		</div><!-- /block-tags -->
		@endif
		<div class="clearfix" style="margin-bottom: 10px"></div>
			<div class="fb-comments" data-href="https://www.facebook.com/CongTyCoPhanKetNoiVanHoaViet/" data-numposts="5" data-width="100%"></div>
		@if($otherList->count() > 0 )
		<div class="block block-news-related-bot">
			<div class="block-title">
				<p class="title">Các tin liên quan</p>
			</div>
			<div class="block-content">
				<ul class="list-item">
					@foreach($otherList as $obj)
					<li class="item">
						@if($obj->cate_id != 5)
						<div class="image">
							<a href="{!! route('news-detail', [ 'slug' => $obj->slug , 'id' => $obj->id ]) !!}" title="{!! $obj->title !!}">
								<img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->title !!}">
							</a>
						</div>				
						@endif						
						<div class="des">
							<h3 class="title"><a href="{!! route('news-detail', [ 'slug' => $obj->slug , 'id' => $obj->id ]) !!}" title="{!! $obj->title !!}">{!! $obj->title !!}</a></h3>
							<p class="date">{!! date('d/m/Y', strtotime($obj->created_at)) !!}</p>
							<p class="info">{!! $obj->description !!}</p>
						</div>
					</li><!-- /item -->
					@endforeach
					
				</ul>
			</div>
		</div><!-- /block-news-related-bot -->
		@endif
	</div><!-- /block-left -->
	@if( $cateList->count() > 0 )
	<div class="block-right col-sm-4">
		<div class="sidebar">
			@foreach( $cateList as $cate )
			<div class="block-sidebar block-news-sb">
				<div class="block-title">
					<p class="title">{!! $cate->name !!}</p>
				</div>
				<div class="block-content">
					<div class="wrap-news-list">
						@if( !empty($articleByCate[$cate->id]) )
						@foreach( $articleByCate[$cate->id] as $obj )
						<div class="item">
							<a class="image"  href="{!! route('news-detail', [ 'slug' => $obj->slug , 'id' => $obj->id ]) !!}" title="{!! $obj->title !!}">
                                <img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->title !!}">
                            </a>
                            <h3 class="title">
                                <a href="{!! route('news-detail', [ 'slug' => $obj->slug , 'id' => $obj->id ]) !!}" title="{!! $obj->title !!}">
                                    {!! $obj->title !!}
                                </a>
                            </h3>
						</div><!-- /item -->
						@endforeach
						@endif
					</div>
				</div>
			</div><!-- /block-news-sb -->
			@endforeach
		</div>
	</div><!-- /block-right -->
	@endif
</div><!-- /row -->
<input type="hidden" id="rating-route" value="{{ route('rating') }}">
<form id="rating-form">
	{{ csrf_field() }}
	<input type="hidden" id="object_id" name="object_id" value="{{ $detail->id }}">
	<input type="hidden" id="object_type" name="object_type" value="2">
	<input type="hidden" id="score" name="score" value="">
</form>
@stop
@section('js')
<script src="{{ URL::asset('public/assets/lib/starrating/js/star-rating.js') }}"></script>  
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
	        url : $('#rating-route').val(),
	        type : 'POST',
	        dataType : 'html',
	        data : $('#rating-form').serialize(),
	        success : function(data){
	            $('#rating-summary').html(data);
	            var $input = $('input.rating');
	            if ($input.length) {
	                $input.removeClass('rating-loading').addClass('rating-loading').rating();
	            }
	        }
   		});
	});
</script>  
@stop