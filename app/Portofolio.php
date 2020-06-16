<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Portofolio extends Model
{
    public function galleries()
    {
        return $this->hasMany('App\Gallery');
    }
}
