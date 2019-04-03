<?php
namespace App\Http\Controllers;

use App\Http\Requests;
use App\Models\Navigation;
use App\Green_zone;
use App\Home_slider;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    public function index(){

        $sliders= Home_slider::with('image')->get();
        $green_zones= Green_zone::whereHas('tag', function($q){
          $q->where('title' , 'greenzone');
        })->where('active', 1)->get();
        return view('welcome' ,compact('navigation' , 'sliders','green_zones'));
    }

  //   /**
  //    * Show the application dashboard.
  //    *
  //    * @return Response
  //    */
  //   public function index()
  //   {
  //       $roleCount = \App\Role::count();
		// if($roleCount != 0) {
		// 	if($roleCount != 0) {
		// 		return view('home');
		// 	}
		// } else {
		// 	return view('errors.error', [
		// 		'title' => 'Migration not completed',
		// 		'message' => 'Please run command <code>php artisan db:seed</code> to generate required table data.',
		// 	]);
		// }
  //   }
}
