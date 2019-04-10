@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/section_7s') }}">Section 7</a> :
@endsection
@section("contentheader_description", $section_7->$view_col)
@section("section", "Section 7s")
@section("section_url", url(config('laraadmin.adminRoute') . '/section_7s'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Section 7s Edit : ".$section_7->$view_col)

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
				{!! Form::model($section_7, ['route' => [config('laraadmin.adminRoute') . '.section_7s.update', $section_7->id ], 'method'=>'PUT', 'id' => 'section_7-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'is_title')
					@la_input($module, 'building_title')
					@la_input($module, 'building_image')
					@la_input($module, 'building_text')
					@la_input($module, 'sold_out')
					@la_input($module, 'sold_percent')
					@la_input($module, 'sale_status')
					@la_input($module, 'landing_id')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/section_7s') }}">Cancel</a></button>
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
	$("#section_7-edit-form").validate({
		
	});
});
</script>
@endpush
