<?php

namespace App\Models;

use App\Traits\HasCompositePrimaryKeyTrait;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Follower extends Model
{
    use HasFactory, HasCompositePrimaryKeyTrait;
	protected $primaryKey = ['followed_by','content_creator_id'];

	public $incrementing = false;

    public function creator()
    {
        return $this->belongsTo(ContentCreator::class);
    }



}
