<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Collective extends Model
{
    use HasFactory;

    public function creator()
    {
       return $this->belongsTo(ContentCreator::class);
    }

    public function collective_sponsors()
    {
        return $this->hasMany(CollectiveSponsor::class);
    }
}
