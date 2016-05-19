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


/**
 * User login and logout
 */
Route::group(['middleware' => ['web']], function ()
{
     /*
      |--------------------------------------------------------------------------
      | Admin side (auth required)
      |--------------------------------------------------------------------------
      |
      */
    Route::group(['middleware' => ['admin_logged', 'can_see']], function ()
    {
        
        /**
         * Hrm
         */
        ///////////////////////////////ADMIN////////////////////////////////////
        //dashboard
        Route::get('/admin/hrm/dashboard', [
                'as'   => 'hrm.dashboard',
                'uses' => 'Hrm\HrmController@getDashboard'
        ]);
        
        //list of payrolls
        Route::get('/admin/hrm/listpayrolls', [
                'as'   => 'hrm.listpayrolls',
                'uses' => 'Hrm\HrmController@listPayrolls'
        ]);
        
        //add payroll
        Route::get('/admin/hrm/addpayroll', [
                'as'   => 'hrm.addpayroll',
                'uses' => 'Hrm\HrmController@addpayroll'
        ]);
        
        //edit payroll
        Route::get('/admin/hrm/editpayroll', [
                'as'   => 'hrm.editpayroll',
                'uses' => 'Hrm\HrmController@editpayroll'
        ]);
        Route::post('/admin/hrm/editpayroll', [
                'as'   => 'hrm.editpayroll',
                'uses' => 'Hrm\HrmController@postEditPayroll'
        ]);
        
        
        //delete payroll
        Route::get('/admin/hrm/deletepayroll', [
                'as'   => 'hrm.deletepayroll',
                'uses' => 'Hrm\HrmController@deletepayroll'
        ]);
        
        ///////////////////////////////USER/////////////////////////////////////
        //user payrolls
        Route::get('/hrm/userpayrolls', [
                'as'   => 'user.payrolls',
                'uses' => 'Hrm\HrmController@userpayrolls'
        ]);
        //user payroll
        Route::get('/hrm/userpayroll', [
                'as'   => 'user.payroll',
                'uses' => 'Hrm\HrmController@userpayroll'
        ]);
    
    });
    
});

