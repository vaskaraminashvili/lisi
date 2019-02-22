@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/green_zones') }}">Green zone</a> :
@endsection
@section("contentheader_description", $green_zone->$view_col)
@section("section", "Green zones")
@section("section_url", url(config('laraadmin.adminRoute') . '/green_zones'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Green zones Edit : ".$green_zone->$view_col)

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
				{!! Form::model($green_zone, ['route' => [config('laraadmin.adminRoute') . '.green_zones.update', $green_zone->id ], 'method'=>'PUT', 'id' => 'green_zone-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ka')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'image')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/green_zones') }}">Cancel</a></button>
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
	$("#green_zone-edit-form").validate({
		
	});
});
</script>
@endpush
