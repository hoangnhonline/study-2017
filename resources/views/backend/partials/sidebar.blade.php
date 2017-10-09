<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="{{ URL::asset('public/admin/dist/img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p>{{ Auth::user()->display_name }}</p>
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
      <li class="header">MAIN NAVIGATION</li>     
      <li class="treeview {{ in_array(\Request::route()->getName(), ['courses.index', 'courses.create', 'courses.edit']) ? 'active' : '' }}">
        <a href="#">
          <i class="fa fa-twitch"></i> 
          <span>Khóa học</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li {{ in_array(\Request::route()->getName(), ['courses.index', 'courses.edit']) ? "class=active" : "" }}><a href="{{ route('courses.index') }}"><i class="fa fa-circle-o"></i> Khóa học</a></li>
          <li {{ in_array(\Request::route()->getName(), ['courses.create']) ? "class=active" : "" }}><a href="{{ route('courses.create') }}"><i class="fa fa-circle-o"></i> Thêm khóa học</a></li>          
        </ul>
      </li>             
      <li {{ in_array(\Request::route()->getName(), ['teacher.edit', 'teacher.index', 'teacher.create']) ? "class=active" : "" }}>
          <a href="{{ route('teacher.index') }}">
            <i class="fa fa-pencil-square-o"></i> 
            <span>Giáo viên</span>          
          </a>       
        </li>
      <li {{ in_array(\Request::route()->getName(), ['student.edit', 'student.index', 'student.create']) ? "class=active" : "" }}>
        <a href="{{ route('student.index') }}">
          <i class="fa fa-pencil-square-o"></i> 
          <span>Học viên</span>          
        </a>       
      </li>
      <li class="treeview {{ in_array(\Request::route()->getName(), ['pages.index', 'pages.create']) ? 'active' : '' }}">
        <a href="#">
          <i class="fa fa-twitch"></i> 
          <span>Trang</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li {{ in_array(\Request::route()->getName(), ['pages.index', 'pages.edit']) ? "class=active" : "" }}><a href="{{ route('pages.index') }}"><i class="fa fa-circle-o"></i> Trang</a></li>
          <li {{ in_array(\Request::route()->getName(), ['pages.create']) ? "class=active" : "" }}><a href="{{ route('pages.create') }}"><i class="fa fa-circle-o"></i> Thêm trang</a></li>          
        </ul>
      </li>
      
      <li class="treeview {{ in_array(\Request::route()->getName(), ['articles.index', 'articles.create', 'articles.edit','articles-cate.create', 'articles-cate.index', 'articles-cate.edit']) ? 'active' : '' }}">
        <a href="#">
          <i class="fa fa-pencil-square-o"></i> 
          <span>Tin tức</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li {{ in_array(\Request::route()->getName(), ['articles.edit', 'articles.index']) ? "class=active" : "" }}><a href="{{ route('articles.index') }}"><i class="fa fa-circle-o"></i> Tin tức</a></li>
          <li {{ in_array(\Request::route()->getName(), ['articles.create']) ? "class=active" : "" }} ><a href="{{ route('articles.create', ['cate_id' => 1]) }}"><i class="fa fa-circle-o"></i> Thêm tin tức</a></li>
          @if(Auth::user()->role == 3)
        <li {{ in_array(\Request::route()->getName(), ['articles-cate.create', 'articles-cate.index', 'articles-cate.edit']) ? "class=active" : "" }} ><a href="{{ route('articles-cate.index') }}"><i class="fa fa-circle-o"></i> Danh mục tin tức</a></li>      
        @endif    
        </ul>
       
      </li> 
        <li {{ in_array(\Request::route()->getName(), ['tag.edit', 'tag.index']) ? "class=active" : "" }}>
          <a href="{{ route('tag.index') }}">
            <i class="fa fa-pencil-square-o"></i> 
            <span>Tags</span>          
          </a>       
        </li>
      @if(Auth::user()->role > 1)       
      <li {{ in_array(\Request::route()->getName(), ['newsletter.edit', 'newsletter.index']) ? "class=active" : "" }}>
        <a href="{{ route('newsletter.index') }}">
          <i class="fa fa-pencil-square-o"></i> 
          <span>Newsletter</span>         
        </a>       
      </li>

      <li {{ in_array(\Request::route()->getName(), ['contact.edit', 'contact.index']) ? "class=active" : "" }}>
        <a href="{{ route('contact.index') }}">
          <i class="fa fa-pencil-square-o"></i> 
          <span>Liên hệ</span>          
        </a>       
      </li>
      @endif    
      <li {{ in_array(\Request::route()->getName(), ['banner.list', 'banner.edit', 'banner.create']) ? "class=active" : "" }}>
        <a href="{{ route('banner.list') }}">
          <i class="fa fa-file-image-o"></i> 
          <span>Banner</span>          
        </a>       
      </li>       
      @if(Auth::user()->role == 3)
      <li class="treeview {{ in_array(\Request::route()->getName(), ['menu.index', 'account.index', 'info-seo.index', 'settings.index', 'settings.noti', 'menu.index', 'video.index', 'video.edit', 'video.create']) || (in_array(\Request::route()->getName(), ['custom-link.edit', 'custom-link.index', 'custom-link.create']) && isset($block_id) && $block_id == 2 ) || (in_array(\Request::route()->getName(), ['custom-link.edit', 'custom-link.index', 'custom-link.create']) && isset($block_id) && $block_id == 1 ) ? 'active' : '' }}">
        <a href="#">
          <i class="fa  fa-gears"></i>
          <span>Cài đặt</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          @if(Auth::user()->role == 3)
        
          <li {{ \Request::route()->getName() == "settings.index" ? "class=active" : "" }}><a href="{{ route('settings.index') }}"><i class="fa fa-circle-o"></i> Thông tin houseland</a></li>          
          <li {{ (in_array(\Request::route()->getName(), ['custom-link.edit', 'custom-link.index', 'custom-link.create']) && isset($block_id) && $block_id == 1 )? "class=active" : "" }}>
            <a href="{{ route('custom-link.index', ['block_id' => 1 ]) }}">
              <i class="fa fa-circle-o"></i>
              <span>Link Footer trái</span>         
            </a>       
          </li>
          <li {{ (in_array(\Request::route()->getName(), ['custom-link.edit', 'custom-link.index', 'custom-link.create']) && isset($block_id) && $block_id == 2 )? "class=active" : "" }}>
            <a href="{{ route('custom-link.index', ['block_id' => 2 ]) }}">
              <i class="fa fa-circle-o"></i>
              <span>Link Footer giữa</span>         
            </a>       
          </li>
          <li {{ \Request::route()->getName() == "menu.index" ? "class=active" : "" }}><a href="{{ route('menu.index') }}"><i class="fa fa-circle-o"></i> Menu</a></li>          
          @endif
          <li {{ \Request::route()->getName() == "account.index" ? "class=active" : "" }}><a href="{{ route('account.index') }}"><i class="fa fa-circle-o"></i> Users</a></li>              
        </ul>
      </li>
      @endif
      <!--<li class="header">LABELS</li>
      <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
      <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
      <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>-->
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>
<style type="text/css">
  .skin-blue .sidebar-menu>li>.treeview-menu{
    padding-left: 15px !important;
  }
</style>