<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;


    public function content_creator()
    {
        return $this->belongsTo(ContentCreator::class);
    }


    public function reaction()
    {
        return $this->hasMany(Reaction::class);
    }


    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function post_purchage()
    {
        return $this->hasMany(PostPurchage::class);
    }

    

    
}
