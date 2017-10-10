<header id="header">
	<div class="header-top">
		<div class="container">
			<div class="row">
				<div class="block-logo col-sm-3">
					<a href="{{ route('home') }}" title="LOGO"><img src="{{ URL::asset('public/assets/images/logo_gd.jpg') }}" alt="LOGO "></a>
				</div><!-- /block-log -->
				<div class="block-search col-sm-6">
					<form name="frm_search" action="" class="frm-search">
						<div class="control clearfix">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
							<input type="text" name="" placeholder="Từ khóa tìm kiếm" autocomplete="off">
						</div>
					</form>
				</div><!-- /block-search -->
				<div class="block-user col-sm-3">
					<span class="ava-img">
						<img alt="" src="images/user.svg">
					</span>
					<div class="ava-info">
						<p><strong>Đăng nhập, đăng ký</strong></p>
						<p class="small">Tài khoản</p>
					</div>
					<div class="popover fade bottom in">
					    <div class="arrow"></div>
					    <div class="popover-content">
					        <div class="popover-signin">
					        	<a class="btn btn-block btn-white" href="javascript(0);" data-toggle="modal" data-target="#login-modal">Đăng nhập</a>
					        	<a class="btn btn-block btn-white" href="javascript(0);" data-toggle="modal" data-target="#register-modal">Đăng ký tài khoản mới</a>
					        	<a class="btn btn-block login-button-fb btn-social" href="#">Đăng nhập với Facebook</a>
					        	<a class="btn btn-block login-button-google btn-social" href="#">Đăng nhập với Google+</a>
					       	</div>
					    </div>
					</div>
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
						<li class="level0 menu-icon active"><a href="{{ route('home') }}" title="Trang Chủ"></a></li><!-- level0 -->
						<li class="level0 parent">
							<a href="thithu.html" title="Thi Thử">
								Thi Thử
								<ul class="level0 submenu">
									<li class="level1"><a href="#" title="Thi THPT Quốc gia 2016">Thi THPT Quốc gia 2016</a></li>
									<li class="level1 parent">
										<a href="#" title="Thi THPT Quốc gia 2015">Thi THPT Quốc gia 2015</a>
										<ul class="level1 submenu">
											<li class="level1"><a href="#" title="">Toán học</a></li>
											<li class="level1"><a href="#" title="">Vật lý</a></li>
											<li class="level1"><a href="#" title="">Hóa học</a></li>
											<li class="level1"><a href="#" title="">Sinh học</a></li>
											<li class="level1"><a href="#" title="">Ngữ Văn</a></li>
											<li class="level1"><a href="#" title="">Lịch Sử</a></li>
											<li class="level1"><a href="#" title="">Tiếng Anh</a></li>
											<li class="level1"><a href="#" title="">Địa Lý</a></li>
											<li class="level1"><a href="#" title="">Đề thi minh họa Kỳ thi THPT Quốc gia</a></li>
											<li class="level1"><a href="#" title="">Bài thi Tổng Hợp – ĐHQG HN</a></li>
										</ul>
									</li>
									<li class="level1"><a href="#" title="">Thi THPT Quốc gia 2016 </a></li>
									<li class="level1"><a href="#" title="">Thi THPT Quốc gia 2016 </a></li>
									<li class="level1"><a href="#" title="">Thi THPT Quốc gia 2016 </a></li>
									<li class="level1"><a href="#" title="">Thi THPT Quốc gia 2016 </a></li>
								</ul>
							</a>
						</li><!-- level0 -->
						<li class="level0"><a href="#" title="Luyện Thi">Luyện Thi</a></li><!-- level0 -->
						<li class="level0"><a href="#" title="Luyện Đề">Luyện Đề</a></li><!-- level0 -->
						<li class="level0"><a href="#" title="Kiến Thức Phổ Thông">Kiến Thức Phổ Thông</a></li><!-- level0 -->
						<li class="level0"><a href="#" title="Tiếng Anh">Tiếng Anh</a></li><!-- level0 -->
						<li class="level0"><a href="#" title="Thư Viện">Thư Viện</a></li><!-- level0 -->
						<li class="level0"><a href="#" title="Tin Tức">Tin Tức</a></li><!-- level0 -->
						<li class="level0"><a href="#" title="Kỹ Năng">Kỹ Năng</a></li><!-- level0 -->
					</ul>
				</div><!-- /.navbar-collapse -->
	    	</nav><!-- mainNav -->
    	</div>
	</div><!-- /box-menu -->
</header><!-- /header -->