@extends('backend.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Cài đặt site
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('settings.index') }}">Cài đặt</a></li>
      <li class="active">Cập nhật</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">   
    <form role="form" method="POST" action="{{ route('settings.update') }}">
    <div class="row">
      <!-- left column -->

      <div class="col-md-7">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Cập nhật</h3>
          </div>
          <!-- /.box-header -->               
            {!! csrf_field() !!}

            <div class="box-body">
              @if (count($errors) > 0)
                  <div class="alert alert-danger">
                      <ul>
                          @foreach ($errors->all() as $error)
                              <li>{{ $error }}</li>
                          @endforeach
                      </ul>
                  </div>
              @endif
              @if(Session::has('message'))
              <p class="alert alert-info" >{{ Session::get('message') }}</p>
              @endif
                 <!-- text input -->
                <div class="form-group col-md-12">
                  <label>Tên site <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="site_name" id="site_name" value="{{ $settingArr['site_name'] }}">
                </div>
                
                <div class="form-group col-md-6">
                  <label>Hotline </label>
                  <input type="text" class="form-control" name="hotline" id="hotline" value="{{ $settingArr['hotline'] }}">
                </div>
                <div class="form-group col-md-6">
                  <label>Email </label>
                  <input type="text" class="form-control" name="email_header" id="email_header" value="{{ $settingArr['email_header'] }}">
                </div>                
                <div class="form-group col-md-6">
                  <label>Email nhận thông báo</label>
                  <input type="text" class="form-control" name="admin_email" id="admin_email" value="{{ $settingArr['admin_email'] }}">
                </div>                
                <div class="clearfix"></div>      
                <div class="form-group col-md-6">
                  <label>Facebook</label>
                  <input type="text" class="form-control" name="facebook_fanpage" id="facebook_fanpage" value="{{ $settingArr['facebook_fanpage'] }}">
                </div>
                <div class="form-group col-md-6">
                  <label>Facebook APP ID</label>
                  <input type="text" class="form-control" name="facebook_appid" id="facebook_appid" value="{{ $settingArr['facebook_appid'] }}">
                </div>
                <div class="form-group col-md-6">
                  <label>Google +</label>
                  <input type="text" class="form-control" name="google_fanpage" id="google_fanpage" value="{{ $settingArr['google_fanpage'] }}">
                </div>
                <div class="form-group col-md-6">
                  <label>Twitter</label>
                  <input type="text" class="form-control" name="twitter_fanpage" id="twitter_fanpage" value="{{ $settingArr['twitter_fanpage'] }}">
                </div>                
                <div class="form-group col-md-12">
                  <label>Thông tin footer</label>
                  <textarea class="form-control" rows="3" name="thong_tin_footer" id="thong_tin_footer">{{ $settingArr['thong_tin_footer'] }}</textarea>
                </div>                       
                <div class="form-group col-md-12">
                  <label>Code google analystic </label>
                  <textarea name="google_analystic" id="google_analystic" rows="10" class="form-control">{{ $settingArr['google_analystic'] }}</textarea>
                </div>   
                <div class="clearfix"></div>
                <div class="form-group col-md-12" style="margin-top:10px;margin-bottom:10px">  
                  <label class="col-md-4 row">Logo ( 210 x 95 px )</label>    
                  <div class="col-md-8 div-upload">
                    <img class="show_thumbnail logo" src="{{ $settingArr['logo'] ? Helper::showImage($settingArr['logo']) : URL::asset('public/admin/dist/img/img.png') }}" class="img-logo" width="150" >
                    
                    <input type="file" data-value="logo" class="click-choose-file" style="display:none" />
                 
                    <button class="btn btn-default btn-sm btnUpload" data-value="logo"  data-choose="file-logo" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                  </div>
                  <div style="clear:both"></div>
                </div>                
                <div style="clear:both"></div> 
                <div class="form-group col-md-12" style="margin-top:10px;margin-bottom:10px">  
                  <label class="col-md-4 row">Banner ( og:image ) </label>    
                  <div class="col-md-8 div-upload">
                    <img class="show_thumbnail banner" src="{{ $settingArr['banner'] ? Helper::showImage($settingArr['banner']) : URL::asset('public/admin/dist/img/img.png') }}" class="img-banner" width="200">
                    
                    <input type="file" data-value="banner" class="click-choose-file" style="display:none" />
                 
                    <button class="btn btn-default btn-sm btnUpload" data-value="banner" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                  </div>
                  <div style="clear:both"></div>
                </div>
                <div style="clear:both"></div>            
               
               
            </div>                        
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm">Lưu</button>         
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-5">        
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Thông tin SEO</h3>
          </div>
          <!-- /.box-header -->
            <div class="box-body">
              <div class="form-group">
                <label>Meta title <span class="red-star">*</span></label>
                <input type="text" class="form-control" name="site_title" id="site_title" value="{{ $settingArr['site_title'] }}">
              </div>
              <!-- textarea -->
              <div class="form-group">
                <label>Meta desciption <span class="red-star">*</span></label>
                <textarea class="form-control" rows="4" name="site_description" id="site_description">{{ $settingArr['site_description'] }}</textarea>
              </div>  

              <div class="form-group">
                <label>Meta keywords <span class="red-star">*</span></label>
                <textarea class="form-control" rows="4" name="site_keywords" id="site_keywords">{{ $settingArr['site_keywords'] }}</textarea>
              </div>  
              <div class="form-group">
                <label>Custom text</label>
                <textarea class="form-control" rows="4" name="custom_text" id="custom_text">{{ $settingArr['custom_text'] }}</textarea>
              </div>
            
        </div>
        <!-- /.box -->     

      </div>
      
      <!--/.col (left) -->      
    </div>
<input type="hidden" name="logo" id="logo" value="{{ $settingArr['logo'] }}"/> 
<input type="hidden" name="banner" id="banner" value="{{ $settingArr['banner'] }}"/>   


    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<input type="hidden" id="route_upload_tmp_image" value="{{ route('image.tmp-upload') }}">
@stop
@section('js')
<script type="text/javascript">
var h = screen.height;
var w = screen.width;
var left = (screen.width/2)-((w-300)/2);
var top = (screen.height/2)-((h-100)/2);
function openKCFinder_singleFile(obj_str) {
      window.KCFinder = {};
      window.KCFinder.callBack = function(url) {
         $('#' + obj_str).val(url);
         $('.show_thumbnail.' + obj_str).attr('src', $('#app_url').val() + url);
          window.KCFinder = null;
      };
      window.open('{{ URL::asset("public/admin/dist/js/kcfinder/browse.php?type=images") }}', 'kcfinder_single','scrollbars=1,menubar=no,width='+ (w-300) +',height=' + (h-300) +',top=' + top+',left=' + left);
  }
    $(document).ready(function(){
      $('#btnSetDefaultColor').click(function(){
          if(confirm('Bạn chắc chắn chọn màu mặc định?')){
            $('#mau_chu_dao').val($('#default_mau_chu_dao').val());
            $('#hover_parent').val($('#default_hover_parent').val());
            $('#menu_border').val($('#default_menu_border').val());
          }
      });
      var editor = CKEDITOR.replace( 'thong_tin_footer',{
          language : 'vi',       
          height : 200,
          toolbarGroups : [            
            { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },          
            { name: 'links', groups: [ 'links' ] },           
            '/',            
          ]
      });
      
      $('.btnUpload').click(function(){
        openKCFinder_singleFile($(this).data('value'));
        //$(this).parents('.div-upload').find('.click-choose-file').click();
      });
      
      var files = "";
      $('.click-choose-file').change(function(e){
         var obj = $(this);
         var valueObj = obj.data('value');
         files = e.target.files;
         
         if(files != ''){
           var dataForm = new FormData();        
          $.each(files, function(key, value) {
             dataForm.append('file', value);
          });   
          
          dataForm.append('date_dir', 0);
          dataForm.append('folder', 'tmp');

          $.ajax({
            url: $('#route_upload_tmp_image').val(),
            type: "POST",
            async: false,      
            data: dataForm,
            processData: false,
            contentType: false,
            success: function (response) {
              if(response.image_path){
                obj.parents('.div-upload').find('img.show_thumbnail').attr('src', $('#upload_url').val() + response.image_path);
                $( '#' + valueObj ).val( response.image_path );
                $( '#' + valueObj + '_name' ).val( response.image_name );
              }             
            }
          });
        }
      });
      

    });
    
</script>
@stop
