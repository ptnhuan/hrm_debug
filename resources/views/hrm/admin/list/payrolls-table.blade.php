<div class="row margin-bottom-12">
    <div class="col-md-12">
        <a href="{!! URL::route('hrm.addpayroll') !!}" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Add New</a>
    </div>
</div>
@if( ! $payrolls->isEmpty() )
<table class="table table-hover">
    <thead>
        <tr>
            <th>#</th>
            <th>Payroll name</th>
            <th>Operations</th>
        </tr>
    </thead>
    <tbody>
        
        <?php 
            $counter = $data['payrolls_per_page'] * ($data['current_page'] - 1) + 1; 
            $counter = $counter > 1?$counter:1;
        ?>
        
        @foreach($payrolls as $payroll)
        <tr>
            <td style="width:5%">{{ $counter }}</td>
            <td style="width:80%">{!! $payroll->hrm_payroll_title !!}</td>
            <td style="width:10%">
            @if(! $payroll->protected)
                <a href="{!! URL::route('hrm.editpayroll', ['id' => $payroll->hrm_payroll_id]) !!}"><i class="fa fa-edit fa-2x"></i></a>
                <a href="{!! URL::route('hrm.deletepayroll',['id' => $payroll->hrm_payroll_id, '_token' => csrf_token()]) !!}" class="margin-left-5 delete"><i class="fa fa-trash-o fa-2x"></i></a>
                <span class="clearfix"></span>
            @else
                <i class="fa fa-times fa-2x light-blue"></i>
                <i class="fa fa-times fa-2x margin-left-12 light-blue"></i>
            @endif
            </td>
        </tr>
        <?php $counter++; ?>
        @endforeach
    </tbody>
</table>
@else
<span class="text-warning"><h5>No results found.</h5></span>
@endif
<div class="paginator">
    {!! $payrolls->appends($request->except(['page']) )->render() !!}
</div>