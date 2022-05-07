<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = [
        'deleted_at',
    ];

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
