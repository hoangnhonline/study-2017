@extends('backend.layout')
@section('content')
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Livestream
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="{{ route( 'livestream.index' ) }}">Livestream</a></li>
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
      <a href="{{ route('livestream.create') }}" class="btn btn-info btn-sm" style="margin-bottom:5px">Tạo mới</a>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Bộ lọc</h3>
        </div>
        <div class="panel-body">
          <form class="form-inline" role="form" method="GET" action="{{ route('livestream.index') }}" id="searchForm">           
            <div class="form-group">              
              <select class="form-control" name="status" id="status">                  
                <option value="">Trạng thái</option>
                <option value="1" {{ $status == 1 ? "selected" : "" }}>Sắp diễn ra</option>
                <option value="2" {{ $status == 2 ? "selected" : "" }}>Đang diễn ra</option> 
                <option value="3" {{ $status == 3 ? "selected" : "" }}>Đã kết thúc</option>                  
              </select>
            </div>                
            <div class="form-group">              
              <input type="text" class="form-control" name="name" placeholder="Từ khóa cần tìm..." value="{{ $name }}">
            </div>
            <button type="submit" class="btn btn-default btn-sm" style="margin-top:-5px">Lọc</button>
          </form>         
        </div>
      </div>
      <div class="box">

        <div class="box-header with-border">
          <h3 class="box-title">Danh sách ( <span class="value">{{ $items->total() }} livestream )</span></h3>
        </div>
        
        <!-- /.box-header -->
        <div class="box-body">
          <div style="text-align:center">
            {{ $items->appends( [ 'name' => $name] )->links() }}
          </div>  
          <table class="table table-bordered" id="table-list-data">
            <tr>
              <th style="width: 1%">#</th>                            
              <th>Tên livestream</th>              
              <th width="150px">Ngày giờ</th> 
              <th width="150px">Trạng thái</th> 
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
                  <a style="font-size:17px" href="{{ route( 'livestream.edit', [ 'id' => $item->id ]) }}">{{ $item->name }}</a>
                     
                  <p>{{ $item->description }}</p>                  
                  <i>{{ $item->teacher->name }}</i>
                  
                </td>
                <td>
                  @if($item->date_start)
                    {{ date('d/m/Y H:i', strtotime($item->date_start)) }}
                  @else
                    Chưa xác định
                  @endif
                </td>
                <td>                  
                  @if( $item->status == 1 )
                    <label class="label label-default" style="font-size:13px">Sắp diễn ra</label>
                  @elseif( $item->status == 2 )
                    <label class="label label-success" style="font-size:13px">Đang diễn ra</label>
                  @else
                    <label class="label label-danger" style="font-size:13px">Đã kết thúc</label>
                  @endif
                </td>
                <td style="white-space:nowrap">                                  
                  <a href="{{ route( 'livestream.edit', [ 'id' => $item->id ]) }}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></a>                 
                  
                  <a onclick="return callDelete('{{ $item->name }}','{{ route( 'livestream.destroy', [ 'id' => $item->id ]) }}');" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>
                  
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
    $('#status').change(function(){
      $(this).parents('form').submit();
    });
  });
</script>
@stop