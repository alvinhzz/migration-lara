<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Question;

class QuestionsController extends Controller
{
    public function index()
    {
        // $data = DB::table('questions')->get();

        $data = Question::all();

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

        // DB::table('questions')->insert([
        //     "judul" => $req["judul"],
        //     "isi" => $req["isi"]
        // ]);

        $data = new Question;

        $data->judul = $req->judul;
        $data->isi = $req->isi;

        $data->save();

        return redirect('/quest');
    }

    public function show($id)
    {
        // $data = DB::table('questions')->where('id', $id)->first();

        $data = Question::where('id', $id)->first();

        return view('detail', ['data' => $data]);
    }

    public function edit($id)
    {
        // $data = DB::table('questions')->where('id', $id)->first();
        $data = Question::where('id', $id)->first();

        return view('edit', ['data' => $data]);
    }

    public function update($id, Request $req)
    {
        $req->validate([
            "judul" => 'required|max:55',
            "isi" => 'required|max:255'
        ]);

        // DB::table('questions')
        //     ->where('id', $id)
        //     ->update([
        //         "judul" => $req["judul"],
        //         "isi"   => $req["isi"]
        //     ]);

        $data = Question::find($id);

        $data->judul = $req->judul;
        $data->isi = $req->isi;

        $data->save();

        return redirect('/quest');
    }

    public function destroy($id)
    {
        // DB::table('questions')->where('id', $id)->delete();

        $data = Question::find($id);

        $data->delete();

        return redirect('/quest');
    }
}
