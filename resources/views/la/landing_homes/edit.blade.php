@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/landing_homes') }}">Landing Home</a> :
@endsection
@section("contentheader_description", $landing_home->$view_col)
@section("section", "Landing Homes")
@section("section_url", url(config('laraadmin.adminRoute') . '/landing_homes'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Landing Homes Edit : ".$landing_home->$view_col)

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
				{!! Form::model($landing_home, ['route' => [config('laraadmin.adminRoute') . '.landing_homes.update', $landing_home->id ], 'method'=>'PUT', 'id' => 'landing_home-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ka')
					@la_input($module, 'text_ka')
					@la_input($module, 'landing_id')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/landing_homes') }}">Cancel</a></button>
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
	$("#landing_home-edit-form").validate({
		
	});
});
</script>
@endpush
