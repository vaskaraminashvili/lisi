@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/project_infos') }}">Project info</a> :
@endsection
@section("contentheader_description", $project_info->$view_col)
@section("section", "Project infos")
@section("section_url", url(config('laraadmin.adminRoute') . '/project_infos'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Project infos Edit : ".$project_info->$view_col)

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
				{!! Form::model($project_info, ['route' => [config('laraadmin.adminRoute') . '.project_infos.update', $project_info->id ], 'method'=>'PUT', 'id' => 'project_info-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ka')
					@la_input($module, 'text_ka')
					@la_input($module, 'icon')
					@la_input($module, 'landing_id')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/project_infos') }}">Cancel</a></button>
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
	$("#project_info-edit-form").validate({
		
	});
});
</script>
@endpush
