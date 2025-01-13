<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\UserController;

/**
 * routes/api.php
 *
 * Defines API routes for the application.
 *
 * - GET /users: Fetches a list of users via UserController@getUsers.
 */

Route::controller( UserController::class)->group(function(){
    Route::get('/users', 'getUsers');
});

