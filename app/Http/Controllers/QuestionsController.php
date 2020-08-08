<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class QuestionsController extends Controller
{
    public function index()
    {
        $data = DB::table('questions')->get();
        return view('index', ['data' => $data]);
    }

    public function create()
    {
        return view('form');
    }

    public function store(Request $req)
    {
        $req->validate([
            "judul" => 'required|max:55|unique:questions',
            "isi" => 'required|max:255'
        ]);

        DB::table('questions')->insert([
            "judul" => $req["judul"],
            "isi" => $req["isi"]
        ]);

        return redirect('/quest');
    }

    // public function show()
    // {
    //     //
    // }

    // public function edit()
    // {
    //     # code...
    // }

    // public function update()
    // {
    //     # code...
    // }

    // public function destroy()
    // {
    //     # code...
    // }
}
