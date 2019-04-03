<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Green_zone extends BaseModel
{
    public function tag()
    {
        return $this->hasOne('App\Models\Tag' , 'id' , 'tag_id');
    }
}
