<?php

//redirect ke folder
namespace App\Http\Controllers\Dalam;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use App\Models\AgendaModel;

class AgendaController extends Controller
{

    private $views      = 'dalam/agenda';
    private $url        = 'Agenda';
    private $title      = 'Halaman Agenda Robot';


    public function __construct()
    {
        $this->mAgenda            = new AgendaModel();
    }

    public function index()
    {
        $agenda     = $this->mAgenda->get();

        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
            'agenda'        => $agenda
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

        $this->mAgenda->create($validatedData);

        return redirect('/admin/agenda')->with('success', 'Event baru telah ditambahkan!');
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
