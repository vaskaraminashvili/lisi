@extends("la.layouts.app")

@section("contentheader_title", "Section 6s")
@section("contentheader_description", "Section 6s listing")
@section("section", "Section 6s")
@section("sub_section", "Listing")
@section("htmlheader_title", "Section 6s Listing")

@section("headerElems")
@la_access("Section_6s", "create")
	<button class="btn btn-success btn-sm pull-right" data-toggle="modal" data-target="#AddModal">Add Section 6</button>
@endla_access
@endsection

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

<div class="box box-success">
	<!--<div class="box-header"></div>-->
	<div class="box-body">
		<table id="example1" class="table table-bordered">
		<thead>
		<tr class="success">
			@foreach( $listing_cols as $col )
			<th>{{ $module->fields[$col]['label'] or ucfirst($col) }}</th>
			@endforeach
			@if($show_actions)
			<th>Actions</th>
			@endif
		</tr>
		</thead>
		<tbody>
			
		</tbody>
		</table>
	</div>
</div>

@la_access("Section_6s", "create")
<div class="modal fade" id="AddModal" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Add Section 6</h4>
			</div>
			{!! Form::open(['action' => 'LA\Section_6sController@store', 'id' => 'section_6-add-form']) !!}
			<div class="modal-body">
				<div class="box-body">
                    @la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'text')
					@la_input($module, 'sub_title')
					@la_input($module, 'image')
					@la_input($module, 'room_name_1')
					@la_input($module, 'meter_1')
					@la_input($module, 'room_name_2')
					@la_input($module, 'meter_2')
					@la_input($module, 'room_name_3')
					@la_input($module, 'meter_3')
					@la_input($module, 'room_name_4')
					@la_input($module, 'meter_4')
					@la_input($module, 'room_name_5')
					@la_input($module, 'meter_5')
					@la_input($module, 'room_name_6')
					@la_input($module, 'meter_6')
					@la_input($module, 'contact_title')
					@la_input($module, 'contact_number')
					@la_input($module, 'contact_text')
					@la_input($module, 'contact_image')
					@la_input($module, 'is_contact')
					@la_input($module, 'landing_id')
					@la_input($module, 'active')
					--}}
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				{!! Form::submit( 'Submit', ['class'=>'btn btn-success']) !!}
			</div>
			{!! Form::close() !!}
		</div>
	</div>
</div>
@endla_access

@endsection

@push('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('la-assets/plugins/datatables/datatables.min.css') }}"/>
@endpush

@push('scripts')
<script src="{{ asset('la-assets/plugins/datatables/datatables.min.js') }}"></script>
<script>
$(function () {
	$("#example1").DataTable({
		processing: true,
        serverSide: true,
        ajax: "{{ url(config('laraadmin.adminRoute') . '/section_6_dt_ajax') }}",
		language: {
			lengthMenu: "_MENU_",
			search: "_INPUT_",
			searchPlaceholder: "Search"
		},
		@if($show_actions)
		columnDefs: [ { orderable: false, targets: [-1] }],
		@endif
	});
	$("#section_6-add-form").validate({
		
	});
});
</script>
@endpush
