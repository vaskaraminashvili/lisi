@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/home_sliders') }}">Home slider</a> :
@endsection
@section("contentheader_description", $home_slider->$view_col)
@section("section", "Home sliders")
@section("section_url", url(config('laraadmin.adminRoute') . '/home_sliders'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Home sliders Edit : ".$home_slider->$view_col)

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
				{!! Form::model($home_slider, ['route' => [config('laraadmin.adminRoute') . '.home_sliders.update', $home_slider->id ], 'method'=>'PUT', 'id' => 'home_slider-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'text_ka')
					@la_input($module, 'text_en')
					@la_input($module, 'text_ru')
					@la_input($module, 'image_id')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/home_sliders') }}">Cancel</a></button>
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
	$("#home_slider-edit-form").validate({
		
	});
});
</script>
@endpush
