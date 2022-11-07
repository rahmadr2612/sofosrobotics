<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use DB;
use Illuminate\Database\Eloquent\SoftDeletes;

class Robot_penawaranModel extends Model
{
    use HasFactory;

    protected $table = 'robot_penawaran';
    
    const CREATED_AT = 'create_time';
    const UPDATED_AT = 'update_time';

    protected $guarded = ['id'];

    public function robot()
    {
        return $this->belongsTo(Robot_masterModel::class, 'idRMaster', 'id');
    }

    public function perangkat()
    {
        return $this->belongsTo(Robot_perangkatModel::class, 'idRPerangkat', 'id');
    }

    public function pilihanJawaban()
    {
        return $this->belongsTo(Pilihan_jenisModel::class, 'jenisPilihan', 'id');
    }
    
    public function jawaban()
    {
        return $this->belongsTo(Robot_jawabanModel::class, 'id', 'idRPenawaran');
    }

    public function jawabanBanyak()
    {
        return $this->hasMany(Robot_jawabanModel::class, 'idRPenawaran', 'id');
    }
}