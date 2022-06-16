<?php

namespace App\Models;

use CodeIgniter\Model;

class MPinjaman extends Model
{
  protected $table = 'pinjaman';
  protected $primaryKey = 'id_pinjaman';
  protected $allowedFields = ['id_pinjaman', 'nama_user', 'jenis_pinjaman', 'nominal_pinjaman', 'tanggal_pinjaman'];
}
