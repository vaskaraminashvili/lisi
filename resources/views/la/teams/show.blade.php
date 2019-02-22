@extends('la.layouts.app')

@section('htmlheader_title')
	Team View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	

	<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/teams') }}" data-toggle="tooltip" data-placement="right" title="Back to Teams"><i class="fa fa-chevron-left"></i></a></li>
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
						@la_display($module, 'fullname_ka')
						@la_display($module, 'full_name en')
						@la_display($module, 'Full name ru')
						@la_display($module, 'image')
						@la_display($module, 'position_ka')
						@la_display($module, 'position_en')
						@la_display($module, 'position_ru')
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
