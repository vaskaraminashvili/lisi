<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

abstract class BaseModel extends Model
{
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
}
