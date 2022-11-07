<?php

//redirect ke folder
namespace App\Http\Controllers\Dalam;
use App\Http\Controllers\Controller;
use Str;

use Illuminate\Http\Request;

use App\Models\Robot_order;
use App\Models\Robot_orderTotalModel;

class OrderController extends Controller
{

    private $views      = 'dalam/order';
    private $url        = 'Order';
    private $title      = 'Halaman Order Robot';

    public function __construct()
    {
        $this->mOrder       = new Robot_order();
        $this->mOrderTot    = new Robot_orderTotalModel();
    
    }

    public function index()
    {
        $order     = $this->mOrderTot->get();

        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
            'order'         => $order,
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
        // $validatedData = $request->validate([
        //     'nama'          => 'required|max:255',
        //     'image'         => 'image|file|max:1024',
        // ]);

        // if($request->file('image')){
        //     // untuk menyimpan
        //     // $validatedData['image'] = $request->file('image')->store('robot-master');
        //     $file = $request->file('image');
        //     $fileName = Str::uuid()."_".time().".".$file->extension();
        //     $file->move(public_path() . "/assets/image/robot-master/", $fileName);
        //     $validatedData['image'] = $fileName;
        // }

        // $this->mRobot->create($validatedData);

        // return redirect('/admin/robot')->with('success', 'Robot baru telah ditambahkan!');
    }

    public function show($id)
    {
        $order              = $this->mOrderTot->where('kode_invoice', $id)->first();
        $orderDetail        = $this->mOrder->where('kode_invoice', $id)->get();

        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
            'order'         => $order,
            'orderDetail'   => $orderDetail,
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
