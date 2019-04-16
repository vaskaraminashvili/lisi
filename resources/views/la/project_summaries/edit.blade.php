@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/project_summaries') }}">Project summary</a> :
@endsection
@section("contentheader_description", $project_summary->$view_col)
@section("section", "Project summaries")
@section("section_url", url(config('laraadmin.adminRoute') . '/project_summaries'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Project summaries Edit : ".$project_summary->$view_col)

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
				{!! Form::model($project_summary, ['route' => [config('laraadmin.adminRoute') . '.project_summaries.update', $project_summary->id ], 'method'=>'PUT', 'id' => 'project_summary-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ka')
					@la_input($module, 'text_ka')
					@la_input($module, 'sub_text')
					@la_input($module, 'prefix')
					@la_input($module, 'number')
					@la_input($module, 'sufix')
					@la_input($module, 'landing_id')
					@la_input($module, 'is_title')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/project_summaries') }}">Cancel</a></button>
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
	$("#project_summary-edit-form").validate({
		
	});
});
</script>
@endpush
