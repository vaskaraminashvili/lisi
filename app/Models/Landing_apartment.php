<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Landing_apartment extends Model
{
    use SoftDeletes;

	protected $table = 'landing_apartments';

	protected $hidden = [

    ];

	protected $guarded = [];
    public function TextTrans( $text = null, $lang = null )
       {

         if($lang != null){
             $locale = $lang;
         }else{
            if (\Session::has('locale')) {
                $locale = \Session::get('locale');
            }else{
                $locale = \App::getlocale();
            }
         }
         $column = $text.'_'.$locale;

         return $this->{$column};
       }
	protected $dates = ['deleted_at'];
}
