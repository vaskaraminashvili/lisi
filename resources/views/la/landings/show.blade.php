@extends('la.layouts.app')

@section('htmlheader_title')
	Landing View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	

	<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/landings') }}" data-toggle="tooltip" data-placement="right" title="Back to Landings"><i class="fa fa-chevron-left"></i></a></li>
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
						@la_display($module, 'landing_home')
						@la_display($module, 'season')
						@la_display($module, 'about_project')
						@la_display($module, 'project_info')
						@la_display($module, 'project_summary')
						@la_display($module, 'landing_apartment')
						@la_display($module, 'footer')
					</div>
				</div>
			</div>
		</div>
		
		
	</div>
	</div>
	</div>
</div>
@endsection
