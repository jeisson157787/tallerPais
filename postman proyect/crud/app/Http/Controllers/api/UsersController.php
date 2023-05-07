<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Users;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
            $user = Users::all(); 
            return response()->json($user, 200);
        } catch (\Throwable $th) {
            return response()->json([
                'Errors' => $th
            ], 403);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $user = Users::create($request->all());
            return response()->json($user, 200);
        } catch (\Throwable $th) {
            return response()->json([
                'Errors' => $th
            ], 403);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        try {
            $user = Users::find($id);
            return response()->json($user,200); 
        } catch (\Throwable $th) {
            return response()->json([
                'Errors' => $th
            ], 403);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        try {
            $user = Users::find($id)->update($request->all());
            return response()->json( $user,200);
        } catch (\Throwable $th) {
            return response()->json([
                'Errors' => $th
            ], 400);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $user = Users::find($id)->delete();
            return response()->json([
                'message' => 'Eliminado'
            ],202);
        } catch (\Throwable $th) {
            return response()->json([
                'Errors' => $th
            ], 400); 
        }
    }
}
