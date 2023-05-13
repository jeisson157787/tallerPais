<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\UsersController;
use App\Http\Controllers\api\PaisController;
use App\Http\Controllers\api\DepartamentsController;
use App\Http\Controllers\api\SchoolController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('users', UsersController::class);
Route::apiResource('pais', PaisController::class);
Route::apiResource('departments', DepartamentsController::class);
Route::apiResource('school', SchoolController::class);

Route::get('pais_departamento/{id}',[PaisController::class, 'solution1']);
Route::get('pais_departamentoContador/{id}',[PaisController::class, 'solution2']);
Route::get('pais_school/{id}',[SchoolController::class, 'solution3']);
Route::get('users_school/{id}',[UsersController::class, 'solution4']);
Route::get('users_pais/{id}',[UsersController::class, 'solution5']);
Route::get('usersCorreos',[UsersController::class, 'solution6']);
Route::get('usersDias',[UsersController::class, 'solution7']);
Route::get('colegio_usuarios',[SchoolController::class, 'solution8']);