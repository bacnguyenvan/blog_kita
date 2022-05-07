<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    public function next()
    {
        return $this->where('id', '>', $this->id)->orderBy('id','asc')->first();
    }

    public function previous()
    {
        return $this->where('id', '<', $this->id)->orderBy('id','asc')->first();
    }

    public function endNext()
    {
        return $this->where('id', '<', $this->id)->orderBy('id','desc')->first();
    }

    public function endPrevious()
    {
        return $this->where('id', '>', $this->id)->orderBy('id','desc')->first();
    }
}
