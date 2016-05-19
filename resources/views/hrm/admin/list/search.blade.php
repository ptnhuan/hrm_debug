<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title bariol-thin"><i class="fa fa-search"></i> Payroll search</h3>
    </div>
    <div class="panel-body">
        {!! Form::open(['route' => 'hrm.listpayrolls','method' => 'get']) !!}
        <!-- name text field -->
        <div class="form-group">
            {!! Form::label('Payroll title','Payroll title:') !!}
            {!! Form::text('payroll_title', $data['payroll_title'], ['class' => 'form-control', 'placeholder' => 'Title']) !!}
        </div>
        <span class="text-danger">{!! $errors->first('name') !!}</span>
        {!! Form::submit('Search', ["class" => "btn btn-info pull-right"]) !!}
        {!! Form::close() !!}
    </div>
</div>