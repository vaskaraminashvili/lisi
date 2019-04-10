@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/section_3s') }}">Section 3</a> :
@endsection
@section("contentheader_description", $section_3->$view_col)
@section("section", "Section 3s")
@section("section_url", url(config('laraadmin.adminRoute') . '/section_3s'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Section 3s Edit : ".$section_3->$view_col)

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
				{!! Form::model($section_3, ['route' => [config('laraadmin.adminRoute') . '.section_3s.update', $section_3->id ], 'method'=>'PUT', 'id' => 'section_3-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'text')
					@la_input($module, 'slide')
					@la_input($module, 'partners')
					@la_input($module, 'landing_id')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/section_3s') }}">Cancel</a></button>
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
	$("#section_3-edit-form").validate({
		
	});
});
</script>
@endpush
