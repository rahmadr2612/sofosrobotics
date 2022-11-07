<?php

//redirect ke folder
namespace App\Http\Controllers\Depan;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use DB;
use Barryvdh\DomPDF\Facade as PDF;

use App\Models\Robot_penawaranModel;
use App\Models\Pilihan_jenisModel;
use App\Models\Robot_perangkatModel;
use App\Models\Robot_masterModel;
use App\Models\Robot_jawabanModel;
use App\Models\Robot_order;
use App\Models\Robot_orderTotalModel;

use App\Models\Ordermodel;
use App\Models\Order_detailModel;

class OrderController extends Controller
{

    // Untuk panggil view
    private $views      = 'home';
    private $url        = 'depan';
    private $title      = 'Sofosrobotics';


    public function __construct()
    {
        $this->mPenawaran   = new Robot_penawaranModel();
        $this->mPilihan     = new Pilihan_jenisModel();
        $this->mPerangkat   = new Robot_perangkatModel();
        $this->mRobot       = new Robot_masterModel();
        $this->mJawaban     = new Robot_jawabanModel();
        $this->mOrder       = new Robot_order();
        $this->mOrderTot    = new Robot_orderTotalModel();
    }

    public function index()
    {
        $robot     = $this->mRobot->get();
        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
            'robot'         => $robot
        ];
        // View
        return view($this->views . "/index", $data);
        // echo "hood";
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {

        $robot      = $this->mRobot->where('id', $request->idRobot)->first();
        $kode_invoice  = strtoupper(bin2hex(random_bytes(3)));

        $no=1;
        $sub = 0;

        // echo json_encode($request->all()); die;
        
        foreach($request->pesanan as $p){

            // $penawaran      = $this->mPenawaran->where('id', $p)->first();
            // $pesanan        = $this->mJawaban->where('idRPenawaran', $p)->first();

            $pesanan        = $this->mJawaban->where('id', $p)->first();
            $penawaran      = $this->mPenawaran->where('id', $pesanan['idRPenawaran'])->first();

            // echo "<tr>";
            // echo "<td>".$no++."</td>";
            // echo "<td>".$penawaran['penawaran']."</td>";
            // echo "<td>".$penawaran['komponen']."</td>";

            $total = $pesanan['harga']+$pesanan['jasa'];

            $simpan = [
                'robot'             => $robot['nama'],
                'kode_invoice'      => $kode_invoice,
                'penawaran'         => $penawaran['penawaran'],
                'komponen'          => $penawaran['komponen'],
                'jasa'              => $penawaran['jasa'],
                'harga'             => $pesanan['harga'],
                'total'             => $total,
            ];
            
            if ($penawaran['jenisPilihan'] == 2){
                
                $order[] =[
                    'penawaran'         => $penawaran['penawaran'],
                    'komponen'          => $penawaran['komponen'],
                    'jasa'              => $penawaran['jasa'],
                    'harga'             => $pesanan['harga'],
                    'total'             => $total,
                    'pilihan'           => $pesanan['satuan']." ".$penawaran['satuan2']
                ];

                $simpan['pilihan'] = $pesanan['satuan']." ".$penawaran['satuan2'];

            }else{

                $order[] =[
                    'penawaran'         => $penawaran['penawaran'],
                    'komponen'          => $penawaran['komponen'],
                    'jasa'              => $penawaran['jasa'],
                    'harga'             => $pesanan['harga'],
                    'total'             => $total,
                    'pilihan'           => "Menggunakan"
                ];

                $simpan['pilihan'] = "Menggunakan";

            }
            $sub = $sub + $total;

            $this->mOrder->create($simpan);
            
            // echo "<td>".$penawaran['jasa']."</td>";
            // echo "<td>".$pesanan['harga']."</td>";
            // $total = $pesanan['harga']+$pesanan['jasa'];
            // echo "<td>".$total."</td>";

            // echo "</tr>";
        }
        // echo "</table>";

        $totalan = [
            'sub'           => $sub,
            'ppn'           => "11%",
            'tot'           => $sub * 110/100,
            'kode_invoice'  => $kode_invoice,
        ];
        $this->mOrderTot->create($totalan);

        $data = [
            'kode_invoice'  => $kode_invoice,
            'waktu'         => date('Y-m-d H:i:s'),
            'order'         => $order,
            'totalan'       => $totalan,
        ];


        // export pdf
        // $mpdf = new \Mpdf\Mpdf();
        // $dataHml = view("$this->views/invoice", $data);
        // $mpdf->WriteHTML($dataHml);
        // $mpdf->Output();

        // dompfd
        $pdf = PDF::loadView($this->views . "/invoice2", $data);
        return $pdf->download('invoice.pdf');


        return view($this->views . "/invoice2", $data);

    }

    private function getDetail()
    {
        // SELECT
        // rp.`id`, rp.`penawaran`, rp.`komponen`, rj.`harga`, rp.`jasa`
        // FROM robot_penawaran AS rp
        // JOIN robot_jawaban AS rj ON rj.`idRPenawaran` = rp.`id`
        // WHERE rp.`id` IN (2,4)
        $query = DB::table('robot_penawaran AS rp');
        $query->selectRaw('rp.`id`, rp.`penawaran`, rp.`komponen`, rj.`harga`, rp.`jasa`');
        $query->join('robot_jawaban AS rj', 'rj.idRPenawaran', '=', 'rp.id');
        $query->whereIn('rp.id', [$id]);
    }

    public function show($id=null)
    {
        $robot          = $this->mRobot->where('id', $id)->first();

        if ($robot == null){
            return redirect('/');
        }
        $penawaran      = $this->mPenawaran->where('idRMaster', $id)->get();
        $perangkat      = $this->mPerangkat->get();
        
        $data = [
            'title'         => 'Halaman Penawaran Komponen',
            'url'           => $this->url,
            'robot'         => $robot,
            'penawaran'     => $penawaran,
            'perangkat'     => $perangkat
        ];
        // View
        return view($this->views . "/show", $data);
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
