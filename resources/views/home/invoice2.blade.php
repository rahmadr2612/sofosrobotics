<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>A simple, clean, and responsive HTML invoice template</title>

		<style>
			.invoice-box {
				max-width: 800px;
				margin: auto;
				padding: 30px;
				border: 1px solid #eee;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
				font-size: 12px;
				line-height: 24px;
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				color: #555;
			}

			.invoice-box table {
				width: 100%;
				line-height: inherit;
				text-align: left;
			}

			.invoice-box table td {
				padding: 5px;
				vertical-align: top;
			}

			.invoice-box table tr td:nth-child(2) {
				text-align: left;
			}

			.invoice-box table tr.top table td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.top table td.title {
				font-size: 45px;
				line-height: 45px;
				color: #333;
			}

			.invoice-box table tr.information table td {
				padding-bottom: 40px;
			}

			.invoice-box table tr.heading td {
				background: #eee;
				border-bottom: 1px solid #ddd;
				font-weight: bold;
			}

			.invoice-box table tr.details td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.item td {
				border-bottom: 1px solid #eee;
			}

			.invoice-box table tr.item.last td {
				border-bottom: none;
			}

			.invoice-box table tr.total td:nth-child(2) {
				border-top: 2px solid #eee;
				font-weight: bold;
			}

			@media only screen and (max-width: 600px) {
				.invoice-box table tr.top table td {
					width: 100%;
					display: block;
					text-align: center;
				}

				.invoice-box table tr.information table td {
					width: 100%;
					display: block;
					text-align: center;
				}
			}

			/** RTL **/
			.invoice-box.rtl {
				direction: rtl;
				font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
			}

			.invoice-box.rtl table {
				text-align: right;
			}

			.invoice-box.rtl table tr td:nth-child(2) {
				text-align: left;
			}
		</style>
	</head>

	<body>
		<div class="invoice-box">
			<table cellpadding="0" cellspacing="0" style="font-size: 14px;">
				<tr class="top">
					<td colspan="2">
						<table>
							<tr class="title">
								<td>
									<img src="https://sofosrobotics.id/assets/image/icon-text.png" style="width: 100%; max-width: 300px" />
								</td>

								<td style="text-align: right;">
									Invoice #: {{ $kode_invoice }}<br />
									Created: {{ $waktu }}<br />
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
								<td>
									Kampus Udinus Gedung I<br />
									Jl. Nakula 1 No.5, Semarang City<br />
									Indonesia, 50131
								</td>

								<td style="text-align: right;">
									Bapak Arga<br />
									+62 812345678<br />
                                    info@sofosrobotics.id
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
            <table cellpadding="0" cellspacing="0">
                <tr class="heading">
                    <td><strong>Nama Modul</strong></td>
                    <td><strong>Nama Komponen</strong></td>
                    <td><strong>Pilihan</strong></td>
                    <td><strong>Biaya Jasa</strong></td>
                    <td><strong>Biaya Komponen</strong></td>
                    <td><strong>Totals</strong></td>
                </tr>
                @foreach ($order as $o)
                    <tr class="details">
                        <td>{{ $o['penawaran'] }}</td>
                        <td>{{ $o['komponen'] }}</td>
                        <td>{{ $o['pilihan'] }}</td>
                        <td>{{ "Rp" . number_format($o['jasa'],2,',','.') }}</td>
                        <td>{{ "Rp" . number_format($o['harga'],2,',','.') }}</td>
                        <td>{{ "Rp" . number_format($o['total'],2,',','.') }}</td>
                    </tr>
                @endforeach
                <tr>
                    <td class="thick-line"></td>
                    <td class="thick-line"></td>
                    <td class="thick-line"></td>
                    <td class="thick-line"></td>
                    <td class="thick-line text-center"><strong>Subtotal</strong></td>
                    <td class="thick-line text-right">{{ "Rp" . number_format($totalan['sub'],2,',','.') }}</td>
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
                    <td class="thick-line text-right">{{ "Rp" . number_format($totalan['tot'],2,',','.') }}</td>
                </tr>
            </table>
		</div>
	</body>
</html>