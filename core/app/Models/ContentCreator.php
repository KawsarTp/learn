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

    public function getFullnameAttribute()
    {
        return $this->first_name . ' ' . $this->last_name;
    }

    public function posts()
    {
        return $this->hasMany(Post::class)->latest();
    }
}
