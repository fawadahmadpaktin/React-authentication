<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::get('Register', function () {
//     return 'Welcome to the Register API endpoint';
// });

Route::post('Register' , [AuthController::class , 'register']);
Route::post('Login' , [AuthController::class , 'login']);

Route::get('user' , [AuthController::class , 'userData'])->middleware('auth:api');
