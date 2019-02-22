@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/catalogs') }}">Catalog</a> :
@endsection
@section("contentheader_description", $catalog->$view_col)
@section("section", "Catalogs")
@section("section_url", url(config('laraadmin.adminRoute') . '/catalogs'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Catalogs Edit : ".$catalog->$view_col)

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
				{!! Form::model($catalog, ['route' => [config('laraadmin.adminRoute') . '.catalogs.update', $catalog->id ], 'method'=>'PUT', 'id' => 'catalog-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'text_ka')
					@la_input($module, 'text_en')
					@la_input($module, 'text_ru')
					@la_input($module, 'image')
					@la_input($module, 'active')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/catalogs') }}">Cancel</a></button>
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
	$("#catalog-edit-form").validate({
		
	});
});
</script>
@endpush
