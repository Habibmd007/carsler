<?php

namespace App\vehicle;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use App\Models\Auth\User;

class Car extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
