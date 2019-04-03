<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Apartment extends \App\Models\Apartment
{
    public function floor()
    {
        return $this->belongsTo('App\Models\Floor');
    }
    public function setFloorBlockAttribute($value)
    {
       return "{$this->floor()->title_ka} {$this->floor()->block_id}";
    }

}
