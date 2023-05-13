<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Users;
use App\Models\School;
use App\Models\Departaments;
use App\Models\Pais;

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
    public function solution4($school_id) {
        try {
            $user = Users::select('name','lastname')->where('school_id', $school_id)->get();
            $school = School::select('name')->where('id', $school_id)->get();
          return response()->json([
            $school,$user
          ],200);
        } catch (\Throwable $th) {
          return response()->json([
              'errors'=> $th
           ],500);
        }
    }
    public function solution5($pais_id) {
        try {
            $pais = Pais::select('name')->where('id', $pais_id)->get();
            $users = Users::select('users.id','users.name', 'users.lastname')
                ->join('departaments', 'users.departaments_id', '=', 'departaments.id')
                ->join('pais', 'departaments.pais_id', '=', 'pais.id')
                ->where('pais.id', $pais_id)
                ->get();
            
          return response()->json([
            $pais,$users
          ],200);
        } catch (\Throwable $th) {
          return response()->json([
              'errors'=> $th
           ],500);
        }
    }
    public function solution6() {
        try {
            $users = Users::select('name','lastname','email')->where('email', 'LIKE', '%@gmail.com')->get();
            
          return response()->json([
            $users
          ],200);
        } catch (\Throwable $th) {
          return response()->json([
              'errors'=> $th
           ],500);
        }
    }
    public function solution7() {
        try {
            $users = Users::select('name','lastname', Users::raw('DATEDIFF(CONCAT(YEAR(CURDATE()), "-", DATE_FORMAT(date_birth, "%m-%d")), CURDATE()) AS dias_faltantes'))
                    ->get();
            
            return response()->json([
                $users
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'errors' => $th
            ], 500);
        }
    
    }
}