{{-- panggil main dan semua yang berhubungan --}}
@extends($dalamLayout)

@section('container')

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    {{-- <h4 class="header-title">Buttons example</h4> --}}
                    <div class="row mb-3">
                        <label class="col-sm-3 col-form-label">Pilih Prodi</label>
                        <div class="col-sm-9">
                            <select id="select-prodi" class="form-control select2" name="idProdi" required>
                                <option value="">Pilih Prodi</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-3 col-form-label">Pilih Semester</label>
                        <div class="col-sm-9">
                            <select id="select-sem" class="form-control select2" name="idSem" required>
                                <option value="">Pilih Prodi Terlebih Dahulu</option>
                            </select >
                        </div>
                    </div>

                    <div id="datatable-buttons_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        
                        <div class="row">
                            <div class="col-sm-12">
                                <table id="export-button" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed" role="grid" aria-describedby="datatable-buttons_info">
                                {{-- <table class="display" id="export-button">     --}}
                                    <thead>
                                        <tr role="row">
                                            {{-- <th class="sorting_asc" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-sort="ascending" >Name</th>
                                            <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" >Position</th>
                                            <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" >Office</th>
                                            <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" >Age</th>
                                            <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" >Start date</th>
                                            <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" >Salary</th> --}}
                                            <th>No.</th>
                                            <th>id_periode</th>
                                            <th>nama_periode_masuk</th>
                                            <th>nama_program_studi</th>
                                            <th>nim</th>
                                            <th>nama_mahasiswa</th>
                                            <th>nama_status_mahasiswa</th>
                                            <th>jenis_kelamin</th>
                                            <th>tanggal_lahir</th>
                                            <th>nama_agama</th>
                                        </tr>
                                    </thead>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- end col -->
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div id="button-action" class="row mb-3">
                        <div class="col-md-3 col-sm-12">
                            <a href="https://polresmagelang.id/permohonan/admin/laporan/create" class="btn btn-primary">
                                <i class="fas fa-plus"></i> Tambah Pengguna
                            </a>
                        </div>
                    </div>
                    <div id="datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="datatable_length"><label>Show <select name="datatable_length" aria-controls="datatable" class="custom-select custom-select-sm form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-12 col-md-6"><div id="datatable_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="datatable"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="datatable" class="table table-striped dataTable no-footer" role="grid" aria-describedby="datatable_info">
                        <thead>
                            <tr role="row"><th width="5%" class="sorting_asc" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="#: activate to sort column descending" style="width: 9.01562px;">#</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Nama: activate to sort column ascending" style="width: 168.812px;">Nama</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Username: activate to sort column ascending" style="width: 117.578px;">Username</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Hak Akses: activate to sort column ascending" style="width: 121.031px;">Hak Akses</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Tanggal Gabung: activate to sort column ascending" style="width: 198.875px;">Tanggal Gabung</th><th width="10%" class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Aksi: activate to sort column ascending" style="width: 49.6875px;">Aksi</th></tr>
                        </thead>
                        <tbody>
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                        <tr class="odd">
                                    <td class="sorting_1">1</td>
                                    <td>Admin Kasatlantas</td>
                                    <td>kasatlantas</td>
                                    <td>Admin</td>
                                    <td>2021-06-02 23:35:07</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Aksi 
                                                <i class="mdi mdi-chevron-down"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1" style="margin: 0px;">
                                                <a class="dropdown-item" href="https://polresmagelang.id/permohonan/admin/laporan/edit/1">Ubah</a>
                                                <a class="dropdown-item remove" href="javascript:void(0);" data-id="1">Hapus</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr><tr class="even">
                                    <td class="sorting_1">2</td>
                                    <td>SPKT</td>
                                    <td>spkt</td>
                                    <td>Petugas</td>
                                    <td>2021-06-02 23:35:30</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Aksi 
                                                <i class="mdi mdi-chevron-down"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1">
                                                <a class="dropdown-item" href="https://polresmagelang.id/permohonan/admin/laporan/edit/2">Ubah</a>
                                                <a class="dropdown-item remove" href="javascript:void(0);" data-id="2">Hapus</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr><tr class="odd">
                                    <td class="sorting_1">3</td>
                                    <td>SIM</td>
                                    <td>sim</td>
                                    <td>Petugas</td>
                                    <td>2021-06-02 23:38:07</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Aksi 
                                                <i class="mdi mdi-chevron-down"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1">
                                                <a class="dropdown-item" href="https://polresmagelang.id/permohonan/admin/laporan/edit/3">Ubah</a>
                                                <a class="dropdown-item remove" href="javascript:void(0);" data-id="3">Hapus</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr><tr class="even">
                                    <td class="sorting_1">4</td>
                                    <td>BPKB</td>
                                    <td>bpkb</td>
                                    <td>Petugas</td>
                                    <td>2021-06-02 23:38:18</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Aksi 
                                                <i class="mdi mdi-chevron-down"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1">
                                                <a class="dropdown-item" href="https://polresmagelang.id/permohonan/admin/laporan/edit/4">Ubah</a>
                                                <a class="dropdown-item remove" href="javascript:void(0);" data-id="4">Hapus</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr><tr class="odd">
                                    <td class="sorting_1">5</td>
                                    <td>SKCK</td>
                                    <td>skck</td>
                                    <td>Petugas</td>
                                    <td>2021-06-02 23:38:28</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Aksi 
                                                <i class="mdi mdi-chevron-down"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1">
                                                <a class="dropdown-item" href="https://polresmagelang.id/permohonan/admin/laporan/edit/5">Ubah</a>
                                                <a class="dropdown-item remove" href="javascript:void(0);" data-id="5">Hapus</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr><tr class="even">
                                    <td class="sorting_1">6</td>
                                    <td>Raja Terakhir</td>
                                    <td>erika</td>
                                    <td>Petinggi</td>
                                    <td>2021-06-04 12:39:15</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Aksi 
                                                <i class="mdi mdi-chevron-down"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1">
                                                <a class="dropdown-item" href="https://polresmagelang.id/permohonan/admin/laporan/edit/6">Ubah</a>
                                                <a class="dropdown-item remove" href="javascript:void(0);" data-id="6">Hapus</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr><tr class="odd">
                                    <td class="sorting_1">7</td>
                                    <td>Receptionist</td>
                                    <td>masdepan</td>
                                    <td>Receptionist</td>
                                    <td>2021-06-07 23:41:18</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Aksi 
                                                <i class="mdi mdi-chevron-down"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1">
                                                <a class="dropdown-item" href="https://polresmagelang.id/permohonan/admin/laporan/edit/8">Ubah</a>
                                                <a class="dropdown-item remove" href="javascript:void(0);" data-id="8">Hapus</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr><tr class="even">
                                    <td class="sorting_1">8</td>
                                    <td>E Tilang</td>
                                    <td>etle</td>
                                    <td>Petugas</td>
                                    <td>2021-06-09 02:11:43</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Aksi 
                                                <i class="mdi mdi-chevron-down"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupVerticalDrop1">
                                                <a class="dropdown-item" href="https://polresmagelang.id/permohonan/admin/laporan/edit/9">Ubah</a>
                                                <a class="dropdown-item remove" href="javascript:void(0);" data-id="9">Hapus</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr></tbody>
                    </table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="datatable_info" role="status" aria-live="polite">Showing 1 to 8 of 8 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="datatable_previous"><a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item next disabled" id="datatable_next"><a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
                </div>
            </div>
        </div>
    </div>

    @section('js-library')
        <!-- Required datatable js -->
        <script src="{{ url('') }}/dalam/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="{{ url('') }}/dalam/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        <!-- Buttons examples -->
        <script src="{{ url('') }}/dalam/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="{{ url('') }}/dalam/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
        <script src="{{ url('') }}/dalam/libs/jszip/jszip.min.js"></script>
        <script src="{{ url('') }}/dalam/libs/pdfmake/build/pdfmake.min.js"></script>
        <script src="{{ url('') }}/dalam/libs/pdfmake/build/vfs_fonts.js"></script>
        <script src="{{ url('') }}/dalam/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="{{ url('') }}/dalam/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="{{ url('') }}/dalam/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>
        <!-- Responsive examples -->
        <script src="{{ url('') }}/dalam/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="{{ url('') }}/dalam/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>

        <!-- Datatable init js -->
        <script src="{{ url('') }}/dalam/js/pages/datatables.init.js"></script>

        <!-- Select2 -->
        <script src="{{ url('') }}/dalam/libs/select2/js/select2.min.js"></script>
        <script src="{{ url('') }}/dalam/js/pages/form-advanced.init.js"></script>
    @endsection
    @section('js-custom')
        <script>
            $(function() {
                $("#export-button").DataTable();
                // $('#export-button').DataTable( {
                //     dom: 'Bfrtip',
                //     buttons: [
                //         'copy', 'excel', 'pdf'
                //     ]
                // } );
            
                // let static value
                let baseUrl     = '{{ url('') }}';
                
                
                $.getJSON(baseUrl+'/api/mahasiswa/getAllProdi', (result) => {
                    if (result.error_code == '0') {
                        let opt = '<option value="">- Pilih -</option>';
                        $.each(result.data, function(i, item) {
                            opt += '<option value="'+item.id_prodi+'">'+item.nama_jenjang_pendidikan+' - '+item.nama_program_studi+'</option>';
                        });
                        $("#select-prodi").html(opt);
                    }else{
                        let opt = '<option value="">- Tidak Bisa -</option>';
                        $("#select-prodi").html(opt);
                    }
                    $("#select-prodi").select2({
                        placeholder: "Pilih Prodi",
                    });
                });
        
                $('#select-prodi').on('change', function() {
                    // var val1 = this.value;
                    $.getJSON(baseUrl+'/api/mahasiswa/getAllSemester', (result) => {
                        if (result.error_code == '0') {
                            let opt = '<option value="">- Pilih -</option>';
                            $.each(result.data, function(i, item) {
                                opt += '<option value="'+item.id_semester+'">'+item.nama_semester+'</option>';
                            });
                            $("#select-sem").html(opt);
                        }else{
                            let opt = '<option value="">- Tidak Bisa -</option>';
                            $("#select-sem").html(opt);
                        }
                        $("#select-sem").select2({
                            placeholder: "Pilih Semester",
                        });
                    });
                });
        
                $('#select-sem').on('change', function() {
                    $("#export-button").DataTable().clear().destroy();
                    
                    // var dynamic value
                    var val1 = $('#select-prodi').val();
                    var val2 = this.value;
                    
                    $("#export-button").DataTable({
                        responseive:  true,
                        autoWidth: false,
                        processing: true,
                        ajax: {
                            url: baseUrl+'/api/mahasiswa/getMahasiswaProdi/' +val1 +'/'+ val2,
                            method: 'POST'
                        },
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'excel', 'pdf', 'colvis'
                        ]
                    });
                });
            });
        </script>
    @endsection


@endsection