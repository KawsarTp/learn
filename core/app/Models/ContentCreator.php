<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class ContentCreator extends Authenticatable
{
    use HasFactory;

    protected $guard = 'creator';
    
    protected $casts = [
        'address' => 'object'
    ];

    public function guardForThisUser()
    {
        return $this->guard;
    }

    public function getFullnameAttribute()
    {
        return $this->first_name . ' ' . $this->last_name;
    }

    public function deposits()
    {
        return $this->hasMany(Deposit::class,'user_id')->where('status','!=',0);
    }

    public function posts()
    {
        return $this->hasMany(Post::class)->latest();
    }

    public function follow()
    {
        return $this->hasMany(Follower::class, 'followed_by');
    }

    public function comments()
    {
        return $this->hasMany(Comment::class,'user_id');
    }
}
