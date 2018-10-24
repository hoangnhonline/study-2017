<header id="header">
	<div class="header-top">
		<div class="container">
			<div class="row">
				<div class="block-logo col-sm-3 col-xs-5">
					<a href="{{ route('home') }}" title="LOGO"><img src="{{ Helper::showImage($settingArr['logo']) }}" alt="LOGO " width="140px"></a>
				</div><!-- /block-log -->
				<div class="block-search col-sm-6 col-xs-7">
					<form name="frm_search" action="" class="frm-search">
						<div class="control clearfix">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
							<input type="text" name="" placeholder="Từ khóa tìm kiếm" autocomplete="off">
						</div>
					</form>
				</div><!-- /block-search -->
				<div class="block-user col-sm-3 col-xs-12">
					@if( !Session::get('login') )
					<div class="block-content">
						<span class="ava-img">
							<img alt="user" src="{{ URL::asset('public/assets/images/icon-user.png') }}">
						</span>
						<div class="ava-info">
							<p><strong>Đăng nhập, đăng ký</strong></p>
							<p class="small">Tài khoản</p>
						</div>
					</div>
					<div class="popover fade bottom in">
					    <div class="arrow"></div>
					    <div class="popover-content">
					        <div class="popover-signin">
					        	<button class="btn btn-block btn-white" data-toggle="modal" data-target="#login-modal">Đăng nhập</button>
					        	<button class="btn btn-block btn-white" data-toggle="modal" data-target="#register-modal">Đăng ký tài khoản mới</button>
					        	<button class="btn btn-block login-button-fb btn-social facebook-login" >Đăng nhập với Facebook</button>					        	
					       	</div>
					    </div>
					</div><!-- /popover -->
					@else
					<?php 
					$detailUser = DB::table('customers')->where('id', Session::get('userId'))->first();
					?>
					<div class="block-content">
						<span class="ava-img">
							<img alt="{{ Session::get('username') }}" src="{{ Session::get('avatar') ? Session::get('avatar') :  URL::asset('public/assets/images/icon-user.png') }}">
						</span>
						<div class="ava-info hidden-md hidden-sm hidden-xs">
							<p><strong>{{ Session::get('username') }}</strong></p>
							<p class="small">Tài khoản</p>
						</div>
					</div>
					<div class="popover fade bottom in">
				        <div class="popover-content">
				        	<div class="popover-user">
					        	<div class="user-dropdown-header clearfix">
									<div class="user-dropdown-header-left">
										<img class="user-avatar-medium" src="{{ Session::get('avatar') ? Session::get('avatar') :  URL::asset('public/assets/images/icon-user.png') }}" alt="{{ Session::get('username') }}">
									</div>
									<div class="user-dropdown-header-right">
										<p class="name">{{ Session::get('username') }}</p>
										
									</div>
								</div><!-- /user-dropdown-header -->								
								<p class="text-center">Điểm tích lũy : <span style="color:#51A0FB;font-weight:bold">{{ $detailUser->score }}</p></strong>
								<div class="user-dropdown-links clearfix">
									<a class="link" href="{{ route('xem-thong-tin') }}" >Thông tin tài khoản</a>
									<a class="link" href="{{ route('khoa-hoc-cua-toi') }}">Các khoá học của tôi</a>
									<!--<a class="link" href="#">Lịch sử giao dịch</a>-->
								</div><!-- /user-dropdown-links -->
								<div class="user-dropdown-logout clearfix">
									<a class="btn btn-flat btn-logout" href="{{route('user-logout')}}"><i class="fa fa-power-off"></i>Đăng xuất</a>
								</div><!-- /user-dropdown-logout -->
							</div>
				       	</div>
					</div><!-- /popover -->
					@endif
				</div><!-- /block-user -->
			</div>
		</div>
	</div><!-- /header-top -->
	<div class="box-menu">
		<div class="container">
			<nav id="mainNav" class="navbar navbar-default navbar-custom">
		        <div class="navbar-header">
		            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		              <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i>
		            </button><!-- /navbar-toggle -->
				</div>
				<div class="collapse navbar-collapse menu" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-left">	
						<li class="level0 {{ $routeName == 'home' ? "active" : "" }}"><a href="{{ route('home') }}" title="Trang chủ">Trang chủ</a></li>
						<li class="level0 parent"><a href="#" title="Giới thiệu">Giới thiệu</a>
							<ul class="level0 submenu">
								<?php
								$aboutList = DB::table('articles')->where('status', 1)->where('cate_id', 5)->orderBy('id', 'asc')->get();
								?>
								@foreach($aboutList as $about)
								<li class="level1">
									<a href="{{ route('news-detail', ['slug' => $about->slug, 'id' => $about->id ] ) }}" title="{!! $about->title !!}">{!! $about->title !!}</a>
								</li>
								@endforeach
							</ul>
						</li>	
						<li class="level0 parent 
						{{ in_array($routeName, ['courses-list', 'courses-cate', 'courses-cate-child', 'courses-detail']) ? "active" : "" }}
						"><a href="{{ route('courses-list') }}" title="Khóa học">Khóa học</a>
							<ul class="level0 submenu">
								<?php
								$courseCateList = DB::table('courses_cate')->where('status', 1)->orderBy('display_order')->get();
								?>
								@foreach($courseCateList as $courseCate)
								<li class="level1 parent">
									<a href="{{ route('courses-cate', $courseCate->slug) }}" title="{!! $courseCate->name !!}">{!! $courseCate->name !!}</a>
									<ul class="level1 submenu">
										<?php
											$courseChildList = DB::table('courses_child')->where('cate_id', $courseCate->id)->where('status', 1)->orderBy('display_order')->get();
										?>
										@foreach($courseChildList as $courseChild)
										<li class="level2"><a href="{{ route('courses-cate-child', [$courseCate->slug, $courseChild->slug ]) }}" title="{!! $courseChild->name !!}">{!! $courseChild->name !!}</a></li>
										@endforeach
									</ul>
								</li>
								@endforeach
							</ul>

						</li>
						<li class="level0 parent {{ isset($class_id) || $routeName == "thpt-list" ? "active" : "" }}"><a href="{{ route('thpt-list') }}" title="Khóa học">Giáo dục PT</a>
							<ul class="level0 submenu">
								<?php
								$classList = DB::table('classthpt')->where('status', 1)->orderBy('display_order')->get();
								?>
								@foreach($classList as $courseCate)
								<li class="level1 parent">
									<a href="{{ route('thpt-cate', $courseCate->slug) }}" title="{!! $courseCate->name !!}">{!! $courseCate->name !!}</a>
									<ul class="level1 submenu">
										<?php
										if($courseCate->type == 1){
											$courseChildList = DB::table('subjects')->where('class_id', $courseCate->id)->where('status', 1)->orderBy('display_order')->get();
										
										?>
										@foreach($courseChildList as $courseChild)
										<li class="level2"><a href="{{ route('thpt-cate-child',[ $courseCate->slug, $courseChild->slug]) }}" title="{!! $courseChild->name !!}">{!! $courseChild->name !!}</a></li>
										@endforeach
										<?php }else{ 
												$courseChildList = DB::table('classthpt')->where('type', 1)->where('status', 1)->orderBy('display_order')->get();		
											?>
												@foreach($courseChildList as $courseChild)
										<li class="level2"><a href="{{ route('thpt-cate-child',[ $courseCate->slug, $courseChild->slug]) }}" title="{!! $courseChild->name !!}">{!! $courseChild->name !!}</a></li>
										@endforeach
										<?php } ?>
									</ul>
								</li>
								@endforeach
							</ul>

						</li>
						<li class="level0 parent {{ in_array($routeName, ['quiz-list', 'quiz-confirm', 'quiz-doing', 'nop-bai', 'share-success']) ? "active" : "" }}"><a href="#" title="Trắc nghiệm">Trắc nghiệm</a>
							<ul class="level0 submenu">
								<?php
								$classList = DB::table('quiz_cate')->where('status', 1)->orderBy('display_order')->get();
								?>
								@foreach($classList as $courseCate)
								<li class="level1 parent">
									<a href="{{ route('quiz-list', $courseCate->slug ) }}" title="{!! $courseCate->name !!}">{!! $courseCate->name !!}</a>
								</li>
								@endforeach
							</ul>

						</li>
						<li class="level0 parent {{ isset($cate_id) && $cate_id == 6 ? "active" : "" }}"><a href="{{ route('news-list', 'hoat-dong') }}" title="Hoạt động">Hoạt động</a>
							<ul class="level0 submenu">
								<?php
								$aboutList = DB::table('cate_child')->where('status', 1)->where('cate_id', 6)->orderBy('id', 'asc')->get();
								?>
								@foreach($aboutList as $about)
								<li class="level1">
									<a href="{{ route('news-list-child', ['hoat-dong', $about->slug]) }}" title="{!! $about->name !!}">{!! $about->name !!}</a>
								</li>
								@endforeach
							</ul>
						</li>
						<li class="level0 parent {{ isset($cate_id) && $cate_id == 7 ? "active" : "" }}"><a href="{{ route('news-list', 'tuyen-sinh') }}" title="Tuyển sinh">Tuyển sinh</a>
							<ul class="level0 submenu">
								<?php
								$aboutList = DB::table('cate_child')->where('status', 1)->where('cate_id', 7)->orderBy('id', 'asc')->get();
								?>
								@foreach($aboutList as $about)
								<li class="level1">
									<a href="{{ route('news-list-child', ['tuyen-sinh', $about->slug]) }}" title="{!! $about->name !!}">{!! $about->name !!}</a>
								</li>
								@endforeach
							</ul>
						</li>
						<li class="level0 parent {{ isset($cate_id) && $cate_id == 8 ? "active" : "" }}"><a href="{{ route('news-list', 'thoi-khoa-bieu') }}" title="Thời khóa biểu">Thời khóa biểu</a>
							<ul class="level0 submenu">
								<?php
								$aboutList = DB::table('cate_child')->where('status', 1)->where('cate_id', 8)->orderBy('id', 'asc')->get();
								?>
								@foreach($aboutList as $about)
								<li class="level1">
									<a href="{{ route('news-list-child', ['thoi-khoa-bieu', $about->slug]) }}" title="{!! $about->name !!}">{!! $about->name !!}</a>
								</li>
								@endforeach
							</ul>
						</li>
						<li class="level0 parent {{ isset($cate_id) && $cate_id == 9 ? "active" : "" }}"><a href="{{ route('news-list', 'thu-vien') }}" title="Thư viện">Thư viện</a>
							<ul class="level0 submenu">
								<?php
								$aboutList = DB::table('cate_child')->where('status', 1)->where('cate_id', 9)->orderBy('id', 'asc')->get();
								?>
								@foreach($aboutList as $about)
								<li class="level1">
									<a href="{{ route('news-list-child', ['thu-vien', $about->slug]) }}" title="{!! $about->name !!}">{!! $about->name !!}</a>
								</li>
								@endforeach
							</ul>
						</li>
						<li class="level0 parent {{ isset($cate_id) && $cate_id == 10 ? "active" : "" }}"><a href="{{ route('news-list', 'tin-tuc') }}" title="Tin tức">Tin tức</a>
							<ul class="level0 submenu">
								<?php
								$aboutList = DB::table('cate_child')->where('status', 1)->where('cate_id', 10)->orderBy('id', 'asc')->get();
								?>
								@foreach($aboutList as $about)
								<li class="level1">
									<a href="{{ route('news-list-child', ['tin-tuc', $about->slug]) }}" title="{!! $about->name !!}">{!! $about->name !!}</a>
								</li>
								@endforeach
							</ul>
						</li>
						<li class="level0 parent {{ isset($cate_id) && $cate_id == 3 ? "active" : "" }}"><a href="{{ route('news-list', 'hanh-trinh-van-hoa') }}" title="Hành trình văn hóa">Hành trình văn hóa</a>
							<ul class="level0 submenu">
								<?php
								$aboutList = DB::table('cate_child')->where('status', 1)->where('cate_id', 3)->orderBy('id', 'asc')->get();
								?>
								@foreach($aboutList as $about)
								<li class="level1">
									<a href="{{ route('news-list-child', ['hanh-trinh-van-hoa', $about->slug]) }}" title="{!! $about->name !!}">{!! $about->name !!}</a>
								</li>
								@endforeach
							</ul>
						</li>
					</ul>
				</div><!-- /.navbar-collapse -->
				
	    	</nav><!-- mainNav -->
    	</div>
	</div><!-- /box-menu -->
</header><!-- /header -->