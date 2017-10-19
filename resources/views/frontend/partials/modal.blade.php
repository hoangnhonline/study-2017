<div class="modal fade" id="login-modal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
				<h3 class="modal-title">Đăng nhập</h3>
			</div>
			<div class="modal-body">
			    <form action="" method="post" id="login_popup_form">
			        <p class="sub-title">Đăng nhập bằng email</p>
			        <div class="form-control-wrapper">
			            <input class="form-control" id="popup-login-email" name="email" placeholder="Email" required="true" type="email" value="">
			            <div class="clearfix"></div>
			            <small data-bv-result="NOT_VALIDATED" data-bv-for="email" data-bv-validator="notEmpty" class="help-block" style="display: none;">Vui lòng nhập Email hợp lệ</small>
			        </div>
			        <div class="form-control-wrapper">
			            <input class="form-control" id="popup-login-password" name="password" placeholder="Mật khẩu" required="true" type="password">
			            <div class="clearfix"></div>
			            <small data-bv-result="NOT_VALIDATED" data-bv-for="password" data-bv-validator="notEmpty" class="help-block" style="display: none;">Vui lòng nhập Mật khẩu</small>
			        </div>
			        <div class="login-ajax-captcha" style="display:none">
		              <div id="login-popup-recaptcha"></div>
		            </div>
		            <div class="form-group" id="error_login"> <span class="help-block ajax-message"></span> </div>
			        <div class="form-control-wrapper">
			            <input class="btn btn-login-submit" id="login_popup_submit" type="button" value="Đăng nhập">
			        </div>
			    </form>
			    <!--<p class="forgot-password-link">
			        <a class="btn-link" data-dismiss="modal" data-target="#fogot-password-dialog" data-toggle="modal" href="#" id="forgot-password-button">Quên mật khẩu đăng nhập?</a>
			    </p>-->
			</div>
			<div class="modal-footer">			    
			    <p class="bottom-text">
			        Chưa có tài khoản?
			        <a class="btn-link" data-dismiss="modal" data-target="#register-modal" data-toggle="modal" href="#">Đăng ký</a>
			    </p>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade in" id="register-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
                <h3 class="modal-title">Đăng ký</h3>
            </div>
            <div class="modal-body">
                <form action="/users" method="post" id="register_popup_form">
                    <p class="sub-title">Đăng ký bằng email</p>
                    <div class="form-control-wrapper">
                        <input class="form-control" id="popup-register-name" name="full_name" placeholder="Họ và tên" required="true" type="text" value="">
                    </div>
                    <div class="form-control-wrapper">
                        <input class="form-control" id="popup-register-email" name="email" placeholder="Email" required="true" type="email" value="">
                    </div>
                    <div class="form-control-wrapper">
                        <input class="form-control" id="popup-register-password" name="password" placeholder="Mật khẩu từ 6 đến 32 ký tự" required="true" type="password">
                    </div>
                    <div class="form-control-wrapper">
                        <input class="btn btn-login-submit" type="button" id="register_popup_submit" value="Đăng ký">
                    </div>
                </form>
            </div>
            <div class="modal-footer">                
                <p class="bottom-text">
                    Đã có tài khoản?
                    <a class="btn-link" data-dismiss="modal" data-target="#login-modal" data-toggle="modal" href="#">Đăng nhập</a>
                </p>
            </div>
        </div>
    </div>
</div><!-- /.modal -->
<div id="editContentModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Cập nhật nội dung</h4>
      </div>
      <form method="POST" action="{{ route('save-content') }}">
      {{ csrf_field() }}
      <input type="hidden" name="id" id="txtId" value="">
      <div class="modal-body">
        <textarea rows="5" class="form-control" name="content" id="txtContent"></textarea>
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary" id="btnSaveContent">Save</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
      </form>
    </div>

  </div>
</div>
<style type="text/css">	
	#login-modal .form-control-wrapper .form-control.error, #register-modal .form-control-wrapper .form-control.error, #fogot-password-dialog .form-control-wrapper .form-control.error{
		border: 1px solid red;	
	}
</style>