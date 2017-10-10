<div class="modal fade" id="login-modal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
				<h3 class="modal-title">Đăng nhập</h3>
			</div>
			<div class="modal-body">
			    <form action="/users/sign_in" method="post">
			        <p class="sub-title">Đăng nhập bằng email</p>
			        <div class="form-control-wrapper">
			            <input class="form-control" id="email" name="user[email]" placeholder="Email" required="true" type="email" value="">
			        </div>
			        <div class="form-control-wrapper">
			            <input class="form-control" id="password" name="user[password]" placeholder="Mật khẩu" required="true" type="password">
			        </div>
			        <div class="form-control-wrapper">
			            <input class="btn btn-login-submit" type="submit" value="Đăng nhập">
			        </div>
			    </form>
			    <p class="forgot-password-link">
			        <a class="btn-link" data-dismiss="modal" data-target="#fogot-password-dialog" data-toggle="modal" href="#" id="forgot-password-button">Quên mật khẩu đăng nhập?</a>
			    </p>
			</div>
			<div class="modal-footer">
			    <div class="forgot-password-link clearfix">
			        <a class="btn btn-link show-social-link" href="#" data-toggle="collapse" data-target=".social-area">
			        Đăng nhập với tài khoản mạng xã hội
			        <span>
			        <i class="fa fa-angle-down"></i>
			        </span>
			        </a>
			        <div class="form-control-wrapper social-area collapse">
			            <div class="row">
			                <div class="col-md-6">
			                    <a class="btn-facebook" href="/users/auth/facebook">
			                    <i class="left fa fa-facebook"></i>
			                    <span class="left">Facebook</span>
			                    </a>
			                </div>
			                <div class="col-md-6">
			                    <a class="btn-google" href="/users/auth/google_oauth2">
			                    <i class="left fa fa-google-plus"></i>
			                    <span class="left">Google+</span>
			                    </a>
			                </div>
			            </div>
			        </div>
			    </div>
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
                <form action="/users" method="post">
                    <p class="sub-title">Đăng ký bằng email</p>
                    <div class="form-control-wrapper">
                        <input class="form-control" id="name" name="user[name]" placeholder="Họ và tên" required="true" type="text" value="">
                    </div>
                    <div class="form-control-wrapper">
                        <input class="form-control" id="email" name="user[email]" placeholder="Email" required="true" type="email" value="">
                    </div>
                    <div class="form-control-wrapper">
                        <input class="form-control" id="password" name="user[password]" placeholder="Mật khẩu" required="true" type="password">
                    </div>
                    <div class="form-control-wrapper">
                        <input class="btn btn-login-submit" type="submit" value="Đăng ký">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="forgot-password-link clearfix">
			        <a class="btn btn-link show-social-link" href="#" data-toggle="collapse" data-target=".social-area">
			        Đăng nhập với tài khoản mạng xã hội
			        <span>
			        <i class="fa fa-angle-down"></i>
			        </span>
			        </a>
			        <div class="form-control-wrapper social-area collapse">
			            <div class="row">
			                <div class="col-md-6">
			                    <a class="btn-facebook" href="/users/auth/facebook">
			                    <i class="left fa fa-facebook"></i>
			                    <span class="left">Facebook</span>
			                    </a>
			                </div>
			                <div class="col-md-6">
			                    <a class="btn-google" href="/users/auth/google_oauth2">
			                    <i class="left fa fa-google-plus"></i>
			                    <span class="left">Google+</span>
			                    </a>
			                </div>
			            </div>
			        </div>
			    </div>
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