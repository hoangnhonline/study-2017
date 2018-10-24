@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{{ route('home') }}">Trang chủ</a></li>
		<li class="active">{!! $cateDetail->name !!}</li>		
	</ol>
</div><!-- /block-breadcrumb -->
<div class="row">
	<div class="block-left col-sm-8">
		<div class="block-list-question">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Danh sách bài {!! $cateDetail->name !!}</h3>					
				</div>
				<div class="panel-body">
					<?php $i = 0; ?>
					@foreach($quizList as $obj)
					@if($obj->questions->count() > 0)
					<?php $i++; ?>
					<div class="item">
                        <a href="#" class="number">
                            <span class="text">BÀI THI </span>
                            <span class="unit">{!! str_pad('0',2, $i) !!}</span>
                        </a>
                        <a href="{!! route('quiz-confirm', ['slug' => $obj->slug, 'id' => $obj->id] ) !!}" class="title">
                        	{!! $obj->name !!}
                        </a>
                    </div><!-- /item -->
                    @endif
                    @endforeach
                    
                    <!--<nav class="block-pagination-no">
						<ul class="pagination">
							<li>
								<a href="#" aria-label="Previous">
									<i class="fa fa-angle-left"></i>
								</a>
							</li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li>
								<a href="#" aria-label="Next">
									<i class="fa fa-angle-right"></i>
								</a>
							</li>
						</ul>
					</nav>-->
				</div>
			</div>
		</div><!-- /block-list-question -->
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
@stop