@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>
                <div class="panel-body">
                    {!! Form::open(array( 'route' => 'meeting.store')) !!}
                        
                        <div class="form-group">
                            <select name="lawyer_id" class="form-control">
                               @foreach($lawyer as $lawyer)
                                <option value="{{$lawyer->id}}">{{$lawyer->name}}</option>
                               @endforeach
                            </select>        
                        </div>
                        <div class="form-group">
                            <input type="date" name="meeting_time"  class="form-control" placeholder="YYYY-MM-DD HH:MM:SS">
                        </div>
                        <input class="hidden" name="user_id" value="{{ $client->id }}">
                        <!-- {!! Form::token() !!} -->
                        {!! Form::submit(null,array('class'=>'btn btn-default') ) !!}
                    
                    {!! Form::close() !!}   
                </div>
                <div class="panel-footer">{{$message or ""}}</div>
            </div>
        </div>
    </div>
</div>
@endsection
