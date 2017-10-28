<footer id="footer">
    <div class="block-getmail">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <p>
                        <strong>ĐĂNG KÝ NHẬN EMAIL</strong>
                        Đăng ký để nhận tài liệu bổ ích từ study.vn
                    </p>
                </div>
                <div class="col-sm-6">
                    <form action="#" method="get" class="form-getmail">
                        <input type="email" name="" value="" class="form-control">
                        <button type="submit" value="Đăng Kí" class="btn btn-getmail">Đăng Ký</button>
                    </form>
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
                <div class="fanpage col-sm-4">
                    <div class="fb-page" data-href="{{ $settingArr['facebook_fanpage'] }}" data-tabs="timeline" data-height="100" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="{{ $settingArr['facebook_fanpage'] }}" class="fb-xfbml-parse-ignore"><a href="{{ $settingArr['facebook_fanpage'] }}">Study.vn</a></blockquote></div>
                    
                </div>
            </div>
        </div>
    </div><!-- /block-info-ft -->    
</footer><!-- /footer -->