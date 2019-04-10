@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/section_8s') }}">Section 8</a> :
@endsection
@section("contentheader_description", $section_8->$view_col)
@section("section", "Section 8s")
@section("section_url", url(config('laraadmin.adminRoute') . '/section_8s'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Section 8s Edit : ".$section_8->$view_col)

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
				{!! Form::model($section_8, ['route' => [config('laraadmin.adminRoute') . '.section_8s.update', $section_8->id ], 'method'=>'PUT', 'id' => 'section_8-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'text')
					@la_input($module, 'image')
					@la_input($module, 'landing_id')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/section_8s') }}">Cancel</a></button>
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
	$("#section_8-edit-form").validate({
		
	});
});
</script>
@endpush
