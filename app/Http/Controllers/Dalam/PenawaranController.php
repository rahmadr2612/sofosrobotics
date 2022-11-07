<?php

//redirect ke folder
namespace App\Http\Controllers\Dalam;
use App\Http\Controllers\Controller;
use Str;

use Illuminate\Http\Request;

use App\Models\Robot_penawaranModel;
use App\Models\Pilihan_jenisModel;
use App\Models\Robot_perangkatModel;
use App\Models\Robot_masterModel;
use App\Models\Robot_jawabanModel;

class PenawaranController extends Controller
{

    private $views      = 'dalam/penawaran';
    private $url        = 'Penawaran';
    private $title      = 'Halaman Penawaran Komponen Robot';


    public function __construct()
    {
        $this->mPenawaran   = new Robot_penawaranModel();
        $this->mPilihan     = new Pilihan_jenisModel();
        $this->mPerangkat   = new Robot_perangkatModel();
        $this->mRobot       = new Robot_masterModel();
        $this->mJawaban     = new Robot_jawabanModel();
    }

    public function index()
    {
        $penawaran     = $this->mPenawaran->get();

        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
            'penawaran'     => $penawaran
        ];
        // View
        return view($this->views . "/index", $data);
        // echo "hood";
    }

    public function create()
    {
        $pilihan     = $this->mPilihan->get();
        $perangkat   = $this->mPerangkat->get();
        $robot       = $this->mRobot->get();

        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
            'pilihan'       => $pilihan,
            'perangkat'     => $perangkat,
            'robot'         => $robot
        ];
        // View
        return view($this->views . "/create", $data);
    }

    public function store(Request $request)
    {

        $validatedData = $request->validate([
            'idRMaster'         => 'required',
            'idRPerangkat'      => 'required',
            'penawaran'         => 'required|max:255',
            'komponen'          => 'required',
            'image'             => 'image|file|max:1024',
            'jasa'              => 'required',
            'jenisPilihan'      => 'required',
        ]);

        if($request->file('image')){
            // untuk menyimpan
            // $validatedData['image'] = $request->file('image')->store('robot-master');
            $file = $request->file('image');
            $fileName = Str::uuid()."_".time().".".$file->extension();
            $file->move(public_path() . "/assets/image/robot-master/", $fileName);
            $validatedData['image'] = $fileName;
        }

        $dataPenawaran = [
            'idRMaster'         => $validatedData['idRMaster'],
            'idRPerangkat'      => $validatedData['idRPerangkat'],
            'penawaran'         => $validatedData['penawaran'],
            'komponen'          => $validatedData['komponen'],
            'jenisPilihan'      => $request->jenisPilihan,
            'image'             => $validatedData['image'],
            'jasa'              => $validatedData['jasa'],
            // 'keterangan'        => $validatedData['keterangan'],
        ];

        // echo json_encode($validatedData); die;

        if($request->jenisPilihan == 1){
            $penawaran = $this->mPenawaran->create($dataPenawaran);
            $dataJawaban = [
                'idRMaster'         => $validatedData['idRMaster'],
                'idRPerangkat'      => $validatedData['idRPerangkat'],
                'idRPenawaran'      => $penawaran['id'],
                'jenisPilihan'      => $request->jenisPilihan,
                // 'jawaban'           => "Menggunakan",
                'harga'             => $request->hargaRadio,
                'required'             => $request->required,
            ];
            $this->mJawaban->create($dataJawaban);

        }else if($request->jenisPilihan == 2){
            for($oi = 0; $oi < count($request->hargaSatuan-1); $oi++){
                $dataJawaban = [
                    'idRMaster'         => $validatedData['idRMaster'],
                    'idRPerangkat'      => $validatedData['idRPerangkat'],
                    'idRPenawaran'      => $penawaran['id'],
                    'jenisPilihan'      => $request->jenisPilihan,
                    'satuan'            => $request->hargaSatuan[$oi],
                    'harga'             => $request->hargaPilihan[$oi],
                    'required'             => $request->required,
                ];
                $this->mJawaban->create($dataJawaban);
            }
            $dataPenawaran['satuan2'] = $request->satuan2;
            $penawaran = $this->mPenawaran->create($dataPenawaran);
        }


        // $this->mPerangkat->create($validatedData);

        return redirect('/admin/penawaran')->with('success', 'Penawaran Baru telah ditambahkan!');
    }

    public function show($id)
    {
        $penawaran      = $this->mPenawaran->where('id', $id)->first();
        
        $data = [
            'title'         => 'Halaman Penawaran Komponen',
            'url'           => $this->url,
            'penawaran'     => $penawaran,
        ];
        if ($penawaran['jenisPilihan'] == 2){
            $jawaban     = $this->mJawaban->where('idRPenawaran', $id)->get();
            $data['jawaban'] = $jawaban;
        }
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
