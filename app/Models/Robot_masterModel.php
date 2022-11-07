<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use DB;
use Illuminate\Database\Eloquent\SoftDeletes;

class Robot_masterModel extends Model
{
    use HasFactory;

    protected $table = 'robot_master';
    
    const CREATED_AT = 'create_time';
    const UPDATED_AT = 'update_time';

    protected $guarded = ['id'];

    // public function pavingBentukJenis()
    // {
    //     return $this->belongsTo(PavingBentukJenisModel::class, 'idPvBentuk', 'id');
    // }

    // public function KekuatanPavingJenis()
    // {
    //     return $this->belongsTo(KekuatanPavingJenis::class, 'idPvKekuatan', 'id');
    // }

}