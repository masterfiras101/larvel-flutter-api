<?php

namespace App\Http\Controllers\User;
use App\Http\Controllers\Controller;
use App\Models\User;

class UserController extends Controller
{
    /**
     * Retrieves up to 3 users and returns the data in JSON format.
     * 
     * @return mixed|\Illuminate\Http\JsonResponse
     * - Success: User data with a 200 status.
     * - Failure: Error message with a 500 status.
     */
    public function getUsers()
    {
        try {
            $users = User::limit(3)->get();
            return response()->json([
                "success" => true,
                "data" => $users,
                "message" => "Users retrieved successfully"
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                "success" => false,
                "message" => $e->getMessage()
            ], 500);
        }
    }
}
