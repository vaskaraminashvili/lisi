@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/tags') }}">Tag</a> :
@endsection
@section("contentheader_description", $tag->$view_col)
@section("section", "Tags")
@section("section_url", url(config('laraadmin.adminRoute') . '/tags'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Tags Edit : ".$tag->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($tag, ['route' => [config('laraadmin.adminRoute') . '.tags.update', $tag->id ], 'method'=>'PUT', 'id' => 'tag-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/tags') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#tag-edit-form").validate({
		
	});
});
</script>
@endpush
