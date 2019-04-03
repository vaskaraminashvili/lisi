@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/landing_socials') }}">Landing social</a> :
@endsection
@section("contentheader_description", $landing_social->$view_col)
@section("section", "Landing socials")
@section("section_url", url(config('laraadmin.adminRoute') . '/landing_socials'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Landing socials Edit : ".$landing_social->$view_col)

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
				{!! Form::model($landing_social, ['route' => [config('laraadmin.adminRoute') . '.landing_socials.update', $landing_social->id ], 'method'=>'PUT', 'id' => 'landing_social-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'facebook')
					@la_input($module, 'twitter')
					@la_input($module, 'instagram')
					@la_input($module, 'youtube')
					@la_input($module, 'email')
					@la_input($module, 'landing_id')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/landing_socials') }}">Cancel</a></button>
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
	$("#landing_social-edit-form").validate({
		
	});
});
</script>
@endpush
