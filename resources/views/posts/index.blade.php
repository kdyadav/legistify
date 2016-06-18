@extends('layouts.master')

@section('content')
	<h2>Posts List</h2>
	<table class="table table-hover">
		<thead>
			<tr class="success">
				<th>Title</th>
				<th>Action</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		@foreach($posts as $post)	
			<tr>
				<td><a href="{{route('posts.show',$post->id)}}">{{ $post->title }}</a></td>
				<td>{{ link_to_route('posts.edit','Edit', array($post->id), array('class'=>'btn btn-primary') ) }}</td>
				
				<td>	{!! Form::open(array( 'route' => array('posts.destroy',$post->id), 'method'=>'delete' )) !!}
						{!! Form::token() !!}
						{!! Form::submit('Delete',array('class'=>'btn btn-danger') ) !!}
					{!! Form::close() !!}		
				</td>
			</tr>
		@endforeach	
		</tbody>
	</table>
	{!! $posts->links() !!}
@endsection