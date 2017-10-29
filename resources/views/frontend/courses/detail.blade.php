@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block-video block-video-pg">
	<div class="row">
		<div class="col-sm-8">			
			@if($detail->video_id)
			<div class="video">
			
				<iframe width="100%" height="350" src="https://www.youtube-nocookie.com/embed/{!! $detail->video_id !!}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
			
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
						<?php 
							$coursesArr = [];
							if( Session::get('userId') ){
								 $coursesArr = DB::table('user_courses')->where('user_id', Session::get('userId'))->pluck('courses_id');
							}
						?>
							@if ($detail->score > 0)
								@if(!in_array($detail->id, $coursesArr))
								<button id="doi-diem" class="btn btn-info">Đổi khóa học với <span style="font-size:16px">{{ $detail->score }}</span> điểm</button>
								@else
								<a href="{!! route('lession-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>	
								@endif
							@elseif( $detail->is_share == 1)
								@if(!in_array($detail->id, $coursesArr))
								<button id="share-courses" class="btn btn-info">Share Facebook để học miễn phí</button>
								@else
								<a href="{!! route('lession-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>	
								@endif
							@else
							<a href="{!! route('lession-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>				
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
				<a href="{!! route('lession-detail', ['slug' => $firstLession->slug, 'id' => $firstLession->id] ) !!}" title="{!! $firstLession->name !!}" class="btn">Xem Chi Tiết</a>
				@endif
			</div>
		</div>
	</div><!-- /block-left -->
	<div class="block-right col-sm-4">
		<div class="sidebar">
			<div class="block-sidebar block-tearchers-sb">
				<div class="block-title">
					<p class="title">Lợi ích khóa học</p>
				</div>
				<div class="block-content">
					<div class="item">						
						<div class="box-bottom-teacher">
							{!! $detail->benefit !!}
						</div><!-- /box-bottom-teacher -->
					</div><!-- /item -->					
				</div>
			</div><!-- /block-tearchers-sb -->
			<div class="block-sidebar block-tearchers-sb">
				<div class="block-title">
					<p class="title">Đối tượng phù hợp</p>
				</div>
				<div class="block-content">
					<div class="item">						
						<div class="box-bottom-teacher">
							{!! $detail->object !!}
						</div><!-- /box-bottom-teacher -->
					</div><!-- /item -->					
				</div>
			</div><!-- /block-tearchers-sb -->
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
							<h3 class="name">{!! $detail->teacher->name !!}</h3>
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
		$('#share-courses').click(function(e) {
			var next = false;
			@if(!Session::get('userId'))
				swal({
				    title: "",
				    text: "Đăng nhập tài khoản để chia sẻ khóa học này?",
				    type: "warning",
				    showCancelButton: true,				    
				    confirmButtonText: 'Đăng nhập',
				    cancelButtonText: "Bỏ qua"
				 }).then(
				       function () { 
				       		FB.login(function(response){
						      if(response.status == "connected")
						      {
						         // call ajax to send data to server and do process login
						        var token = response.authResponse.accessToken;
						        $.ajax({
						          url: $('#route-ajax-login-fb').val(),
						          method: "POST",
						          data : {
						            token : token
						          },
						          success : function(data){
						            if(!data.success) {
						              location.reload();
						            } else {
						              location.href = $('#route-cap-nhat-thong-tin').val();
						            }
						          }
						        });

						      }
						    }, {scope: 'public_profile,email,user_friends,publish_actions'});
						    next = true;
				       },
				       function () { return false; });				
			@else
			var next = true;
			@endif
			if(next == true){
				FB.ui(
		           {
		             method: 'feed',
		             name: 'Facebook Dialogs',
		             link: '{!! url()->current() !!}',          
		           },
		           function(response) {            
		             if (response && response.post_id) {
		               $.ajax({
		                url : "{{ route('share-success') }}",
		                type  : "POST",
		                data : {
		                    mod : 'courses',
		                    courses_id : {{ $detail-> id }}  
		                },
		                success : function(data){
			                	swal('', 'Cảm ơn bạn đã chia sẻ.<br><p style="color:red;margin:10px 5px">Tài khoản của bạn vừa được cộng <strong>01</strong> điểm</p>Mời bạn click "Xem chi tiết" để vào học.', 'info').then(function(){
			                	window.location.reload();
			                });
		                    
		                }
		               });
		             }
		           }
		         );
			}
		});

		$('#doi-diem').click(function(e) {
			var next = false;
			@if(!Session::get('userId'))
				swal({
				    title: "",
				    text: "Đăng nhập tài khoản để đổi điểm khóa học này?",
				    type: "warning",
				    showCancelButton: true,				    
				    confirmButtonText: 'Đăng nhập',
				    cancelButtonText: "Bỏ qua"
				 }).then(
				       function () { 
				       		FB.login(function(response){
						      if(response.status == "connected")
						      {
						         // call ajax to send data to server and do process login
						        var token = response.authResponse.accessToken;
						        $.ajax({
						          url: $('#route-ajax-login-fb').val(),
						          method: "POST",
						          data : {
						            token : token
						          },
						          success : function(data){
						            if(!data.success) {
						              location.reload();
						            } else {
						              location.href = $('#route-cap-nhat-thong-tin').val();
						            }
						          }
						        });

						      }
						    }, {scope: 'public_profile,email,user_friends,publish_actions'});
						    next = true;
				       },
				       function () { return false; });				
			@else
			var next = true;
			@endif
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