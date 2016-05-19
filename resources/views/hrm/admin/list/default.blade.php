@extends('laravel-authentication-acl::admin.layouts.base-2cols')

@section('title')
    Admin area: Payroll list
@stop

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="col-md-8">
            {{-- print messages --}}
            <?php $message = Session::get('message'); ?>
            @if( isset($message) )
                <div class="alert alert-success">{!! $message !!}</div>
            @endif
            {{-- print errors --}}
            @if($errors && ! $errors->isEmpty() )
                @foreach($errors->all() as $error)
                    <div class="alert alert-danger">{!! $error !!}</div>
                @endforeach
            @endif
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title bariol-thin"><i class="fa fa-group"></i> {!! $request->all() ? 'Search results:' : 'Groups' !!}</h3>
                </div>
                <div class="panel-body">
                    @include('hrm.admin.list.payrolls-table')
               </div>
           </div>
        </div>
        <div class="col-md-4">
                @include('hrm.admin.list.search')
        </div>
    </div>
</div>
@stop

@section('footer_scripts')
    <script>
        $(".delete").click(function(){
            return confirm("Are you sure to delete this item?");
        });
    </script>
@stop