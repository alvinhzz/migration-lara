@extends('template.master')
@push('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
@endpush

@section('content')
<div class="card">
    <div class="card-header">
        <h3 class="card-title">DataTable with default features</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <table id="example1" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Judul</th>
                    <th>Isi</th>
                    <th>Tanggal Diupload</th>
                    <th>Tanggal Diedit</th>
                    <th colspan="2">#</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1 ?>
                @foreach ($data as $quest)
                <tr>
                    <td><?= $i++ ?></td>
                    <td>{{ $quest->judul }}</td>
                    <td>{{ $quest->isi }}</td>
                    <td>{{ $quest->created_at }}</td>
                    <td>{{ $quest->updated_at }}</td>
                    <td>
                        <div class="d-flex justify-content-around">
                            <a href="/quest/{{ $quest->id }}" class="btn btn-success">Detail</a>
                            <a href="/quest/{{ $quest->id }}/edit" class="btn btn-warning">Edit</a>
                            <form action="/quest/{{ $quest->id }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <input type="submit" value="Delete" class="btn btn-danger">
                            </form>
                        </div>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <!-- /.card-body -->
</div>
@endsection

@push('script')
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(function () {
    $("#example1").DataTable();
  });
</script>
@endpush