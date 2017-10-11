/*
 * Author: Abdullah A Almsaeed
 * Date: 4 Jan 2014
 * Description:
 *      This is a demo file used only for the main dashboard (index.html)
 **/
var h = screen.height;
var w = screen.width;
var left = (screen.width/2)-((w-300)/2);
var top = (screen.height/2)-((h-100)/2);

function singleUpload(obj) {
    window.KCFinder = {};
    window.KCFinder.callBack = function(url) {
       $('#' + obj.data('set')).val(url);
       $('#' + obj.data('image')).attr('src', $('#app_url').val() + url);
        window.KCFinder = null;
    };
    window.open($('#url_open_kc_finder').val(), 'kcfinder_single','scrollbars=1,menubar=no,width='+ (w-300) +',height=' + (h-300) +',top=' + top+',left=' + left);
}

function callDelete(name, url){  
  swal({
    title: 'Bạn muốn xóa "' + name +'"?',
    text: "Dữ liệu sẽ không thể phục hồi.",
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Yes'
  }).then(function() {
    location.href= url;
  })
  return flag;
}
$(document).ready(function(){

  "use strict";

  $('.btnSingleUpload').click(function(){        
    singleUpload($(this));
  });
  $('#cate_id').change(function(){
    $('#searchForm').submit();
  });
  $('#dataForm #name').change(function(){
       var name = $.trim( $(this).val() );         
        $.ajax({
          url: $('#route_get_slug').val(),
          type: "POST",
          async: false,      
          data: {
            str : name
          },              
          success: function (response) {
            if( response.str ){                  
              $('#dataForm #slug').val( response.str );
            }                
          }
        });         
    });

  $(".select2").select2();

  $('#title').change(function(){
       var name = $.trim( $(this).val() );
       
          $.ajax({
            url: $('#route_get_slug').val(),
            type: "POST",
            async: false,      
            data: {
              str : name
            },              
            success: function (response) {
              if( response.str ){                  
                $('#slug').val( response.str );
              }                
            }
          });
       
    });
  if($('#content').length == 1){
    CKEDITOR.replace( 'content');
  }
  if($('#benefit').length == 1){
    CKEDITOR.replace( 'benefit', {
      height : 200
    });
  }
  if($('#object').length == 1){
    CKEDITOR.replace( 'object', {
      height : 200
    });
  }
  $(document).on('click', '#btnSaveTagAjax', function(){
      $.ajax({
        url : $('#formAjaxTag').attr('action'),
        data: $('#formAjaxTag').serialize(),
        type : "post", 
        success : function(str_id){          
          $('#btnCloseModalTag').click();
          $.ajax({
            url : $('#route-ajax-tag-list').val(),
            data: { 
              type : 1 ,
              tagSelected : $('#tags').val(),
              str_id : str_id
            },
            type : "get", 
            success : function(data){
                $('#tags').html(data);
                $('#tags').select2('refresh');
                
            }
          });
        }
      });
   }); 
  $('#btnAddTag').click(function(){
          $('#tagModal').modal('show');
      });
   $('#contentTag #name').change(function(){
         var name = $.trim( $(this).val() );
         if( name != '' && $('#contentTag #slug').val() == ''){
            $.ajax({
              url: $('#route_get_slug').val(),
              type: "POST",
              async: false,      
              data: {
                str : name
              },              
              success: function (response) {
                if( response.str ){                  
                  $('#contentTag #slug').val( response.str );
                }                
              }
            });
         }
      });
});
var toolbar = [
    { name: 'document', groups: [ 'mode', 'document', 'doctools' ], items: [ 'Source' ] },
    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: ['Image', 'Bold', 'Italic', 'Underline', 'Subscript', 'Superscript', 'NumberedList', 'BulletedList', 'Link', 'Unlink' ] },                             
    { name: 'styles', items: [ 'Format' ] },
    { name: 'tools', items: [ 'Maximize' ] },                      
];