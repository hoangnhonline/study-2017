<!DOCTYPE html>
<!--[if lt IE 7 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie6 lte7 lte8 lte9"><![endif]-->
<!--[if IE 7 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie7 lte7 lte8 lte9"><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie8 lte8 lte9"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie9 lte9"><![endif]-->
<!--[if IE 10 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie10 lte10"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="vn">
<head>
	<title>@yield('title')</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="content-language" content="vi"/>
    <meta name="description" content="@yield('site_description')"/>
    <meta name="keywords" content="@yield('site_keywords')"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>  
    <meta property="article:author" content="https://www.facebook.com/ONLINE STUDY"/>
   
    <link rel="canonical" href="{{ url()->current() }}"/>        
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="@yield('title')" />
    <meta property="og:description" content="@yield('site_description')" />
    <meta property="og:url" content="{{ url()->current() }}" />
    <meta property="og:site_name" content="ONLINE STUDY.vn" />
    <?php $socialImage = isset($socialImage) ? $socialImage : $settingArr['banner']; ?>
    <meta property="og:image" content="{{ Helper::showImage($socialImage) }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:description" content="@yield('site_description')" />
    <meta name="twitter:title" content="@yield('title')" />     
    <meta name="twitter:image" content="{{ Helper::showImage($socialImage) }}" />
	<link rel="icon" href="{{ URL::asset('public/assets/favicon.ico') }}" type="image/x-icon">	
	<link rel="stylesheet" type="text/css" href="{{ URL::asset('public/assets/css/style.css') }}">
	<!-- ===== Responsive CSS ===== -->
	<link rel="stylesheet" type="text/css" href="{{ URL::asset('public/assets/css/responsive.css') }}">

  	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<link href='css/animations-ie-fix.css' rel='stylesheet'>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10&appId=567408173358902";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	<script>window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);

  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };

  return t;
}(document, "script", "twitter-wjs"));</script>
	<div id="wrapper">
		
		@include('frontend.partials.header')
		
		<main id="main">
			<div class="container">
			    <div class="block block-study-notice">
			      <p>
			        <span>
			          <i class="fa fa-exclamation-circle"></i>
			          Thông Báo :
			        </span>
			        <a href="#" title="Say mê học Ngữ Văn lớp 12 với thầy Đặng Ngọc Khương tại đây!">Say mê học Ngữ Văn lớp 12 với thầy Đặng Ngọc Khương tại đây!</a>
			      </p>
			    </div><!-- /block-study-notice -->
			@yield('content')
			</div>
		</main><!-- /main -->

		@include('frontend.partials.footer')

		@include('frontend.partials.modal')

	</div>		
	<!-- ===== JS ===== -->
	<script src="{{ URL::asset('public/assets/js/jquery.min.js') }}"></script>
	<!-- ===== JS Bootstrap ===== -->
	<script src="{{ URL::asset('public/assets/lib/bootstrap/bootstrap.min.js') }}"></script>
	<!-- ===== JS Carousel ===== -->
	<script src="{{ URL::asset('public/assets/lib/carousel/owl.carousel.min.js') }}"></script>
	<!-- Js Common -->
	<script src="{{ URL::asset('public/assets/js/common.js') }}"></script>

	<script src="{{ URL::asset('public/assets/js/home.js') }}"></script>

	<input type="hidden" id="route-ajax-login-fb" value="{{route('ajax-login-by-fb')}}">
	<input type="hidden" id="fb-app-id" value="{{ env('FACEBOOK_APP_ID') }}">
	<input type="hidden" id="route-auth-login-ajax" value="{{ route('auth-login-ajax') }}">
	<style type="text/css">
		
	.block-author {
	  margin-bottom: 15px;
	}
	.block-author ul {
	  padding-left: 0 !important;
	}
	.block-author ul li {
	  display: inline-block;
	  list-style-type: none;
	  padding-right: 25px;
	  color: #898989;
	  position: relative;
	}
	.block-author ul li .name {
	  color: #f60;
	}
	.block-author ul li:before {
	  content: "\f111";
	  font-family: "FontAwesome";
	  color: #898989;
	  font-size: 5px;
	  position: absolute;
	  top: 8px;
	  left: -17px;
	}
	.block-author ul li:first-child:before {
	  display: none;
	}
		
	.reviews-summary {
	  margin-bottom: 10px;
	}
	.reviews-summary .rating-title,
	.reviews-summary .rating-summary,
	.reviews-summary .rating-action {
	  display: inline-block;
	  margin-right: 5px;
	}
	.reviews-summary .rating-title {
	  font-weight: bold;
	}
	.rating-summary .rating-xs {
	  font-size: 18px;
	}
	.rating-summary .clear-rating,
	.rating-summary .caption {
	  display: none;
	}
	.rating-summary .rating-container .star {
	  margin: 0 2px;
	}
	.rating-summary .rating-container .star .glyphicon {
	  top: 0;
	}
	.rating-summary .rating-container .filled-stars {
	  color: #ff6600;
	  -webkit-text-stroke: transparent;
	}
	.rating-summary #kartik {
	  display: none;
	}
	.rating-action span {
	  position: relative;
	  color: #898989;
	  padding-left: 15px;
	}
	.dot>span {
	  position: relative;
	  padding-left: 15px;
	}
	.dot>span:after {
	  content: "\f111";
	  font-family: "FontAwesome";
	  color: #898989;
	  font-size: 5px;
	  position: absolute;
	  top: 5px;
	  left: 0;
	}
	.block-share .share-item {
	    display: inline-block;
	    vertical-align: top;
	    line-height: initial;
	}
	</style>
	<script src="{{ URL::asset('public/assets/lib/starrating/js/star-rating.js') }}"></script>  
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-59b215c2a2658a8a"></script> 	
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	@yield('js')
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajaxSetup({
			      headers: {
			          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			      }
			  });

			$('.edit').click(function(){
				$('#txtId').val($(this).data('text'));
				$('#txtContent').val($(this).html());
				$('#editContentModal').modal('show');
			});
			$('#btnSaveContent').click(function(){
				$.ajax({
					url : '{{ route('save-content') }}',
					type : "POST",
					data : {
						id : $('#txtId').val(),
						content : $('#txtContent').val()
					},
					success:  function(){
						window.location.reload();
					}

				});
			});
		});
	</script>
	<style type="text/css">
		.block-title-cm .block-title .title{
			text-transform: uppercase;
		}
		.Recipepod{
			height: 0;
			display: none;
		}

	</style>
<div class="Recipepod">
 	<div itemscope itemtype="http://schema.org/Recipe">
	    <span itemprop="name">@yield('title')</span>
	    <span itemprop="description">@yield('site_description')</span>
	    <img itemprop="image" src="{{ Helper::showImage($socialImage) }}" alt="@yield('title')">
	    @if(!in_array($routeName, ['news-detail', 'product']))
	    <div itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating">
	        <span itemprop="ratingValue">9</span>/<span itemprop="bestRating">10</span>
	        <span itemprop="reviewCount">199</span> bài đánh giá
	    </div>
	    @endif
	</div>
</div>

</body>
</html>