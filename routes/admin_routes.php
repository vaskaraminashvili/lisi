<?php

/* ================== Homepage ================== */
Route::get('/', 'HomeController@index');
Route::get('/home', 'HomeController@index');
Route::auth();

/* ================== Access Uploaded Files ================== */
Route::get('files/{hash}/{name}', 'LA\UploadsController@get_file');

/*
|--------------------------------------------------------------------------
| Admin Application Routes
|--------------------------------------------------------------------------
*/

$as = "";
if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() >= 5.3) {
	$as = config('laraadmin.adminRoute').'.';

	// Routes for Laravel 5.3
	Route::get('/logout', 'Auth\LoginController@logout');
}

Route::group(['as' => $as, 'middleware' => ['auth', 'permission:ADMIN_PANEL']], function () {

	/* ================== Dashboard ================== */

	Route::get(config('laraadmin.adminRoute'), 'LA\DashboardController@index');
	Route::get(config('laraadmin.adminRoute'). '/dashboard', 'LA\DashboardController@index');

	/* ================== Users ================== */
	Route::resource(config('laraadmin.adminRoute') . '/users', 'LA\UsersController');
	Route::get(config('laraadmin.adminRoute') . '/user_dt_ajax', 'LA\UsersController@dtajax');

	/* ================== Uploads ================== */
	Route::resource(config('laraadmin.adminRoute') . '/uploads', 'LA\UploadsController');
	Route::post(config('laraadmin.adminRoute') . '/upload_files', 'LA\UploadsController@upload_files');
	Route::get(config('laraadmin.adminRoute') . '/uploaded_files', 'LA\UploadsController@uploaded_files');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_caption', 'LA\UploadsController@update_caption');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_filename', 'LA\UploadsController@update_filename');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_public', 'LA\UploadsController@update_public');
	Route::post(config('laraadmin.adminRoute') . '/uploads_delete_file', 'LA\UploadsController@delete_file');

	/* ================== Roles ================== */
	Route::resource(config('laraadmin.adminRoute') . '/roles', 'LA\RolesController');
	Route::get(config('laraadmin.adminRoute') . '/role_dt_ajax', 'LA\RolesController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/save_module_role_permissions/{id}', 'LA\RolesController@save_module_role_permissions');

	/* ================== Permissions ================== */
	Route::resource(config('laraadmin.adminRoute') . '/permissions', 'LA\PermissionsController');
	Route::get(config('laraadmin.adminRoute') . '/permission_dt_ajax', 'LA\PermissionsController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/save_permissions/{id}', 'LA\PermissionsController@save_permissions');

	/* ================== Departments ================== */
	Route::resource(config('laraadmin.adminRoute') . '/departments', 'LA\DepartmentsController');
	Route::get(config('laraadmin.adminRoute') . '/department_dt_ajax', 'LA\DepartmentsController@dtajax');

	/* ================== Employees ================== */
	Route::resource(config('laraadmin.adminRoute') . '/employees', 'LA\EmployeesController');
	Route::get(config('laraadmin.adminRoute') . '/employee_dt_ajax', 'LA\EmployeesController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/change_password/{id}', 'LA\EmployeesController@change_password');

	/* ================== Backups ================== */
	Route::resource(config('laraadmin.adminRoute') . '/backups', 'LA\BackupsController');
	Route::get(config('laraadmin.adminRoute') . '/backup_dt_ajax', 'LA\BackupsController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/create_backup_ajax', 'LA\BackupsController@create_backup_ajax');
	Route::get(config('laraadmin.adminRoute') . '/downloadBackup/{id}', 'LA\BackupsController@downloadBackup');

	/* ================== Tests ================== */
	Route::resource(config('laraadmin.adminRoute') . '/tests', 'LA\TestsController');
	Route::get(config('laraadmin.adminRoute') . '/test_dt_ajax', 'LA\TestsController@dtajax');



	/* ================== Navigations ================== */
	Route::resource(config('laraadmin.adminRoute') . '/navigations', 'LA\NavigationsController');
	Route::get(config('laraadmin.adminRoute') . '/navigation_dt_ajax', 'LA\NavigationsController@dtajax');

	/* ================== Home_sliders ================== */
	Route::resource(config('laraadmin.adminRoute') . '/home_sliders', 'LA\Home_slidersController');
	Route::get(config('laraadmin.adminRoute') . '/home_slider_dt_ajax', 'LA\Home_slidersController@dtajax');

	/* ================== Green_zones ================== */
	Route::resource(config('laraadmin.adminRoute') . '/green_zones', 'LA\Green_zonesController');
	Route::get(config('laraadmin.adminRoute') . '/green_zone_dt_ajax', 'LA\Green_zonesController@dtajax');

	/* ================== Catalogs ================== */
	Route::resource(config('laraadmin.adminRoute') . '/catalogs', 'LA\CatalogsController');
	Route::get(config('laraadmin.adminRoute') . '/catalog_dt_ajax', 'LA\CatalogsController@dtajax');

	/* ================== Company_views ================== */
	Route::resource(config('laraadmin.adminRoute') . '/company_views', 'LA\Company_viewsController');
	Route::get(config('laraadmin.adminRoute') . '/company_view_dt_ajax', 'LA\Company_viewsController@dtajax');


	/* ================== Teams ================== */
	Route::resource(config('laraadmin.adminRoute') . '/teams', 'LA\TeamsController');
	Route::get(config('laraadmin.adminRoute') . '/team_dt_ajax', 'LA\TeamsController@dtajax');

	/* ================== Projects ================== */
	Route::resource(config('laraadmin.adminRoute') . '/projects', 'LA\ProjectsController');
	Route::get(config('laraadmin.adminRoute') . '/project_dt_ajax', 'LA\ProjectsController@dtajax');

	/* ================== Blocks ================== */
	Route::resource(config('laraadmin.adminRoute') . '/blocks', 'LA\BlocksController');
	Route::get(config('laraadmin.adminRoute') . '/block_dt_ajax', 'LA\BlocksController@dtajax');

	/* ================== Floors ================== */
	Route::resource(config('laraadmin.adminRoute') . '/floors', 'LA\FloorsController');
	Route::get(config('laraadmin.adminRoute') . '/floor_dt_ajax', 'LA\FloorsController@dtajax');

	/* ================== Aparatmnets ================== */
	Route::resource(config('laraadmin.adminRoute') . '/aparatmnets', 'LA\AparatmnetsController');
	Route::get(config('laraadmin.adminRoute') . '/aparatmnet_dt_ajax', 'LA\AparatmnetsController@dtajax');


	/* ================== Tags ================== */
	Route::resource(config('laraadmin.adminRoute') . '/tags', 'LA\TagsController');
	Route::get(config('laraadmin.adminRoute') . '/tag_dt_ajax', 'LA\TagsController@dtajax');

	/* ================== Text_Images ================== */
	Route::resource(config('laraadmin.adminRoute') . '/text_images', 'LA\Text_ImagesController');
	Route::get(config('laraadmin.adminRoute') . '/text_image_dt_ajax', 'LA\Text_ImagesController@dtajax');

	/* ================== Landings ================== */
	Route::resource(config('laraadmin.adminRoute') . '/landings', 'LA\LandingsController');
	Route::get(config('laraadmin.adminRoute') . '/landing_dt_ajax', 'LA\LandingsController@dtajax');




	/* ================== Landing_Homes ================== */
	Route::resource(config('laraadmin.adminRoute') . '/landing_homes', 'LA\Landing_HomesController');
	Route::get(config('laraadmin.adminRoute') . '/landing_home_dt_ajax', 'LA\Landing_HomesController@dtajax');

	/* ================== Seasons ================== */
	Route::resource(config('laraadmin.adminRoute') . '/seasons', 'LA\SeasonsController');
	Route::get(config('laraadmin.adminRoute') . '/season_dt_ajax', 'LA\SeasonsController@dtajax');

	/* ================== About_projects ================== */
	Route::resource(config('laraadmin.adminRoute') . '/about_projects', 'LA\About_projectsController');
	Route::get(config('laraadmin.adminRoute') . '/about_project_dt_ajax', 'LA\About_projectsController@dtajax');

	/* ================== Landing_socials ================== */
	Route::resource(config('laraadmin.adminRoute') . '/landing_socials', 'LA\Landing_socialsController');
	Route::get(config('laraadmin.adminRoute') . '/landing_social_dt_ajax', 'LA\Landing_socialsController@dtajax');


	/* ================== Landing_footers ================== */
	Route::resource(config('laraadmin.adminRoute') . '/landing_footers', 'LA\Landing_footersController');
	Route::get(config('laraadmin.adminRoute') . '/landing_footer_dt_ajax', 'LA\Landing_footersController@dtajax');

	/* ================== Project_infos ================== */
	Route::resource(config('laraadmin.adminRoute') . '/project_infos', 'LA\Project_infosController');
	Route::get(config('laraadmin.adminRoute') . '/project_info_dt_ajax', 'LA\Project_infosController@dtajax');

	/* ================== Project_summaries ================== */
	Route::resource(config('laraadmin.adminRoute') . '/project_summaries', 'LA\Project_summariesController');
	Route::get(config('laraadmin.adminRoute') . '/project_summary_dt_ajax', 'LA\Project_summariesController@dtajax');

	/* ================== Landing_apartments ================== */
	Route::resource(config('laraadmin.adminRoute') . '/landing_apartments', 'LA\Landing_apartmentsController');
	Route::get(config('laraadmin.adminRoute') . '/landing_apartment_dt_ajax', 'LA\Landing_apartmentsController@dtajax');

	/* ================== Callbacks ================== */
	Route::resource(config('laraadmin.adminRoute') . '/callbacks', 'LA\CallbacksController');
	Route::get(config('laraadmin.adminRoute') . '/callback_dt_ajax', 'LA\CallbacksController@dtajax');
});
