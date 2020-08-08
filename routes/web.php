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

Route::get('/quest', 'QuestionsController@index');

Route::get('/quest/create', 'QuestionsController@create');

Route::post('/quest', 'QuestionsController@store');

Route::get('/quest/{id}', 'QuestionsController@show');

Route::get('/quest/{id}/edit', 'QuestionsController@edit');

Route::put('/quest/{id}', 'QuestionsController@update');

Route::delete('/quest/{id}', 'QuestionsController@destroy');
