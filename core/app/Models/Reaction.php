<?php

namespace App\Models;

use App\Traits\HasCompositePrimaryKeyTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reaction extends Model
{
    use HasFactory , HasCompositePrimaryKeyTrait;

    protected $primaryKey = ['post_id','reactor_id'];


	public $incrementing = false;


}
