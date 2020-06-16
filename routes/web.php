<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','FrontController@home')->name('home');

Route::get('about','FrontController@about')->name('about');

Route::get('service','FrontController@service')->name('service');

Route::get('portofolio','FrontController@portofolio')->name('portofolio');

Route::get('portofolio/{id}','FrontController@portofolioshow')->name('portofolio.show');

Route::get('blog','FrontController@blog')->name('blog');

Route::get('blog/{slug}','FrontController@blogshow')->name('blogshow');

Route::get('categories/{category:slug}','FrontController@category')->name('category');

Route::get('tags/{tag:slug}','FrontController@tag')->name('tag');

Route::get('contact','FrontController@contact')->name('contact');

Route::post('contact','FrontController@message')->name('message');

Route::post('/','FrontController@subscribe')->name('subscribe');


Auth::routes();


Route::prefix('admin')->middleware('auth')->group(function () {

    Route::get('dashboard','DashboardController@index')->name('admin.dashboard');

    // Manage Blog Tag
    Route::get('post','PostController@index')->name('admin.post');

    Route::get('post/create','PostController@create')->name('admin.post.create');

    Route::post('post/create','PostController@store')->name('admin.post.store');

    Route::get('post/edit/{id}','PostController@edit')->name('admin.post.edit');

    Route::post('post/edit/{id}','PostController@update')->name('admin.post.update');

    Route::get('post/trash','PostController@trash')->name('admin.post.trash');

    Route::post('post/{id}/restore','PostController@restore')->name('admin.post.restore');

    Route::delete('post/trash/{id}','PostController@destroy')->name('admin.post.destroy');

    Route::delete('post/destroy/{id}','PostController@deletePermanent')->name('admin.post.deletePermanent');

    // Manage Blog Tag
    Route::get('tag','TagController@index')->name('admin.tag');

    Route::get('tag/create','TagController@create')->name('admin.tag.create');

    Route::post('tag/create','TagController@store')->name('admin.tag.store');

    Route::get('tag/edit/{id}','TagController@edit')->name('admin.tag.edit');

    Route::post('tag/edit/{id}','TagController@update')->name('admin.tag.update');

    Route::delete('tag/destroy/{id}','TagController@destroy')->name('admin.tag.destroy');

    // Manage Blog Category
    Route::get('category','CategoryController@index')->name('admin.category');

    Route::get('category/create','CategoryController@create')->name('admin.category.create');

    Route::post('category/create','CategoryController@store')->name('admin.category.store');

    Route::get('category/edit/{id}','CategoryController@edit')->name('admin.category.edit');

    Route::post('category/edit/{id}','CategoryController@update')->name('admin.category.update');

    Route::delete('category/destroy/{id}','CategoryController@destroy')->name('admin.category.destroy');

    // Manage Banner

    Route::get('banner-slider','BannerController@index')->name('admin.banner');

    Route::get('banner-slider/create','BannerController@create')->name('admin.banner.create');

    Route::post('banner-slider/create','BannerController@store')->name('admin.banner.store');

    Route::get('banner-slider/edit/{id}','BannerController@edit')->name('admin.banner.edit');

    Route::post('banner-slider/edit/{id}','BannerController@update')->name('admin.banner.update');

    Route::delete('banner-slider/destroy/{id}','BannerController@destroy')->name('admin.banner.destroy');

    // Manage Service

    Route::get('service','ServiceController@index')->name('admin.service');

    Route::get('service/create','ServiceController@create')->name('admin.service.create');

    Route::post('service/create','ServiceController@store')->name('admin.service.store');

    Route::get('service/edit/{id}','ServiceController@edit')->name('admin.service.edit');

    Route::post('service/edit/{id}','ServiceController@update')->name('admin.service.update');

    Route::delete('service/destroy/{id}','ServiceController@destroy')->name('admin.service.destroy');

    // Manage Feature
    Route::get('feature','FeatureController@index')->name('admin.feature');

    Route::get('feature/create','FeatureController@create')->name('admin.feature.create');

    Route::post('feature/create','FeatureController@store')->name('admin.feature.store');

    Route::get('feature/edit/{id}','FeatureController@edit')->name('admin.feature.edit');

    Route::post('feature/edit/{id}','FeatureController@update')->name('admin.feature.update');

    Route::delete('feature/destroy/{id}','FeatureController@destroy')->name('admin.feature.destroy');

    // Manage Client
    Route::get('client','ClientController@index')->name('admin.client');

    Route::get('client/create','ClientController@create')->name('admin.client.create');

    Route::post('client/create','ClientController@store')->name('admin.client.store');

    Route::get('client/edit/{id}','ClientController@edit')->name('admin.client.edit');

    Route::post('client/edit/{id}','ClientController@update')->name('admin.client.update');

    Route::delete('client/destroy/{id}','ClientController@destroy')->name('admin.client.destroy');


    // Manage Team
    Route::get('team','TeamController@index')->name('admin.team');

    Route::get('team/create','TeamController@create')->name('admin.team.create');

    Route::post('team/create','TeamController@store')->name('admin.team.store');

    Route::get('team/edit/{id}','TeamController@edit')->name('admin.team.edit');

    Route::post('team/edit/{id}','TeamController@update')->name('admin.team.update');

    Route::delete('team/destroy/{id}','TeamController@destroy')->name('admin.team.destroy');

     // Manage FAQ
     Route::get('faq','FaqController@index')->name('admin.faq');

     Route::get('faq/create','FaqController@create')->name('admin.faq.create');
 
     Route::post('faq/create','FaqController@store')->name('admin.faq.store');
 
     Route::get('faq/edit/{id}','FaqController@edit')->name('admin.faq.edit');
 
     Route::post('faq/edit/{id}','FaqController@update')->name('admin.faq.update');
 
     Route::delete('faq/destroy/{id}','FaqController@destroy')->name('admin.faq.destroy');

     // Manage About

     Route::get('about/edit','AboutController@edit')->name('admin.about.edit');
 
     Route::post('about/edit','AboutController@update')->name('admin.about.update');

      // Manage Message
      Route::get('message','MessageController@index')->name('admin.message');


       // General Settings

     Route::get('general/edit','GeneralController@edit')->name('admin.general.edit');
 
     Route::post('general/edit','GeneralController@update')->name('admin.general.update');

      // Manage Link
    Route::get('link','LinkController@index')->name('admin.link');

    Route::get('link/create','LinkController@create')->name('admin.link.create');

    Route::post('link/create','LinkController@store')->name('admin.link.store');

    Route::get('link/edit/{id}','LinkController@edit')->name('admin.link.edit');

    Route::post('link/edit/{id}','LinkController@update')->name('admin.link.update');

    Route::delete('link/destroy/{id}','LinkController@destroy')->name('admin.link.destroy');

    // Manage Portofolio

    Route::get('portofolio','PortofolioController@index')->name('admin.portofolio');

    Route::get('portofolio/create','PortofolioController@create')->name('admin.portofolio.create');

    Route::post('portofolio/create','PortofolioController@store')->name('admin.portofolio.store');

    Route::get('portofolio/edit/{id}','PortofolioController@edit')->name('admin.portofolio.edit');

    Route::post('portofolio/edit/{id}','PortofolioController@update')->name('admin.portofolio.update');

    Route::delete('portofolio/destroy/{id}','PortofolioController@destroy')->name('admin.portofolio.destroy');

});
