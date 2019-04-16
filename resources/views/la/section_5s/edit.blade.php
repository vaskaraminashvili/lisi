@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/section_5s') }}">Section 5</a> :
@endsection
@section("contentheader_description", $section_5->$view_col)
@section("section", "Section 5s")
@section("section_url", url(config('laraadmin.adminRoute') . '/section_5s'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Section 5s Edit : ".$section_5->$view_col)

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
				{!! Form::model($section_5, ['route' => [config('laraadmin.adminRoute') . '.section_5s.update', $section_5->id ], 'method'=>'PUT', 'id' => 'section_5-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'text')
					@la_input($module, 'statistic_number_1')
					@la_input($module, 'statistic_text_1')
					@la_input($module, 'statistic_number_2')
					@la_input($module, 'statistic_text_2')
					@la_input($module, 'statistic_number_3')
					@la_input($module, 'statistic_text_3')
					@la_input($module, 'statistic_number_4')
					@la_input($module, 'statistic_text_4')
					@la_input($module, 'statistic_number_5')
					@la_input($module, 'statistic_text_5')
					@la_input($module, 'statistic_number_6')
					@la_input($module, 'statistic_text_6')
					@la_input($module, 'landing_id')
					@la_input($module, 'background_image')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/section_5s') }}">Cancel</a></button>
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
	$("#section_5-edit-form").validate({
		
	});
});
</script>
@endpush
