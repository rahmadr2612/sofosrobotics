<?php

//redirect ke folder
namespace App\Http\Controllers\Dalam;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class DashboardController extends Controller
{

    // Untuk panggil view
    private $views      = 'dalam/dashboard';
    
    // 
    private $url        = 'Dashboard';
    
    // Title head
    private $title      = 'Halaman Dashboard';


    public function __construct()
    {
        // Di isi Construct
    
    }

    public function index()
    {
        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
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
