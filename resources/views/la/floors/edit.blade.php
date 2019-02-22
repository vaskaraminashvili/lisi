@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/floors') }}">Floor</a> :
@endsection
@section("contentheader_description", $floor->$view_col)
@section("section", "Floors")
@section("section_url", url(config('laraadmin.adminRoute') . '/floors'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Floors Edit : ".$floor->$view_col)

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
				{!! Form::model($floor, ['route' => [config('laraadmin.adminRoute') . '.floors.update', $floor->id ], 'method'=>'PUT', 'id' => 'floor-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ka')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'block_id')
					@la_input($module, 'apartments')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/floors') }}">Cancel</a></button>
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
	$("#floor-edit-form").validate({
		
	});
});
</script>
@endpush
