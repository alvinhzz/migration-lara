@extends('template.master')

@section('content')
<div class="card text-center mt-5">
    <div class="card-header">
        {{$data->judul}}
    </div>
    <div class="card-body">
        <p class="card-text">{{$data->isi}}</p>
    </div>
    <div class="card-footer text-muted">
        {{$data->created_at}}
    </div>
</div>
@endsection