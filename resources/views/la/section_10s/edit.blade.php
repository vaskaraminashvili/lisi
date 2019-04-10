@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/section_10s') }}">Section 10</a> :
@endsection
@section("contentheader_description", $section_10->$view_col)
@section("section", "Section 10s")
@section("section_url", url(config('laraadmin.adminRoute') . '/section_10s'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Section 10s Edit : ".$section_10->$view_col)

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
				{!! Form::model($section_10, ['route' => [config('laraadmin.adminRoute') . '.section_10s.update', $section_10->id ], 'method'=>'PUT', 'id' => 'section_10-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'text')
					@la_input($module, 'is_title')
					@la_input($module, 'is_left')
					@la_input($module, 'is_right')
					@la_input($module, 'image')
					@la_input($module, 'statistic_prefix')
					@la_input($module, 'statistic_number')
					@la_input($module, 'statistic_sufix')
					@la_input($module, 'statistic_text')
					@la_input($module, 'landing_id')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/section_10s') }}">Cancel</a></button>
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
	$("#section_10-edit-form").validate({
		
	});
});
</script>
@endpush
