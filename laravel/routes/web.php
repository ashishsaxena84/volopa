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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/list', [App\Http\Controllers\HomeController::class, 'list'])->name('cur_list');
Route::get('/editlist/{id}', [App\Http\Controllers\HomeController::class, 'editlist'])->name('editlist');
Route::post('/storelist/{id}', [App\Http\Controllers\HomeController::class, 'storelist'])->name('liststore');
