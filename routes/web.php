<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('home', 'HomeController@index');
Route::get('/about', 'AboutUsController@index');
Route::get('/landing/{project}', 'LandingController@index');
Route::post('/landing/{project}', 'LandingController@callback');
Route::get('/landing2', function(){
    // return 'asda sd';
    return view('landing_kokta_mitarbi');
});
Route::resource('/projects', 'ProjectController')->only(['index', 'show']);
Route::get('/language', 'LanguageController@changeLanguage')->name('language');

/* ================== Homepage + Admin Routes ================== */

require __DIR__.'/admin_routes.php';


use Dotzero\LaravelAmoCrm\AmoCrmManager;
Route::get('/testAmo', function() {
    return view('amocrmFrom');
});
Route::post('/testAmo', function() {
    return view('send-contact');
});
Route::get('/amocrm', function (AmoCrmManager $amocrm) {
    try {

        /** @var \AmoCRM\Client $client */
        $client = $amocrm->getClient();
        $account = $client->account;

        // или

        /** @var \AmoCRM\Models\Account $account */
        $account = $amocrm->account;

        dd($account->apiCurrent());

    } catch (\Exception $e) {
        abort(400, $e->getMessage());
    }
});
