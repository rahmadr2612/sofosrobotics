<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>sofosrobotics | Invoice Pembayaran</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <style>
        .invoice-title h2, .invoice-title h3 {
            display: inline-block;
        }

        .table > tbody > tr > .no-line {
            border-top: none;
        }

        .table > thead > tr > .no-line {
            border-bottom: none;
        }

        .table > tbody > tr > .thick-line {
            border-top: 2px solid;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="invoice-title">
                    <h2>Invoice sofosrobotics.id</h2><h3 class="pull-right">Order # {{ $kode_invoice }}</h3>
                </div>
                <hr>
                {{-- <div class="row">
                    <div class="col-xs-6">
                        <address>
                        <strong>Billed To:</strong><br>
                            John Smith<br>
                            1234 Main<br>
                            Apt. 4B<br>
                            Springfield, ST 54321
                        </address>
                    </div>
                    <div class="col-xs-6 text-right">
                        <address>
                        <strong>Shipped To:</strong><br>
                            Jane Smith<br>
                            1234 Main<br>
                            Apt. 4B<br>
                            Springfield, ST 54321
                        </address>
                    </div>
                </div> --}}
                <div class="row">
                    <div class="col-xs-6">
                        <address>
                            <strong>Payment Method:</strong><br>
                            +62 812345678<br>
                            info@sofosrobotics.id
                        </address>
                    </div>
                    <div class="col-xs-6 text-right">
                        <address>
                            <strong>Order Date:</strong><br>
                            {{ $waktu }}<br><br>
                        </address>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Order summary</strong></h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-condensed">
                                <thead>
                                    <tr>
                                        <td><strong>Nama Modul</strong></td>
                                        <td class="text-center"><strong>Nama Komponen</strong></td>
                                        <td class="text-center"><strong>Pilihan</strong></td>
                                        <td class="text-center"><strong>Biaya Jasa</strong></td>
                                        <td class="text-center"><strong>Biaya Komponen</strong></td>
                                        <td class="text-right"><strong>Totals</strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    @foreach ($order as $o)
                                        <tr>
                                            <td>{{ $o['penawaran'] }}</td>
                                            <td class="text-center">{{ $o['komponen'] }}</td>
                                            <td class="text-center">{{ $o['pilihan'] }}</td>
                                            <td class="text-center">{{ "Rp " . number_format($o['jasa'],2,',','.') }}</td>
                                            <td class="text-center">{{ "Rp " . number_format($o['harga'],2,',','.') }}</td>
                                            <td class="text-right">{{ "Rp " . number_format($o['total'],2,',','.') }}</td>
                                        </tr>
                                    @endforeach

                                    <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                    {{-- <tr>
                                        <td>BS-200</td>
                                        <td class="text-center">$10.99</td>
                                        <td class="text-center">1</td>
                                        <td class="text-right">$10.99</td>
                                    </tr>
                                    <tr>
                                        <td>BS-400</td>
                                        <td class="text-center">$20.00</td>
                                        <td class="text-center">3</td>
                                        <td class="text-right">$60.00</td>
                                    </tr>
                                    <tr>
                                        <td>BS-1000</td>
                                        <td class="text-center">$600.00</td>
                                        <td class="text-center">1</td>
                                        <td class="text-right">$600.00</td>
                                    </tr> --}}
                                    <tr>
                                        <td class="thick-line"></td>
                                        <td class="thick-line"></td>
                                        <td class="thick-line"></td>
                                        <td class="thick-line"></td>
                                        <td class="thick-line text-center"><strong>Subtotal</strong></td>
                                        <td class="thick-line text-right">{{ "Rp " . number_format($totalan['sub'],2,',','.') }}</td>
                                    </tr>
                                    <tr>
                                        <td class="no-line"></td>
                                        <td class="no-line"></td>
                                        <td class="no-line"></td>
                                        <td class="no-line"></td>
                                        <td class="no-line text-center"><strong>Ppn</strong></td>
                                        <td class="no-line text-right">{{ $totalan['ppn'] }}</td>
                                    </tr>
                                    <tr>
                                        <td class="no-line"></td>
                                        <td class="no-line"></td>
                                        <td class="no-line"></td>
                                        <td class="no-line"></td>
                                        <td class="no-line text-center"><strong>Total</strong></td>
                                        <td class="thick-line text-right">{{ "Rp " . number_format($totalan['tot'],2,',','.') }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>