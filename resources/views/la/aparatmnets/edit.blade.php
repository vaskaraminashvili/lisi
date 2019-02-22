@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/aparatmnets') }}">Aparatmnet</a> :
@endsection
@section("contentheader_description", $aparatmnet->$view_col)
@section("section", "Aparatmnets")
@section("section_url", url(config('laraadmin.adminRoute') . '/aparatmnets'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Aparatmnets Edit : ".$aparatmnet->$view_col)

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
				{!! Form::model($aparatmnet, ['route' => [config('laraadmin.adminRoute') . '.aparatmnets.update', $aparatmnet->id ], 'method'=>'PUT', 'id' => 'aparatmnet-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ka')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'space')
					@la_input($module, 'floor_id')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/aparatmnets') }}">Cancel</a></button>
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
	$("#aparatmnet-edit-form").validate({
		
	});
});
</script>
@endpush
