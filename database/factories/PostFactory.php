<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    return [
        'category_id' => rand(1, 3),
        'tag_id' => rand(1, 3),
        'author_id' => 1,
        'cover' => 'TA',
        'keyword' => 'TA',
        'meta_desc' => 'TA',
        'status' => 'PUBLISH',
        'title' => $faker->sentence(),
        'slug' => \Str::slug($faker->sentence()),
        'body' => $faker->paragraph(10),
    ];
});
