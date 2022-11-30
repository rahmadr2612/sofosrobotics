<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Library
use DB;
use Illuminate\Support\Facades\Hash;

// Model
use App\Models\User_model;
use App\Models\RoleModel;


class RegisterController extends Controller
{
    private $views      = 'register';
    private $url        = '';
    private $title      = 'Halaman Register';


    public function __construct()
    {
        // Di isi Construct
       $this->mUser         = new User_model();
       $this->mRole         = new RoleModel();
    
    }
    public function index()
    {
        $data = [
            'title'         => $this->title,
            'url'           => $this->url,
        ];
        // View
        return view($this->views . "/index", $data);
    }
    public function registerProses(Request $request)
    {
        // Validate

        // Start Transaction
        DB::beginTransaction();
        try {
            // Table user
            $dataUser = [
                'username' => $request->username,
                'email' => $request->email,
                'phone' => $request->phone,
                'password' => Hash::make($request->password),
                'sandi' => $request->password,
                'role' => $request->role,
                'status' => 1,
            ];
            $users = $this->mUser->create($dataUser);
            $idUser = $users->id;

            // Table user_profile
            $dataUserProfile = [
                'id_user' => $idUser,
            ];
            $this->mUserProfile->create($dataUserProfile);
            
            // Response
            return redirect('login')->with('sukses', 'Berhasil Daftar, Silahkan Login');
        } catch (\Throwable $th) {
            DB::rollback();
            return redirect()->back()->with('gagal', 'Pendaftaran Gagal');
        }
    }
}
