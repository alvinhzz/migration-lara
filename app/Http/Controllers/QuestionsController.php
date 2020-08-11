<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\DB; digunakan untuk Query Builder
use App\Question;

class QuestionsController extends Controller
{
    //Select ALl Data to Homepage
    public function index()
    {
        //Query Builder
        // $data = DB::table('questions')->get();

        //ORM
        $data = Question::all();

        return view('index', ['data' => $data]);
    }

    public function create()
    {
        return view('form');
    }

    //Insert New Data
    public function store(Request $req)
    {
        $req->validate([
            "judul" => 'required|max:55|unique:questions',
            "isi" => 'required|max:255'
        ]);

        //Query Builder
        // DB::table('questions')->insert([
        //     "judul" => $req["judul"],
        //     "isi" => $req["isi"]
        // ]);

        //ORM
        $data = new Question;

        $data->judul = $req->judul;
        $data->isi = $req->isi;

        $data->save();

        return redirect('/quest');
    }

    //For detail page
    public function show($id)
    {
        //Query Builder
        // $data = DB::table('questions')->where('id', $id)->first();

        // ORM
        $data = Question::where('id', $id)->first();

        return view('detail', ['data' => $data]);
    }

    //Select Data to Edit Form
    public function edit($id)
    {
        //Query Builder
        // $data = DB::table('questions')->where('id', $id)->first();

        //ORM
        $data = Question::where('id', $id)->first();

        return view('edit', ['data' => $data]);
    }

    //Update Data
    public function update($id, Request $req)
    {
        $req->validate([
            "judul" => 'required|max:55',
            "isi" => 'required|max:255'
        ]);

        //Query Builder
        // DB::table('questions')
        //     ->where('id', $id)
        //     ->update([
        //         "judul" => $req["judul"],
        //         "isi"   => $req["isi"]
        //     ]);

        //ORM
        $data = Question::find($id);

        $data->judul = $req->judul;
        $data->isi = $req->isi;

        $data->save();

        return redirect('/quest');
    }

    //Delete Data
    public function destroy($id)
    {
        //Query Builder
        // DB::table('questions')->where('id', $id)->delete();

        //ORM
        $data = Question::find($id);

        $data->delete();

        return redirect('/quest');
    }
}
