<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Cviebrock\EloquentSluggable\Sluggable;

class Project extends Model
{
    use SoftDeletes;
    use Sluggable;

	protected $table = 'projects';

	protected $hidden = [

    ];
    public function sluggable()
        {
            return [
                'slug' => [
                    'source' => 'title_ka'
                ]
            ];
        }

	protected $guarded = [];

	protected $dates = ['deleted_at'];
}
