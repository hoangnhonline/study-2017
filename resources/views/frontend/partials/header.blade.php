<header id="header">
	<div class="header-top">
		<div class="container">
			<div class="row">
				<div class="block-logo col-sm-3 col-xs-5">
					<a href="{{ route('home') }}" title="LOGO"><img src="{{ URL::asset('public/assets/images/logo_gd.jpg') }}" alt="LOGO "></a>
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
										<div class="user-icon abs">
											<a class="link" href="/users/view_profile">
												<i class="fa fa-user"></i>
											</a>
											<a class="link" href="/users/edit_profile">
												<i class="fa fa-pencil"></i>
											</a>
										</div>
									</div>
								</div><!-- /user-dropdown-header -->
								<div class="user-dropdown-links clearfix">
									<a class="link" href="#">Các khoá học của tôi</a>
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
						<li class="level0 @if($routeName == "home") active @endif"><a href="{{ route('home') }}" title="Trang chủ">Trang chủ</a></li><!-- level0 -->
						<li class="level0 @if($routeName == "pages" && isset($slug) && $slug == "gioi-thieu" ) active @endif"><a href="{{ route('pages', 'gioi-thieu') }}" title="Giới thiệu">Giới thiệu</a></li><!-- level0 -->
						<li class="level0 @if(in_array($routeName, ['courses-list', 'courses-detail', 'lession-detail'])) active @endif"><a href="{{ route('courses-list') }}" title="Khóa học">Khóa học</a></li><!-- level0 -->
						<li class="level0 parent">
							<a href="#" title="Trắc nghiệm">
								Trắc nghiệm
								<ul class="level0 submenu">
									@foreach($quizCateList as $cate)																		
									<li class="level1"><a href="{!! route('quiz-list', $cate->slug) !!}" title="{!! $cate->name !!}">{!! $cate->name !!}</a></li>									
									@endforeach
								</ul>
							</a>
						</li><!-- level0 -->						
						<li class="level0 @if(in_array($routeName, ['news-list', 'news-detail'])) active @endif">
							<a href="#" title="Tin Tức">
								Tin Tức
								<ul class="level0 submenu">
									@foreach($articleCate as $cate)																		
									<li class="level1"><a href="{!! route('news-list', $cate->slug) !!}" title="{!! $cate->name !!}">{!! $cate->name !!}</a></li>									
									@endforeach
								</ul>
							</a>
						</li><!-- level0 -->
						<li class="level0 @if($routeName == "contact") active @endif""><a href="{{ route('contact') }}" title="Liên hệ">Liên hệ</a></li><!-- level0 -->
					</ul>
				</div><!-- /.navbar-collapse -->
	    	</nav><!-- mainNav -->
    	</div>
	</div><!-- /box-menu -->
</header><!-- /header -->