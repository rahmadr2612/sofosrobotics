<?php

//redirect ke folder
namespace App\Http\Controllers\Dalam;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use App\Models\Robot_perangkatModel;

class PerangkatController extends Controller
{

    private $views      = 'dalam/perangkat';
    private $url        = 'Perangkat';
    private $title      = 'Halaman Perangkat Robot';


    public function __construct()
    {
        $this->mPerangkat            = new Robot_perangkatModel();
    }

    public function index()
    {
        $perangkat     = $this->mPerangkat->get();

        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
            'perangkat'     => $perangkat
        ];
        // View
        return view($this->views . "/index", $data);
        // echo "hood";
    }

    public function create()
    {
        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
        ];
        // View
        return view($this->views . "/create", $data);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama'          => 'required|max:255',
            'image'         => 'image|file|max:1024',
        ]);

        if($request->file('image')){
            // untuk menyimpan
            $validatedData['image'] = $request->file('image')->store('robot-master');
        }

        $this->mPerangkat->create($validatedData);

        return redirect('/admin/perangkat')->with('success', 'Perangkat Master baru telah ditambahkan!');
    }

    public function show($id)
    {
        //
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
