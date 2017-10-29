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
      <div class="block-title-cm">
        <div class="block-title">
          <h2 class="title">{!! $cateDetail->name !!}</h2>
        </div>
        <div class="block-content">
          <div class="block-news">
            
            <?php 
            $articleFirst = $articlesList->first();
            ?>
            @if($articleFirst)          
            <div class="news-item-first" style="margin-bottom: 20px">
              <a href="{{ route('news-detail', ['slug' => $articleFirst->slug, 'id' => $articleFirst->id ] ) }}" title="{!! $articleFirst->title !!}" class="image">
                <img src="{!! Helper::showImage($articleFirst->image_url) !!}" alt="{!! $articleFirst->title !!}">
              </a>
              <h3 class="name">
                    <a href="{{ route('news-detail', ['slug' => $articleFirst->slug, 'id' => $articleFirst->id ] ) }}" title="{!! $articleFirst->title !!}">
                        {!! $articleFirst->title !!}
                    </a>
                </h3>
                <div class="description">{!! $articleFirst->description !!}</div>
            </div><!-- /news-item-first -->
            @endif            
            <div class="news-list clearfix">              
              <?php $i = 0; ?>
              @foreach($articlesList as $obj)
              <?php $i++; ?>
              @if($i > 1)
              <div class="item">
                <a class="image" href="{{ route('news-detail', ['slug' => $obj->slug, 'id' => $obj->id ] ) }}" title="{!! $obj->title !!}">
                    <img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->title !!}">
                </a>
                <div class="description">
                  <h3 class="title">
                      <a href="{{ route('news-detail', ['slug' => $obj->slug, 'id' => $obj->id ] ) }}" title="{!! $obj->title !!}">
                          {!! $obj->title !!}
                      </a>
                  </h3>
                  <p class="text">
                      {!! $obj->description !!}
                  </p>
                </div>
              </div><!-- /item -->
              @endif
              @endforeach
            </div>
          </div>
        </div>
      </div>
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