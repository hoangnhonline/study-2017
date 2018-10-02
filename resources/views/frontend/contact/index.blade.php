@extends('frontend.layout')

@include('frontend.partials.meta')
@section('content')
<div class="block block-breadcrumb">
    <ol class="breadcrumb">
        <li><a href="{!! route('home') !!}" title="Trang chủ">Trang chủ</a></li>        
        <li class="active">Liên hệ</li>
    </ol>
</div><!-- /block-breadcrumb -->
<div class="block-members block-title-cm">
    <div class="block-title">
        <h1 class="title">          
            Liên hệ
        </h1>
    </div><!-- /block-title -->
    
    <div class="block-page-about">          
        <div class="block-article">
            <div class="block-content">
                <h2 class="tit-page2" style="text-transform: uppercase">Trường trung học cơ sở - trung học phổ thông văn hóa việt</h2>
                <div class="block-address">
                    {!! $settingArr['chi_nhanh_phia_nam'] !!}
                </div>
                <div class="block block-map">
                    <object data="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.880997218518!2d106.63407601513924!3d10.820418061338113!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752964192a364f%3A0x26afdb49af87d43!2zNzVhIE5ndXnhu4VuIFPhu7kgU8OhY2gsIFBoxrDhu51uZyAxNSwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1538387881192"></object>
                </div>
                <div id="showmess" class="clearfix"></div>
                @if(Session::has('message'))
                
                <p class="alert alert-info" >{{ Session::get('message') }}</p>
                
                @endif
                @if (count($errors) > 0)                        
                  <div class="alert alert-danger ">
                    <ul>                           
                        <li>Vui lòng nhập đầy đủ thông tin.</li>                            
                    </ul>
                  </div>                        
                @endif  
                <form class="block-form" action="{{ route('send-contact') }}" method="POST">
                {{ csrf_field() }}
                    <div class="row">
                        <div class="form-group col-sm-12 col-xs-12">
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Họ tên khách hàng" value="{{ old('fullname') }}">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-12 col-xs-12">
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="Số điện thoại" value="{{ old('phone') }}">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-12 col-xs-12">
                            <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="{{ old('email') }}">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-12 col-xs-12">
                            <textarea name="content" id="content" rowspan="300" class="form-control" placeholder="Ghi chú">{{ old('content') }}</textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-12 col-xs-12">
                            <button type="submit" id="btnSave" class="btn btn-prmary btn-view">Gửi liên hệ</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>
@endsection


@section('js')
<script type="text/javascript">
    @if (count($errors) > 0 || Session::has('message'))      
    $(document).ready(function(){
        $('html, body').animate({
            scrollTop: $("#showmess").offset().top
        });
    });
    @endif
    $(document).ready(function(){
        $('#btnSave').click(function(){
            $(this).parents('form').submit();
            $('#btnSave').attr('disabled', 'disabled').html('<i class="fa fa-spin fa-spinner"></i>');
        });
    });
</script>
@stop
