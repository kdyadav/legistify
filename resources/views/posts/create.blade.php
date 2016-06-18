@extends('layouts.master')

@section('content')
	<h2>Create Post</h2>
	<div class="row"></div>
	{!! Form::open(array( 'route' => 'posts.store')) !!}
		
		<div class="form-group">
			{!! Form::label('title') !!}
			{!! Form::text( 'title', null, array( 'class'=>'form-control' ) ) !!}
		</div>

		<div class="form-group">
			{!! Form::label('Body') !!}
			{!! Form::textarea('body',null, array('class'=>'form-control','size'=>'50x3')) !!}
		</div>
			{!! Form::token() !!}
			{!! Form::submit(null,array('class'=>'btn btn-default') ) !!}
	
	{!! Form::close() !!}	
@endsection