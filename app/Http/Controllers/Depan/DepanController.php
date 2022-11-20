<?php

//redirect ke folder
namespace App\Http\Controllers\Depan;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Robot_masterModel;
use App\Models\AgendaModel;

class DepanController extends Controller
{

    // Untuk panggil view
    private $views      = 'home';
    private $url        = 'depan';
    private $title      = 'Sofosrobotics';


    public function __construct()
    {
        $this->mRobot            = new Robot_masterModel();
        $this->mAgenda            = new AgendaModel();
    }

    public function index()
    {
        $robot     = $this->mRobot->get();
        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
            'robot'         => $robot
        ];
        $agenda     = $this->mAgenda->get();
        $data1 = [
            'title'         => $this->title,
            'url'           => $this->url,
            'agenda'         => $agenda
        ];
        // View
        return view($this->views . "/index", $data, $data1);
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
