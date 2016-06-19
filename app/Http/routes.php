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

Route::get('/', 'HomeController@index');


Route::group(['middleware'=>['web']],function(){
	Route::resource('client','ClientController');
	Route::resource('lawyer','LawyerController');
	Route::resource('meeting','MeetingController');
});
Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/sendmail', function(){
	// Mail::send('', ['key' => 'value'], function($message)
	// {
	//     $message->to('kuldeep.yadav3012@gmail.com', 'Kuldeep Yadav')->subject('Trial mail');
	// });
	Mail::raw('Text to e-mail', function($message)
	{
	    $message->from('us@example.com', 'Laravel');

	    $message->to('kuldeep.yadav3012@gmail.com')->cc('kuldeep.yadav3012@gmail.com');
	});
});