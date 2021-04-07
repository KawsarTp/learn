<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;


    public function creator()
    {
        return $this->belongsTo(ContentCreator::class,'user_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function comment_react()
    {
        return $this->hasMany(CommentReaction::class);
    }
}
