<?php

//redirect ke folder
namespace App\Http\Controllers\Dalam;
use App\Http\Controllers\Controller;
use Str;

use Illuminate\Http\Request;

use App\Models\Robot_masterModel;

class RobotController extends Controller
{

    // Untuk panggil view
    private $views      = 'dalam/robot';
    
    // 
    private $url        = 'Robot';
    
    // Title head
    private $title      = 'Halaman Master Robot';


    public function __construct()
    {
        $this->mRobot            = new Robot_masterModel();
    
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
            // $validatedData['image'] = $request->file('image')->store('robot-master');
            $file = $request->file('image');
            $fileName = Str::uuid()."_".time().".".$file->extension();
            $file->move(public_path() . "/assets/image/robot-master/", $fileName);
            $validatedData['image'] = $fileName;
        }

        $this->mRobot->create($validatedData);

        return redirect('/admin/robot')->with('success', 'Robot baru telah ditambahkan!');
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
