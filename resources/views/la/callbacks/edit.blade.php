@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/callbacks') }}">Callback</a> :
@endsection
@section("contentheader_description", $callback->$view_col)
@section("section", "Callbacks")
@section("section_url", url(config('laraadmin.adminRoute') . '/callbacks'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Callbacks Edit : ".$callback->$view_col)

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
				{!! Form::model($callback, ['route' => [config('laraadmin.adminRoute') . '.callbacks.update', $callback->id ], 'method'=>'PUT', 'id' => 'callback-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'firstname')
					@la_input($module, 'phone')
					@la_input($module, 'project')
					@la_input($module, 'email')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/callbacks') }}">Cancel</a></button>
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
	$("#callback-edit-form").validate({
		
	});
});
</script>
@endpush
