<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\School;

class SchoolController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
            $school = School::all(); 
            return response()->json($school, 200);
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
            $school = School::create($request->all());
            return response()->json($school, 200);
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
            $school = School::find($id);
            return response()->json($school,200); 
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
            $school = School::find($id)->update($request->all());
            return response()->json($school,200);
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
            $school = School::find($id)->delete();
            return response()->json([
                'message' => 'Eliminado'
            ],202);
        } catch (\Throwable $th) {
            return response()->json([
                'Errors' => $th
            ], 400); 
        }
    }
    public function solution3($country_id) {
        try {
            $school = School::select('name')->where('pais_id', $country_id)->get();
          return response()->json([
            $school
          ],200);
        } catch (\Throwable $th) {
          return response()->json([
              'errors'=> $th
           ],400);
        }
    }
    public function solution8() {
        try {
            $school = School::select('school.name', School::raw('count(*) as total_users'))
                ->join('users', 'school.id', '=', 'users.school_id')
                ->groupBy('school.id', 'school.name')
                ->get();
            return response()->json([
                $school
          ],200);
        } catch (\Throwable $th) {
            return response()->json([
              'errors'=> $th
            ],400);
        }
    }
}
