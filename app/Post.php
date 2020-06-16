<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use SoftDeletes;

    protected $fillable = ['category_id','author_id','title','slug','cover','body','keyword','meta_desc','views','status'];
    
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class,'author_id');
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }
}
