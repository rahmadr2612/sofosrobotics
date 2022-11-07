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
            <div class="card border-top border-0 border-4 border-info">
                <div class="card-header">
                    <h4 class="card-title text-center">Pembelian Robot</h4>
                </div>
                <div class="card-body">
                    <table id="datatable" class="table text-center">
                        <tbody>
                            <tr>
                                <td class="text-sm-end col-sm-6">Kode Invoice</td>
                                <td>:</td>
                                <td class="text-sm-start col-sm-6">{{ $order->kode_invoice }}</td>
                            </tr>
                            <tr>
                                <td class="text-sm-end">Total</td>
                                <td>:</td>
                                <td class="text-sm-start">{{ $order->sub }}</td>
                            </tr>
                            <tr>
                                <td class="text-sm-end">ppn</td>
                                <td>:</td>
                                <td class="text-sm-start">{{ $order->ppn }}</td>
                            </tr>
                            <tr>
                                <td class="text-sm-end">Total Akhir</td>
                                <td>:</td>
                                <td class="text-sm-start">{{ $order->tot }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <table id="datatable" class="table table-striped">
                        <thead>
                            <tr>
                                <th width="5%">#</th>
                                <th>Penawaran</th>
                                <th>Komponen</th>
                                <th>Pilihan</th>
                                <th>Jasa</th>
                                <th>Harga</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($orderDetail as $od)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $od->penawaran }}</td>
                                    <td>{{ $od->komponen }}</td>
                                    <td>{{ $od->pilihan }}</td>
                                    <td>{{ $od->jasa }}</td>
                                    <td>{{ $od->harga }}</td>
                                    <td>{{ $od->total }}</td>
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