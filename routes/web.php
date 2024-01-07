<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\WebsiteController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/goal/{id?}', [WebsiteController::class, 'showGoal'])->name('goal');
});

//route::get('/home',[WebsiteController::class,'index']);
Route::post('/updateChecked', [WebsiteController::class, 'updateChecked'])->middleware('web');
Route::post('/updateName', [WebsiteController::class, 'updateName'])->middleware('web');
Route::post('/newTable', [WebsiteController::class, 'newTable'])->middleware('web');
Route::post('/planQuantAdj', [WebsiteController::class, 'planQuantAdj'])->middleware('web');

