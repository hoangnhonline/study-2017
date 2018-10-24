@extends('backend.layout')
@section('content')
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Bài học :<span style="color:red"></span>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="{{ route( 'thpt-baihoc.index' ) }}">Bài học</a></li>
    <li class="active">Danh sách</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      @if(Session::has('message'))
      <p class="alert alert-info" >{{ Session::get('message') }}</p>
      @endif
      <a class="btn btn-default btn-sm" href="{{ route('courses-part.index') }}" style="margin-bottom:5px">Quay lại</a>
      <a href="{{ route('thpt-baihoc.create') }}" class="btn btn-info btn-sm" style="margin-bottom:5px">Tạo mới</a>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Bộ lọc</h3>
        </div>
        <div class="panel-body">
          <form class="form-inline" role="form" method="GET" action="{{ route('thpt-baihoc.index') }}" id="searchForms">           
             <div class="form-group">
              <label for="email">Lớp </label>
              <select class="form-control get-child get-child-2" data-col="class_id" name="class_id" id="class_id" data-child="subject_id" data-mod="subjects" data-col2="class_id" data-mod2="group_bai" data-child2="group_id"> 
              <option value="">-- Tất cả --</option>               
                @if( $classList->count() > 0)
                  @foreach( $classList as $value )
                  <option value="{{ $value->id }}" {{ $class_id == $value->id ? "selected" : "" }}>{{ $value->name }}</option>
                  @endforeach
                @endif
              </select>
            </div>     
            <div class="form-group stem">
                  <label for="email">&nbsp;&nbsp;&nbsp;STEM</label>
                  <select class="form-control get-child get-child-2" data-col="class_id" name="stem_class_id" id="stem_class_id" data-child="subject_id"  data-mod="subjects" data-col2="stem_class_id" data-mod2="group_bai" data-child2="group_id">
                    <option value="">-- chọn --</option>
                    @if( $stemClassList->count() > 0)
                      @foreach( $stemClassList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == $stem_class_id ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div> 
            <div class="form-group">
              <label for="email">&nbsp;&nbsp;&nbsp;Môn học</label>                
              <select class="form-control get-child" name="subject_id" id="subject_id" data-col="subject_id" data-mod="group_bai" data-child="group_id" >
                <option value="">--Tất cả--</option>  
                @if( $subjectList->count() > 0)
                      @foreach( $subjectList as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('subject_id', $subject_id) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif                        
            </select>                 
            </div>  
            <div class="form-group">
              <label for="email">&nbsp;&nbsp;&nbsp;Giáo viên</label>
              <select class="form-control get-child" name="teacher_id" id="teacher_id" data-col="teacher_id" data-mod="group_bai" data-child="group_id">
                <option value="">-- Tất cả --</option>
                @if( $teacherList->count() > 0)
                  @foreach( $teacherList as $value )
                  <option value="{{ $value->id }}" {{ $value->id == $teacher_id ? "selected" : "" }}>{{ $value->name }}</option>
                  @endforeach
                @endif
              </select>
            </div>
            <div class="form-group">
                  <label>&nbsp;&nbsp;&nbsp;Nhóm bài học</label>
                  <select class="form-control select2" name="group_id" id="group_id">  
                  <option value="">-- Tất cả --</option>                
                    @if( $groupList->count() > 0)
                      @foreach( $groupList as $value )
                      <option value="{{ $value->id }}" {{ $group_id == $value->id }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>                 
                </div>   
                        
            <div class="form-group">
              <label for="email">&nbsp;&nbsp;&nbsp;Từ khóa :</label>
              <input type="text" class="form-control" name="name" value="{{ $name }}">
            </div>
            <div class="form-group">
                    <div class="checkbox">
                      <label>
                        &nbsp;&nbsp;&nbsp;<input type="checkbox" name="le" id="le" value="1" {{ $le == 1 ? "checked" : "" }}>
                        Bài lẻ
                      </label>
                    </div>               
                  </div>
            <button type="submit" class="btn btn-default btn-sm">Lọc</button>
          </form>         
        </div>
      </div>
      <div class="box">

        <div class="box-header with-border">
          <h3 class="box-title">Danh sách ( <span class="value">{{ $items->total() }} mục lục )</span></h3>
        </div>
        
        <!-- /.box-header -->
        <div class="box-body">
          <div style="text-align:center">
            {{ $items->appends( [ 'name' => $name] )->links() }}
          </div>  
          <table class="table table-bordered" id="table-list-data">
            <tr>
              <th style="width: 1%">#</th>
              <th style="width: 120px">Hình ảnh</th>
              <th>Tên bài học</th>
              <th>Lớp</th>             
              <th>Môn học</th>
              <th>Giáo viên</th>
              <th width="150px">Nhóm bài học</th>
              <th width="1%;white-space:nowrap">Thao tác</th>
            </tr>
            <tbody>
            @if( $items->count() > 0 )
              <?php $i = 0; ?>
              @foreach( $items as $item )
                <?php $i ++; ?>
              <tr id="row-{{ $item->id }}">
                <td><span class="order">{{ $i }}</span></td>      
                <td>
                  @if($item->group_id > 0)
                  <img class="img-thumbnail" src="{{ Helper::showImage($item->group->image_url)}}" width="145">
                  @else
                  <img class="img-thumbnail" src="{{ Helper::showImage($item->image_url)}}" width="145">
                  @endif
                </td> 
                <td>   
                @if($item->score > 0)
                  <label class="label label-success" style="font-size:16px">{{ $item->score }} điểm</label>
                  @elseif($item->is_share == 1)
                  <label class="label label-warning" style="font-size:16px">Share FB</label>
                  @else
                  <label class="label label-default" style="font-size:16px">Free</label>
                  @endif               
                  <a style="font-size:15px" href="{{ route( 'thpt-baihoc.edit', [ 'id' => $item->id ]) }}">{{ $item->name }}</a>
                  @if( $item->is_hot == 1 && !$item->group_id )
                  <label class="label label-danger">HOT</label>
                  @endif  
                </td>
                <td>
                  @if($item->class_id > 0)
                  {{ $item->classthpt->name }}
                  @endif
                </td>
                <td>
                  @if($item->subject_id > 0)
                  {{ $item->subject->name }}
                  @endif
                </td>
                <td>
                  @if($item->teacher_id > 0)
                  {{ $item->teacher->name }}
                  @endif
                </td>
                <td>
                  @if($item->group_id > 0)
                  {{ $item->group->name }}
                  @endif
                </td>
                
                <td style="white-space:nowrap">                                   
                  <a href="{{ route( 'thpt-baihoc.edit', [ 'id' => $item->id ]) }}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></a>                 
                  
                  <a onclick="return callDelete('{{ $item->name }}','{{ route( 'thpt-baihoc.destroy', [ 'id' => $item->id ]) }}');" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>
                  
                </td>
              </tr> 
              @endforeach
            @else
            <tr>
              <td colspan="9">Không có dữ liệu.</td>
            </tr>
            @endif

          </tbody>
          </table>
          <div style="text-align:center">
            {{ $items->appends( ['name' => $name] )->links() }}
          </div>  
        </div>        
      </div>
      <!-- /.box -->     
    </div>
    <!-- /.col -->  
  </div> 
</section>
<!-- /.content -->
</div>
<input type="hidden" id="table_name" value="articles">
@stop
@section('js')
<script type="text/javascript">
  $(document).ready(function(){
    @if($class_id==4)
        $('.stem').show();
    @else
        $('.stem').hide();
    @endif
    $('#class_id').change(function(){
      var vl = $(this).val();
      if(vl < 4){
        $('#stem_class_id').val('');
        $('.stem').hide();
      }else{
        $('.stem').show();
      }      
    });    
  });
</script>
@stop