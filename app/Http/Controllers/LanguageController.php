<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;
use App;
use Lang;
use Config;
/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class LanguageController extends Controller
{

      public function changeLanguage(Request $request){


          if($request->ajax())
          {

           $request->session()->put('locale',$request->locale);
           $request->session()->flash('alert-success',('app.Locale_Change_Success'));

           App::setLocale($request->locale);

               return response()->json([
                                'status'      => "sucsess",
                                'langcodeApp' => App::getLocale(),
                                'langcode'    => session('locale'),
                                'domain'      => Config::get('app.url'),
                                'message'     => "language was changed sucsessfuly",
                            ])->cookie(
                          'locale', $request->locale, 432000
                      );
          }

          abort(404);

      }


//    public function index(){
//      if(!\Session::has('locale')){
//        Session::put('locale',Input::get('locale'));
//      }else{
//        Session::set('locale',Input::get('locale'));
//      }
//      redirect::back();
//    }
}
