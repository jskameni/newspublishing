@extends('front.template')

@section('main')
	<div class="row">
		<div class="box">
			<div class="col-lg-12">
				<hr>
				<h2 class="text-center">{{ $post->title }}
				<br>
				<small>{{ $post->user->email }} {{ trans('front/blog.on') }} {!! $post->created_at . ($post->created_at != $post->updated_at ? trans('front/blog.updated') . $post->updated_at : '') !!}</small>
				</h2>
				<hr>
				{!! $post->summary !!}<br>
				{!! $post->content !!}
			</div>
			<div class="col-lg-12 text-center">
			{!! link_to('outputpdf/'.$post->id, 'download pdf', ['class' => 'btn btn-default btn-lg']) !!}
			</div>
		</div>
	</div>

</div>

@stop
