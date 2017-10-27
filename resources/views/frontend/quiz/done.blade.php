@extends('frontend.layout') 
  
@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
	<ol class="breadcrumb">
		<li><a href="#">Thi Thử</a></li>
		<li class="active">Kết quả</li>
	</ol>
</div><!-- /block-breadcrumb -->
<div class="block-star-test">	
	<div class="box-scores">
                	<div class="bs-left">
                    	<h3 class="bsl-title">
                        	<span>ĐIỂM</span>
                        </h3>
                        <div id="ctl15_pnDiem">
	
                        <div class="bsl-content">
                        	<span class="bsl-point">{{ $diem }}</span>
                            <div class="bsl-text">
                            	<span class="bsl-sp-left">
                                	Số đáp án đúng:
                                </span>
                                <span class="bsl-sp-right">
                                	{{ $so_cau_dung }}/{{ $tong_so_cau }}({{ $diem }}%)
                                </span>
                                <span class="bsl-sp-left">
                                	Tổng thời gian làm bài:
                                </span>
                                <span class="bsl-sp-right">
                                	11 phut 20 giây
                                </span>
                            </div>
                        </div>
                        <div id="ctl15_UpdateProgress1" style="display:none;">
		
                            <img style="margin-left:168px;" src="images/ajax-loader.gif" alt="ViettelStudy">
                        
	</div>
                        
                        
</div>
                    </div>
                    <div class="view-result">
                	<h3 class="vr-title">
                    	<span>Xem đáp án và lời giải</span>
                    </h3>
                	<p class="vr-text">
                    	Nếu chưa hài lòng với kết quả, Bạn nên cố gắng tự kiểm tra lại bài làm trước khi xem 
đáp án hoặc lời giải!
                    </p>
                    <p class="vr-btn" style="text-align:center">
                    
                    
                    	<!--<a class="vr-lnk-answer" href="thi.aspx?uc=5&amp;id=1935610&amp;id_hv=0">
                        	Xem đáp án
                        </a>
                    -->
                       
                         <a class="vr-lnk-solution vr-lnk-reset" href="{{ route('quiz-doing', ['slug' => $quizDetail->slug, 'id' => $quizDetail->id ]) }}">
                        	Làm lại bài thi
                        </a>
                        
                        <a href="javascript:;" class="sharefb">
                            <i class="icon-cus-social-share"></i>&nbsp;Chia sẻ
                        
                        </a>
                     </p>
        </div>
    </div>
</div><!-- /block-star-test -->
<style type="text/css">
	.box-scores {
    float: left;
    margin-top: 9px;
}
.bs-left {
    background: url(../images/gd_16.png) repeat-x scroll left bottom #FCFCFC;
    border: 1px solid #DCDCDC;
    border-right: 0px;
    float: left;
    padding-bottom: 15px;
    width: 360px;
}
.bs-left h3.bsl-title {
    background: url(../images/gd_22.png) repeat-x scroll left top transparent;
    border-bottom: 1px solid #DCDCDC;
    color: #51a0fb;
    float: left;
    font-size: 14px;
    height: 30px;
    line-height: 30px;
    width: 100%;
}
.bs-left .bsl-content {
    color: #565656;
    float: left;
    width: 100%;
}
.bs-left .bsl-content .bsl-point {
    float: left;
    font-family: tahoma;
    font-size: 70px;
    margin-top: 10px;
    text-align: center;
    width: 100%;
}
.bs-left .bsl-content .bsl-text {
    float: left;
    line-height: 18px;
    margin-top: 10px;
    width: 100%;
}
.view-result {
    border: 1px solid #DCDCDC;
    display: inline;
    float: left;
    padding-bottom: 15px;
    width: 575px;
}
.view-result h3.vr-title {
    background: url(../images/gd_22.png) repeat-x scroll left top transparent;
    border-bottom: 1px solid #DCDCDC;
    color: #51a0fb;
    float: left;
    font-size: 14px;
    height: 30px;
    line-height: 30px;
    width: 100%;
}
.view-result h3.vr-title span {
    padding-left: 15px;
}
.view-result p.vr-text {
    color: #565656;
    display: inline;
    float: left;
    height: 48px;
    line-height: 18px;
    margin-top: 45px;
    text-align: center;
    padding: 0px 50px;
    font-weight: bold;
}
.view-result p.vr-btn {
    float: left;
    margin-top: 14px;
    width: 100%;
}
p.vr-btn a {
    background: none repeat scroll 0 0 #51a0fb;
    color: #ffffff;
}
.bsl-text .bsl-sp-left {
    float: left;
    font-weight: bold;
    padding-left: 15px;
    width: 185px;
}
.bsl-text .bsl-sp-right {
    float: right;
    padding-right: 15px;
    text-align: right;
    width: 135px;
}
p.vr-btn a:hover, p.vr-btn a.active {
    background: none repeat scroll 0 0 #51a0fb;
    color: #ffffff;
}
.view-result p.vr-btn {
    float: left;
    margin-top: 14px;
    width: 100%;
}
p.vr-btn a {
    color: #FFFFFF;
    display: inline;
    float: left;
    font-weight: bold;
    height: 35px;
    line-height: 35px;
    margin-left: 9px;
    text-align: center;
    width: 133px;
}
.bs-left h3.bsl-title span {
    padding-left: 15px;
}
</style>
@stop
@section('js')
<script type="text/javascript">
	$(document).ready(function(){
		
		$('.sharefb').click(function(e) {

            FB.ui(
           {
             method: 'feed',
             name: 'Facebook Dialogs',
             link: '{!! route('share', url_encode($strRandom)) !!}',          
           },
           function(response) {
            console.log(response);
             if (response && response.post_id) {
               $.ajax({
                url : "{{ route('share-success') }}",
                type  : "POST",
                data : {
                    url : "{!! route('quiz-confirm', ['slug' => $quizDetail->slug, 'id' => $quizDetail->id] ) !!}"
                },
                success : function(data){
                    alert('Bạn đã được cộng 1 điểm vào tài khoản.');
                }
               });
             } else {
               alert('Post was not published.');
             }
           }
         );
			
		});

		
	});
</script>
@stop