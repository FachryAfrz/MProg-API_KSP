<?php

namespace App\Models;

use CodeIgniter\Model;

class MSimpanan extends Model
{
  protected $table = 'simpanan';
  protected $primaryKey = 'id_simpanan';
  protected $allowedFields = ['id_simpanan', 'nama_user', 'jenis_simpanan', 'nominal_simpanan'];
}
