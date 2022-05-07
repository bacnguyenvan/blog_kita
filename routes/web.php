<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\SW\EditorController;
use App\Http\Controllers\SW\HomeController as SWHomeController;
use App\Http\Controllers\SW\PostController;
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

Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('/post/{id}', [HomeController::class, 'detail'])->name('post-detail');

Route::group([
    'prefix' => 'sw'
], function(){
    Route::get('/login',[LoginController::class, 'login'])->name('login');
    Route::get('/home',[SWHomeController::class, 'home'])->name('home');
    Route::get('/posts',[PostController::class, 'list'])->name('post.list');

    Route::match(['get', 'post'],'/posts/{id}',[PostController::class, 'show'])->name('post.show');

    Route::post('/editor/image_upload',[EditorController::class, 'upload'])->name('post.editor.upload');	
});

