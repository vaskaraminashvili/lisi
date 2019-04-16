<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Season extends Model
{
    use SoftDeletes;

	protected $table = 'seasons';

	protected $hidden = [

    ];

	protected $guarded = [];
    public function TextTrans( $text = null, $lang = null )
       {

         if($lang != null){
             $locale = $lang;
         }else{
             $locale = \Session::get('locale');
         }

         $column = $text.'_'.$locale;

         return $this->{$column};
       }
	protected $dates = ['deleted_at'];
}
