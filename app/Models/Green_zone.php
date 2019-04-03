<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Green_zone extends Model
{
    use SoftDeletes;

	protected $table = 'green_zones';

	protected $hidden = [

    ];

	protected $guarded = [];

	protected $dates = ['deleted_at'];

}
