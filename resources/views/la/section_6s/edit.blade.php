@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/section_6s') }}">Section 6</a> :
@endsection
@section("contentheader_description", $section_6->$view_col)
@section("section", "Section 6s")
@section("section_url", url(config('laraadmin.adminRoute') . '/section_6s'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Section 6s Edit : ".$section_6->$view_col)

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
				{!! Form::model($section_6, ['route' => [config('laraadmin.adminRoute') . '.section_6s.update', $section_6->id ], 'method'=>'PUT', 'id' => 'section_6-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'contact_title')
					@la_input($module, 'contact_number')
					@la_input($module, 'contact_text')
					@la_input($module, 'contact_image')
					@la_input($module, 'is_contact')
					@la_input($module, 'title')
					@la_input($module, 'text')
					@la_input($module, 'sub_title')
					@la_input($module, 'is_title')
					@la_input($module, 'room_name')
					@la_input($module, 'meter')
					@la_input($module, 'image')
					@la_input($module, 'landing_id')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/section_6s') }}">Cancel</a></button>
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
	$("#section_6-edit-form").validate({
		
	});
});
</script>
@endpush
