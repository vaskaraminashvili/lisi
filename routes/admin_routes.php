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







	/* ================== Landing_socials ================== */
	Route::resource(config('laraadmin.adminRoute') . '/landing_socials', 'LA\Landing_socialsController');
	Route::get(config('laraadmin.adminRoute') . '/landing_social_dt_ajax', 'LA\Landing_socialsController@dtajax');






	/* ================== Callbacks ================== */
	Route::resource(config('laraadmin.adminRoute') . '/callbacks', 'LA\CallbacksController');
	Route::get(config('laraadmin.adminRoute') . '/callback_dt_ajax', 'LA\CallbacksController@dtajax');

	/* ================== Section_1s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_1s', 'LA\Section_1sController');
	Route::get(config('laraadmin.adminRoute') . '/section_1_dt_ajax', 'LA\Section_1sController@dtajax');

	/* ================== Section_2s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_2s', 'LA\Section_2sController');
	Route::get(config('laraadmin.adminRoute') . '/section_2_dt_ajax', 'LA\Section_2sController@dtajax');

	/* ================== Section_3s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_3s', 'LA\Section_3sController');
	Route::get(config('laraadmin.adminRoute') . '/section_3_dt_ajax', 'LA\Section_3sController@dtajax');

	/* ================== Partners ================== */
	Route::resource(config('laraadmin.adminRoute') . '/partners', 'LA\PartnersController');
	Route::get(config('laraadmin.adminRoute') . '/partner_dt_ajax', 'LA\PartnersController@dtajax');

	/* ================== Section_4s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_4s', 'LA\Section_4sController');
	Route::get(config('laraadmin.adminRoute') . '/section_4_dt_ajax', 'LA\Section_4sController@dtajax');

	/* ================== Section_5s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_5s', 'LA\Section_5sController');
	Route::get(config('laraadmin.adminRoute') . '/section_5_dt_ajax', 'LA\Section_5sController@dtajax');

	/* ================== Section_6s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_6s', 'LA\Section_6sController');
	Route::get(config('laraadmin.adminRoute') . '/section_6_dt_ajax', 'LA\Section_6sController@dtajax');

	/* ================== Section_7s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_7s', 'LA\Section_7sController');
	Route::get(config('laraadmin.adminRoute') . '/section_7_dt_ajax', 'LA\Section_7sController@dtajax');

	/* ================== Section_8s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_8s', 'LA\Section_8sController');
	Route::get(config('laraadmin.adminRoute') . '/section_8_dt_ajax', 'LA\Section_8sController@dtajax');

	/* ================== Section_9s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_9s', 'LA\Section_9sController');
	Route::get(config('laraadmin.adminRoute') . '/section_9_dt_ajax', 'LA\Section_9sController@dtajax');

	/* ================== Section_10s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_10s', 'LA\Section_10sController');
	Route::get(config('laraadmin.adminRoute') . '/section_10_dt_ajax', 'LA\Section_10sController@dtajax');

	/* ================== Section_11s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_11s', 'LA\Section_11sController');
	Route::get(config('laraadmin.adminRoute') . '/section_11_dt_ajax', 'LA\Section_11sController@dtajax');

	/* ================== Section_12s ================== */
	Route::resource(config('laraadmin.adminRoute') . '/section_12s', 'LA\Section_12sController');
	Route::get(config('laraadmin.adminRoute') . '/section_12_dt_ajax', 'LA\Section_12sController@dtajax');
});
