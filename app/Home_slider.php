<?php

namespace App;


class Home_slider extends BaseModel
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
    public function image()
    {
        return $this->hasOne('App\Models\Upload', 'id' ,'image_id');
    }
}
