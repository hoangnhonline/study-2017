<footer id="footer">
    <div class="block-getmail">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <p>
                        <strong>ĐĂNG KÝ NHẬN EMAIL</strong>
                        Đăng ký để nhận tài liệu bổ ích từ vhvschool.online
                    </p>
                </div>
                <div class="col-sm-6">
                    <div class="form-getmail">
                        <input type="email" name="txtNewsletter" value="" id="txtNewsletter" class="form-control">
                        <button type="button" id="btnNewsletter" value="Đăng Ký" class="btn btn-getmail">Đăng Ký</button>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- /block-getmail -->
    <div class="block-info-ft">
        <div class="container">
            <div class="row">
                <div class="logo-ft col-sm-3">
                    <a href="{{ route('home') }}" title="Logo">
                        <img src="{{ Helper::showImage($settingArr['logo']) }}" alt="Logo">
                    </a>
                </div>
                <div class="address col-sm-5">
                   {!! $settingArr['thong_tin_footer'] !!}
                </div>
                <div class="fanpage col-sm-4 col-xs-4">
                    <div class="block-social">
                        <ul>
                            <li class="facebook"><a href="#" title=""><i class="fa fa-facebook"></i></a></li>
                            <li class="youtube"><a href="#" title=""><i class="fa fa-youtube-play"></i></a></li>
                            <li class="google"><a href="#" title=""><i class="fa fa-google-plus"></i></a></li>
                            <li class="zalo"><a href="#" title=""><img src="images/1521176194-brasol.vn-logo-zalo-vector-logo-zalo-vector.png" alt=""></a></li>
                        </ul>
                    </div>
                    
                </div>
            </div>
        </div>
    </div><!-- /block-info-ft -->  

</footer><!-- /footer -->