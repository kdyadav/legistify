@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Meeting With</th>
                        <th>Timing</th>
                        <th>status</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($meetings as $meeting)
                    <tr>
                        <td>{{$meeting->user->name}}</td>
                        <td>{{$meeting->meeting_time}}</td>
                        <td>
                            {!! Form::model($meeting, array( 'route' => array('meeting.update',$meeting->id), 'method'=>'put' )) !!}
                            <div class="form-group col-md-6">
                                <select name="status" class="form-control" onchange="this.form.submit()">
                                <option value="NULL" {{$meeting->status or "Selected"}}>Pending</option>
                                <option value="1" {{$meeting->status===1?"Selected":""}}>Accepted</option>
                                <option value="0" {{$meeting->status===0?"Selected":""}}>Rejected</option>
                                </select>   
                            </div>
                                {!! Form::token() !!}
                            {!! Form::close() !!} 
                        </td>
                    </tr>
                @endforeach    
                </tbody>
            </table>
            
                   
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>
                <div class="panel-body">
                    Laywer dashboard
                </div>
                {!! Form::model($lawyer, array( 'route' => array('lawyer.update',$lawyer->id), 'method'=>'put' )) !!}
                <div class="form-group col-md-10">
                    <select name="status" class="form-control" onchange="this.form.submit()">
                        <option value="1" {{$lawyer->status==1?"Selected":""}}>Active</option>
                        <option value="0" {{$lawyer->status==0?"Selected":""}}>Inactive</option>
                    </select>
                </div>
                    {!! Form::token() !!}
                {!! Form::close() !!}
                <br><br>   
            </div>
        </div>
    </div>
</div>
@endsection
