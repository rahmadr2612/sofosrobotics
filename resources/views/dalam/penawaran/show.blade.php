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
                    <h4 class="card-title text-center">Penawaran Komponen</h4>
                </div>
                <div class="card-body">
                    <table id="datatable" class="table text-center">
                        <tbody>
                            <tr>
                                <td class="text-sm-end col-sm-6">Jenis Robot</td>
                                <td>:</td>
                                <td class="text-sm-start col-sm-6">{{ $penawaran->robot->nama }}</td>
                            </tr>
                            <tr>
                                <td class="text-sm-end">Jenis Perangkat</td>
                                <td>:</td>
                                <td class="text-sm-start">{{ $penawaran->perangkat->nama }}</td>
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
                    <div class="text-center">
                        <img src="{{ url('') }}//assets/image/robot-master/{{ $penawaran->image }}" alt="" class="img-fluid img-5">
                    </div>
                    <table id="datatable" class="table text-center">
                        <tbody>
                        <tr>
                            <td class="text-sm-end col-sm-6">Penawaran Komponen</td>
                            <td>:</td>
                            <td class="text-sm-start col-sm-6">{{ $penawaran->penawaran }}</td>
                        </tr>
                        <tr>
                            <td class="text-sm-end">Menggunakan</td>
                            <td>:</td>
                            <td class="text-sm-start">{{ $penawaran->komponen }}</td>
                        </tr>
                        <tr>
                            <td class="text-sm-end">Harga Jasa</td>
                            <td>:</td>
                            <td class="text-sm-start">Rp. {{ $penawaran->jasa }}</td>
                        </tr>
                        @if ($penawaran->jenisPilihan == 1)
                            <tr>
                                <td class="text-sm-end">Harga Komponen</td>
                                <td>:</td>
                                <td class="text-sm-start">Rp. {{ $penawaran->jawaban->harga }}</td>
                            </tr>
                        @elseif ($penawaran->jenisPilihan == 2)
                            @foreach ($jawaban as $ja)
                                <tr>
                                    <td class="text-sm-end">Harga Komponen</td>
                                    <td>:</td>
                                    <td class="text-sm-start">Rp. {{ $ja->harga }} ({{ $ja->satuan }} {{ $penawaran->satuan2 }})</td>
                                </tr>
                            @endforeach
                        @endif
                    </tbody></table>
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
            
        </script>
    @endsection


@endsection