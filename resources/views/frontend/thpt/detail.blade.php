@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>
		<li><a href="{!! route('courses-list') !!}" title="Khóa học">Khóa học</a></li>		
		<li class="active">{!! $detail->name !!}</li>
	</ol>
</div><!-- /block-breadcrumb -->
<?php 
	$coursesArr = [];
	if( Session::get('userId') ){
		 $coursesArr = DB::table('user_courses')->where('user_id', Session::get('userId'))->where('type', 2)->pluck('courses_id');
	}
?>
<div class="block-video block-video-pg">
	<div class="row">
		<div class="col-sm-8">	
			
			@if($detail->image_url)
			<div class="video">
			
				<img class="img-responsive" style="width: 100%" src="{{ Helper::showImage($detail->image_url) }}" alt="{!! $detail->name !!}">
			
			</div>
			@endif			
		</div><!-- /col-sm-8 -->
		<div class="col-sm-4">
			<div class="bock-info">
				<div class="box-table">
					<div class="box-table-cell">
						<h1 class="title">{!! $detail->name !!}</h1>
						<p class="info">{!! $detail->description !!}</p>		
						@if($firstLession)				
						<div class="group-btn">
						
							@if ($detail->score > 0)
								@if(Session::get('userId'))
									@if(!in_array($detail->id, $coursesArr))
									<button class="btn btn-info doi-diem">Đổi khóa học với <span style="font-size:16px">{{ $detail->score }}</span> điểm</button>
									@else
									<a href="{!! route('baihoc-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>	
									@endif
								@else
									<button class="btn btn-info facebook-login" type="button">Đăng nhập</button>
								@endif
							@elseif( $detail->is_share == 1)
								@if(Session::get('userId'))
									@if(!in_array($detail->id, $coursesArr))
									<button class="btn btn-info share-courses">Share Facebook để học miễn phí</button>
									@else
									<a href="{!! route('baihoc-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>	
									@endif
								@else
									<button class="btn btn-info facebook-login" type="button">Đăng nhập</button>
								@endif
							@else							
							@if($firstLession)
							<a href="{!! route('baihoc-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>		
							@endif		
							@endif

						</div>
						@endif
					</div>
				</div>
			</div>
		</div><!-- /col-sm-4 -->
	</div>
</div><!-- /block-video -->
<div class="row">
	<div class="block-left col-sm-8">
		<div class="block-articles">
			<div class="content">
				<strong>Thông tin khóa học</strong>
				{!! $detail->content !!}
			</div>
			<div class="group-btn">			
				@if($firstLession)		
					@if ($detail->score > 0)
					@if(Session::get('userId'))
						@if(!in_array($detail->id, $coursesArr))
						<button class="btn btn-info doi-diem">Đổi khóa học với <span style="font-size:16px">{{ $detail->score }}</span> điểm</button>
						@else
						<a href="{!! route('baihoc-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>	
						@endif
					@else
						<button class="btn btn-info facebook-login" type="button">Đăng nhập</button>
					@endif
				@elseif( $detail->is_share == 1)
					@if(Session::get('userId'))
						@if(!in_array($detail->id, $coursesArr))
						<button class="btn btn-info share-courses">Share Facebook để học miễn phí</button>
						@else
						<a href="{!! route('baihoc-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>	
						@endif
					@else
						<button class="btn btn-info facebook-login" type="button">Đăng nhập</button>
					@endif
				@else
				<a href="{!! route('baihoc-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>				
				@endif
				@endif
			</div>
		</div>
	</div><!-- /block-left -->
	<div class="block-right col-sm-4">
		<div class="sidebar">
			
			<div class="block-sidebar block-tearchers-sb">
				<div class="block-title">
					<p class="title">Giảng viên</p>
				</div>
				<div class="block-content">					
					<div class="item">
						<div class="box-head-teacher">
							<a class="image">
								<img src="{!! Helper::showImage($detail->teacher->image_url) !!}" alt="{!! $detail->teacher->name !!}">
							</a>
							@if($detail->teacher)
							<h3 class="name">{!! $detail->teacher->name !!}</h3>
							@endif
						</div><!-- /box-head-teacher -->
						<div class="box-bottom-teacher">
							Dẫn dắt khóa học là {!! $detail->teacher->name !!} {!! $detail->teacher->content !!}
						</div><!-- /box-bottom-teacher -->
					</div><!-- /item -->
				</div>
			</div><!-- /block-tearchers-sb -->			
		</div>
	</div><!-- /block-right -->
</div><!-- /row -->
@stop
@section('js')
<script type="text/javascript">
	$(document).ready(function(){		
		var score = 0;
		<?php 
		if( Session::get('userId')){
			$detailUser = DB::table('customers')->where('id', Session::get('userId'))->first();
			?>
			score = {{ $detailUser->score }};
			<?php			
		}
		?>
		$('.share-courses').click(function(e) {
			var next = true;			
			if(next == true){
				FB.ui(
		           {
		             method: 'feed',
		             name: 'Facebook Dialogs',
		             link: '{!! url()->current() !!}',          
		           },
		           function(response) {            
		             
		               $.ajax({
		                url : "{{ route('share-success') }}",
		                type  : "POST",
		                data : {
		                    mod : 'courses',
		                    courses_id : {{ $detail-> id }},
		                    type : 2
		                },
		                success : function(data){
			                	swal('', 'Cảm ơn bạn đã chia sẻ.<br><p style="color:#51A0FB;margin:10px 5px">Tài khoản của bạn vừa được cộng <strong>01</strong> điểm</p>Mời bạn click "Xem chi tiết" để vào học.', 'info').then(function(){
			                	window.location.reload();
			                });
		                    
		                }
		               });
		             
		           }
		         );
			}
		});

		$('.doi-diem').click(function(e) {
			var next = true;			
			if(next == true){
				if( score >= {{ $detail->score }}){
					$.ajax({
		            url : "{{ route('doi-diem') }}",
		            type  : "POST",
		            data : {	              
		                courses_id : {{ $detail-> id }}  
		            },
		            success : function(data){
		                
		                swal('', 'Đổi điểm thành công.<br> Mời bạn click "Xem chi tiết" để vào học.', 'info').then(function(){
		                	window.location.reload();
		                });
		            }
		        });	
				}else{				
					swal('', 'Bạn không đủ điểm để đổi khóa học.', 'error');return false;
				}
			}
			
			
		});

		
	});
</script>
@stop