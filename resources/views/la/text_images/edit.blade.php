@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/text_images') }}">Text Image</a> :
@endsection
@section("contentheader_description", $text_image->$view_col)
@section("section", "Text Images")
@section("section_url", url(config('laraadmin.adminRoute') . '/text_images'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Text Images Edit : ".$text_image->$view_col)

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
				{!! Form::model($text_image, ['route' => [config('laraadmin.adminRoute') . '.text_images.update', $text_image->id ], 'method'=>'PUT', 'id' => 'text_image-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ka')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'text_ka')
					@la_input($module, 'text_en')
					@la_input($module, 'text_ru')
					@la_input($module, 'image')
					@la_input($module, 'active')
					@la_input($module, 'tag_id')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/text_images') }}">Cancel</a></button>
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
	$("#text_image-edit-form").validate({
		
	});
});
</script>
@endpush
