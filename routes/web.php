<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RegisterController;

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

// Route::get('/', function () {
//     return view('home/index');
// });

Route::get('/detail', function () {
    return view('home/show');
});

Route::resource('/', Depan\DepanController::class);
Route::resource('/robot', Depan\OrderController::class);

Route::middleware(['admin'])->group(function () {
    Route::resource('/admin/robot', Dalam\RobotController::class);
    Route::resource('/admin/perangkat', Dalam\PerangkatController::class);
    Route::resource('/admin/agenda', Dalam\AgendaController::class);
    Route::resource('/admin/penawaran', Dalam\PenawaranController::class);
    Route::resource('/admin/order', Dalam\OrderController::class);
    Route::resource('/admin', Dalam\DashboardController::class);
});


Route::get('/login', 'UserController@index')->name('login');
Route::get('/register', 'RegisterController@index')->name('register');
Route::post('/register/registerProses', 'RegisterController@registerProses');
Route::post('/login/loginProses', 'UserController@loginProses');
Route::get('/logout', 'UserController@logout');