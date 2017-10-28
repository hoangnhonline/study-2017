<table class="table table-bordered" id="table-list-data">
  <tr>
    <th style="width: 1%">#</th>                            
    <th>Thông tin tài khoản</th> 
    <th class="text-center">Khóa học</th> 
    <th class="text-right" style="width:100px">Điểm</th>
    <th width="10%">Thời gian tạo</th>              
  </tr>
  <tbody>
  @if( $items->count() > 0 )
    <?php $i = 0; ?>
    @foreach( $items as $item )
      <?php $i ++; ?>
    <tr id="row-{{ $item->id }}">
      <td><span class="order">{{ $i }}</span></td>                       
      <td>
        @if($item->type == 1)
        {{ $item->facebook_id }}
        @endif                  
        @if($item->fullname != '')
        {{ $item->fullname }}
        @endif
        @if($item->email != '')
        - {{ $item->email }}
        @endif
        @if($item->phone != '')
        - {{ $item->phone }}
        @endif
      </td>           
      <td class="text-center">
        <a class="btn btn-info">{{ $item->courses->count() }}</a>
      </td>   
      <td class="text-right"><strong>{{ $item->score }}</strong></td>
      <td style="white-space:nowrap">{{ date('d-m-Y H:i', strtotime($item->created_at)) }}</td>
     
    </tr> 
    @endforeach
  @else
  <tr>
    <td colspan="9">Không có dữ liệu.</td>
  </tr>
  @endif

</tbody>
</table>