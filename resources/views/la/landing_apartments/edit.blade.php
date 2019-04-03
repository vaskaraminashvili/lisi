@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/landing_apartments') }}">Landing apartment</a> :
@endsection
@section("contentheader_description", $landing_apartment->$view_col)
@section("section", "Landing apartments")
@section("section_url", url(config('laraadmin.adminRoute') . '/landing_apartments'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Landing apartments Edit : ".$landing_apartment->$view_col)

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
				{!! Form::model($landing_apartment, ['route' => [config('laraadmin.adminRoute') . '.landing_apartments.update', $landing_apartment->id ], 'method'=>'PUT', 'id' => 'landing_apartment-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ka')
					@la_input($module, 'text_ka')
					@la_input($module, 'image')
					@la_input($module, 'landing_id')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/landing_apartments') }}">Cancel</a></button>
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
	$("#landing_apartment-edit-form").validate({
		
	});
});
</script>
@endpush
