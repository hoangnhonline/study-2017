@extends('frontend.layout')

@include('frontend.partials.meta')

@include('frontend.home.slider')

@section('content')
    @if($livestream)
    <div class="block block-livetream">
      <div class="contaier">        
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">
              <img src="{{ URL::asset('public/assets/images/icon-streaming.png') }}" alt="live stream" style="display: inline-block; vertical-align: middle; margin-right: 10px;">
              <span style="display: inline-block;margin-top: 5px;">Live Stream</span>
            </h3>
          </div>
          <div class="panel-body">
            <div class="block-video">
              <div class="row">
                <div class="col-sm-8">                
                  <div class="video">
                    <iframe width="100%" height="350" src="https://www.youtube-nocookie.com/embed/{!! $livestream->video_id !!}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
                  </div>
                </div><!-- /col-sm-8 -->
                <div class="col-sm-4">
                  <div class="bock-info">
                    <div class="box-table">
                      <div class="box-table-cell">
                        <h1 class="title">{!! $livestream->name !!}</h1>
                        <p class="info">{!! $livestream->description !!}</p>
                      </div>
                    </div>
                  </div>
                </div><!-- /col-sm-4 -->
              </div>
            </div><!-- /block-video -->
          </div>
        </div>
      </div>
    </div><!-- /block-livetream -->
    @endif

    <div class="block banner-news">
      <a href="#" title="" target="_self">
        <img src="images/banner/thumb11_87997117.png" alt="">
      </a>
    </div><!-- /banner-news -->
    <div class="block block-quotations">
      <div class="inner-quotations">
        <span class="qoute">“&nbsp;&nbsp;</span>
        <div class="content">
                  <p>Giáo dục là vũ khí mạnh nhất mà người ta có thể sử dụng để thay đổi cả thế giới.</p>
              </div>
              <span class="qoute">&nbsp;&nbsp;”</span>
              <div class="author">N.Mandela</div>
      </div>
    </div><!-- /block-quotations -->
    <div class="block block-news-home block-title-cm">
      <div class="block-title">
        <h2 class="title">
          <a href="#" title="Tin Tức Giáo Dục">
            <i class="fa fa-newspaper-o"></i>
            Tin Tức Giáo Dục
          </a>
        </h2>
      </div><!-- /block-title -->
      <div class="block-content clearfix">
        <div class="home-news-left">
          <?php 
          $articleFirst = $articlesList->first();
          ?>
          @if($articleFirst)
          <div class="item">
            <a href="{{ route('news-detail', ['slug' => $articleFirst->slug, 'id' => $articleFirst->id ] ) }}" title="{!! $articleFirst->title !!}" class="image">
              <img src="{!! Helper::showImage($articleFirst->image_url) !!}" alt="{!! $articleFirst->title !!}">
            </a>
            <h3 class="title">
                <a href="{{ route('news-detail', ['slug' => $articleFirst->slug, 'id' => $articleFirst->id ] ) }}" title="{!! $articleFirst->title !!}">
                    {!! $articleFirst->title !!}
                </a>
            </h3>
          </div>
          @endif
        </div><!-- /home-news-left -->
        <div class="home-news-right">
          <?php $i = 0; ?>
          @foreach($articlesList as $obj)
          <?php $i++; ?>
          @if($i > 1)
          <div class="item">
            <a class="right-item-lnk-img" href="{{ route('news-detail', ['slug' => $obj->slug, 'id' => $obj->id ] ) }}" title="{!! $obj->title !!}">
                <img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->title !!}">
            </a>
            <h3 class="right-item-title">
                <a href="{{ route('news-detail', ['slug' => $obj->slug, 'id' => $obj->id ] ) }}" title="{!! $obj->title !!}">
                    {!! $obj->title !!}
                </a>
            </h3>
          </div><!-- /item -->
          @endif
          @endforeach
        </div><!-- /home-news-right -->
      </div><!-- /block-quotations -->
    </div><!-- /block-quotations -->
    <div class="block banner-news">
      <a href="#" title="" target="_self">
        <img src="images/banner/thumb11_68991203.png" alt="">
      </a>
    </div><!-- /banner-news -->
    <div class="block block-cates block-title-cm">
      <div class="block block-title">
        <h2 class="title">
          <a href="#" title="Học &amp; Thi">
            <i class="fa fa-book"></i>
            KHÓA HỌC HOT
          </a>
        </h2>
      </div><!-- /block-title -->
      <div class="block-content">
        <div class="row">
          @foreach($coursesList as $obj)
          <div class="col-sm-4 col-xs-6 item">
            <div class="image">
              <a href="{!! route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) !!}" title="{!! $obj->name !!}">
                <img src="{!! Helper::showImage($obj->image_url) !!}" alt="{!! $obj->name !!}">
              </a>
            </div>
            <div class="description">
              <h3>
                <a href="{!! route('courses-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) !!}" title="{!! $obj->name !!}">
                  {!! $obj->name !!}
                </a>
              </h3>
            </div>
            @if($obj->score > 0)
            <span class="discout-ele">{{ $obj->score }} điểm</span>
            @else
            <span class="discout-ele free">FREE</span>
            @endif
          </div><!-- /item -->
          @endforeach
        </div>
      </div><!-- /block-content -->
    </div><!-- /block-cates -->
    <div class="block banner-news">
      <a href="#" title="" target="_self">
        <img src="images/banner/thumb11_38072799.png" alt="">
      </a>
    </div><!-- /banner-news -->
    <div class="block block-slide-home block-title-cm">
      <div class="block-title">
        <h2 class="title">
          <a href="#" title="Danh Sách Giáo Viên">
            <i class="fa fa-users"></i>
            Danh Sách Giáo Viên
          </a>
        </h2>
      </div><!-- /block-title -->
      <div class="block-content">
        <div id="owl-block-arrival" class="owl-carousel owl-theme owl-style2" data-nav="false" data-dots="false" data-margin="25" data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":2},"768":{"items":3},"800":{"items":3},"992":{"items":4}}' data-autoplay="true">
          @foreach($teacherList as $obj)
          <div class="item">
            <div class="image">
              <a href="{{ route('teacher-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}">
                <img alt="{!! $obj->name !!}" src="{!! Helper::showImage($obj->image_url) !!}">
              </a>
            </div>
            <div class="description">
              <h3>
                <a href="{{ route('teacher-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}">
                  {!! $obj->name !!}
                </a>
              </h3>
              <div class="info">
                <span>Môn: {!! $obj->subjects->name !!}</span>
                <span>{!! $obj->school_name !!}</span>
              </div>
            </div>
          </div><!-- /item -->
          @endforeach
        </div>
        <div class="text-center">
          <a href="{{ route('teacher-list') }}" title="Danh Sách Giáo Viên" class="btn btn-viewmore">Xem thêm</a>
        </div>
      </div><!-- /block-content -->
    </div><!-- /block-quotations -->
    <!--<div class="block block-slide-home block-title-cm">
      <div class="block-title">
        <h2 class="title">
          <a href="#" title="HỌC VIÊN TIÊU BIỂU">
            <i class="fa fa-users"></i>
            HỌC VIÊN TIÊU BIỂU
          </a>
        </h2>
      </div>
      <div class="block-content">
        <div id="owl-block-arrival" class="owl-carousel owl-theme owl-style2" data-nav="false" data-dots="false" data-margin="25" data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":2},"768":{"items":3},"800":{"items":3},"992":{"items":4}}' data-autoplay="true">
          @foreach($studentList as $obj)
          <div class="item">
            <div class="image">
              <a href="{{ route('student-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}">
                <img alt="{!! $obj->name !!}" src="{!! Helper::showImage($obj->image_url) !!}">
              </a>
            </div>
            <div class="description">
              <h3><a href="{{ route('student-detail', ['slug' => $obj->slug, 'id' => $obj->id ]) }}" title="{!! $obj->name !!}">{!! $obj->name !!}</a></h3>
              <div class="info">                
                <span>{!! $obj->school_name !!}</span>
              </div>
            </div>
          </div>
          @endforeach
        </div>
        <div class="text-center">
          <a href="{{ route('student-list') }}" title="HỌC VIÊN TIÊU BIỂU" class="btn btn-viewmore">Xem thêm</a>
        </div>
      </div>
    </div>-->
@stop