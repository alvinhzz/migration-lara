@extends('template.master')

@section('content')
<form class="mt-5" action="{{ route('quest.update', ["quest" => $data->id]) }}" method="POST">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label for="judul">Judul</label>
        <input type="text" class="form-control" id="judul" name="judul" value="{{ $data->judul }}">
        @error('judul')
        <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="form-group">
        <label for="isi">Isi</label>
        <textarea class="form-control" id="isi" name="isi" rows="3">{{ $data->isi }}</textarea>
        @error('isi')
        <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    <button type="submit" class="btn btn-warning">Update</button>
</form>
@endsection