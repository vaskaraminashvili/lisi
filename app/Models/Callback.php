<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Callback extends Model
{
    use SoftDeletes;

	protected $table = 'callbacks';

	protected $hidden = [

    ];
    protected $fillable = [
        'firstname' , 'phone' , 'project' , 'email'
    ];
	protected $guarded = [];

	protected $dates = ['deleted_at'];
}
