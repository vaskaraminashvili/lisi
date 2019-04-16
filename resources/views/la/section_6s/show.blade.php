@extends('la.layouts.app')

@section('htmlheader_title')
	Section 6 View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	

	<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/section_6s') }}" data-toggle="tooltip" data-placement="right" title="Back to Section 6s"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info"><i class="fa fa-bars"></i> General Info</a></li>
		
	</ul>

	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active fade in" id="tab-info">
			<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading">
						<h4>General Info</h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'title')
						@la_display($module, 'text')
						@la_display($module, 'sub_title')
						@la_display($module, 'image')
						@la_display($module, 'room_name_1')
						@la_display($module, 'meter_1')
						@la_display($module, 'room_name_2')
						@la_display($module, 'meter_2')
						@la_display($module, 'room_name_3')
						@la_display($module, 'meter_3')
						@la_display($module, 'room_name_4')
						@la_display($module, 'meter_4')
						@la_display($module, 'room_name_5')
						@la_display($module, 'meter_5')
						@la_display($module, 'room_name_6')
						@la_display($module, 'meter_6')
						@la_display($module, 'contact_title')
						@la_display($module, 'contact_number')
						@la_display($module, 'contact_text')
						@la_display($module, 'contact_image')
						@la_display($module, 'is_contact')
						@la_display($module, 'landing_id')
						@la_display($module, 'active')
					</div>
				</div>
			</div>
		</div>
		
		
	</div>
	</div>
	</div>
</div>
@endsection
