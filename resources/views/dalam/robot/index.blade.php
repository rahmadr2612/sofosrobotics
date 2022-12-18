{{-- panggil main dan semua yang berhubungan --}}
@extends($dalamLayout)

@section('container')

    @if (session()->has('success'))
        <div class="alert alert-success" role="alert">
            {{ session('success') }}
        </div>
    @endif

    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div id="button-action" class="row mb-3">
                        <div class="col-md-3 col-sm-12">
                            <a href="{{ url('') }}/admin/robot/create" class="btn btn-primary">
                                <i class="fas fa-plus"></i> Tambah Robot
                            </a>
                        </div>
                    </div>
                    <table id="datatable" class="table table-striped">
                        <thead>
                            <tr>
                                <th width="5%">#</th>
                                <th>Nama Robot</th>
                                <th>Gambar</th>
                                <th width="10%">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                                @foreach ($robot as $r)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $r->nama }}</td>
                                        <td><img src="{{ url('') }}//assets/image/robot-master/{{ $r->image }}" alt="" class="img-fluid me-3 b-r-10 img-100"></td>
                                        <td>
                                            <div class="btn-group" role="group">
                                                <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Aksi 
                                                    <i class="mdi mdi-chevron-down"></i>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1">
                                                    <!-- <a class="dropdown-item" href="#">Ubah</a> -->
                                                    <a class="dropdown-item remove" href="javascript:void(0);" data-id="#">Hapus</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    @section('js-library')
    <!-- Required datatable js -->
    <script src="{{ url('') }}/assets/admin/libs/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <!-- Buttons examples -->
    <script src="{{ url('') }}/assets/admin/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/jszip/jszip.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/pdfmake/build/pdfmake.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/pdfmake/build/vfs_fonts.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>
    <!-- Responsive examples -->
    <script src="{{ url('') }}/assets/admin/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>

    <!-- Datatable init js -->
    <script src="{{ url('') }}/assets/admin/js/pages/datatables.init.js"></script>

    <!-- Select2 -->
    <script src="{{ url('') }}/assets/admin/libs/select2/js/select2.min.js"></script>
    <script src="{{ url('') }}/assets/admin/js/pages/form-advanced.init.js"></script>
@endsection
    @section('js-custom')
        <script>
            $(function() {
                $("#datatable").DataTable();
            });
        </script>
    @endsection


@endsection