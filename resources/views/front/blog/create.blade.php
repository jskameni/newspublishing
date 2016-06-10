@extends('front.template')

@section('head')

  {!! HTML::style('ckeditor/plugins/codesnippet/lib/highlight/styles/monokai.css') !!}

@stop

@section('main')

	<div class="row">

        <div class="col-lg-12">
            {!! link_to('mynews/create', trans('front/blog.add'), ['class' => 'btn btn-default btn-lg pull-right']) !!}
        </div>

    </div>

    <div class="row">
			<div class="box">
				@if(session()->has('error'))
					<div class="alert alert-danger">{!! session('error') !!}</div>
				@endif

				{!! Form::open(['url' => 'mynews/create', 'method' => 'post', 'role' => 'form', 'files' => true]) !!}	
					 <div class="form-group">
						{!! Form::control('text', 12, 'title', $errors, 'Title :')  !!}
					  </div>
					  <div class="form-group">
						{!! Form::file('image', ['class' => 'form-control']) !!}
					  </div>
					  <div class="form-group">
						{!! Form::control('textarea', 12, 'content', $errors, trans('front/blog.comment')) !!}
					  </div>
					  <button type="submit" class="btn btn-default">Submit</button>
				{!! Form::close() !!}
			
		    </div>

    </div>

@stop

@section('scripts')

	{!! HTML::script('ckeditor/plugins/codesnippet/lib/highlight/highlight.pack.js') !!}

	@if(session('statut') != 'visitor')
		{!! HTML::script('ckeditor/ckeditor.js') !!}
	@endif

@stop

