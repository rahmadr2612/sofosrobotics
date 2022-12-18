<?php

//redirect ke folder
namespace App\Http\Controllers\Depan;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Robot_masterModel;
use App\Models\AgendaModel;

class AgendaController extends Controller
{

    // Untuk panggil view
    private $views      = 'home';
    private $url        = 'depan';
    private $title      = 'Sofosrobotics';


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
            'agenda'         => $agenda
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
        //
    }

    public function show($id)
    {
        // echo "hahahha ".$id;
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
