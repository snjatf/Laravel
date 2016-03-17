<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::controllers([
    'auth' => 'Auth\AuthController',
    'password' => 'Auth\PasswordController',
]);

//prefix表示URL前缀
Route::group(['prefix' => 'admin', 'namespace' => 'Admin','middleware' => 'auth'], function()
{
    Route::get('/', 'AdminHomeController@index');
    Route::resource('pages', 'PagesController');
});

Route::group(['prefix' => 'home', 'namespace' => 'Admin','middleware' => 'auth'], function()
{
    Route::get('/', 'AdminHomeController@index');
    Route::get('get_user', 'UserController@get_all');
    Route::resource('pages', 'PagesController');
});

Route::group(['prefix' => 'solution', 'namespace' => 'Solution'], function()
{
    Route::get('/', 'SolutionController@index');
    Route::get('show/{id}', 'SolutionController@show');
    Route::get('create', 'SolutionController@create');
    Route::get('mobile/{func?}/{key?}', 'SolutionController@mobile_tools');
    Route::get('markdown', 'SolutionController@markdown');
    Route::post('mobile', 'SolutionController@mobile_tools');
    Route::post('upload', 'SolutionController@upload');
    Route::post('markdown_save', 'SolutionController@markdown_save');
    Route::resource('solution', 'SolutionController');
});

Route::group(['prefix' => 'task', 'namespace' => 'Task'], function()
{
    //get、post等按顺序，按分组些，不能穿插写
    Route::get('/{status?}', 'TaskController@index');
    Route::get('get_details/{id}','TaskController@get_details');
    Route::get('wonder4/{id}','TaskController@wonder4');
    Route::get('edit/{id}', 'TaskController@edit');
    Route::get('fast_handle/{id}', 'TaskController@fast_handle');

    Route::post('edit', 'TaskController@edit');

    Route::resource('task', 'TaskController');

});




