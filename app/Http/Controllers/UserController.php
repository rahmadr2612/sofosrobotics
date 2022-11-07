<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Library
use DB;
use Illuminate\Support\Facades\Hash;

// Model
use App\Models\User_model;
use App\Models\RoleModel;

class UserController extends Controller
{

     private $views      = 'auth';
     private $url        = '';
     private $title      = 'Halaman Login';
 
 
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

    public function loginProses(Request $request)
    {
        $credentials = $request->validate([
            // 'email'     => 'required|email:dns',
            'username'      => 'required',
            'password'      => 'required'
        ],[
            // 'email.required' => 'Email tidak boleh kosong',
            // 'email.email' => 'Email belum sesuai',
            'username.required' => 'Username tidak boleh kosong',
            'password.required' => 'Passwork tidak boleh kosong',
        ]);


        // Get Data
        $users      = $this->mUser->where('username', $credentials['username'])->first();
        
        // Check Data Exists or Not
        if ($users == null) {
            return redirect()->back()->with('gagal', 'Akun Tidak Ditemukan');
        }else{
            $usersRole  = $this->mRole->where('id', $users->role)->first();

            // Check Password True or False
            if (Hash::check($request->password, $users->password) == false) {
                return redirect()->back()->with('gagal', 'Kata Sandi Salah / Tidak Sesuai');
            }
            
            // Check Status is Active or InActive
            if ($users->status == 0) {
                return redirect()->back()->with('gagal', 'Akun Kamu Belum Aktif. Aktifkan Terlebih Dahulu Melalui Email');
            }else if($users->status == 1){

                // Create Session
                $setSession = [
                    'id_users'      => $users->id,
                    'username'      => $users->username,
                    'nama'          => $users->nama,
                    // 'bagian'        => $users->bagian,
                    'role'          => $users->role,
                    'status'        => $users->status,
                    'login'         => true,
                ];
                session($setSession);

                return redirect("$usersRole->url")->with('sukses', 'Berhasil Login');
            }
        }
        
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

    public function logout()
    {
        session()->flush();
        return redirect('login');
    }

    // public function create()
    // {
    //     //
    // }

    // public function store(Request $request)
    // {
    //     //
    // }

    // public function show(UserModel $userModel)
    // {
    //     //
    // }

    // public function edit(UserModel $userModel)
    // {
    //     //
    // }

    // public function update(Request $request, UserModel $userModel)
    // {
    //     //
    // }

    // public function destroy(UserModel $userModel)
    // {
    //     //
    // }
}
