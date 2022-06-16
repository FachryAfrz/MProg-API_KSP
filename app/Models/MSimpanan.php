<?php

namespace App\Models;

use CodeIgniter\Model;

class MSimpanan extends Model
{
  protected $table = 'simpanan';
  protected $primaryKey = 'id_simpanan';
  protected $allowedFields = ['id_simpanan', 'nama_user', 'jenis_simpanan', 'nominal_simpanan', 'tanggal_simpanan'];

  // public function total_simpanan()
  // {
  //   $db      = \Config\Database::connect();
  //   $builder = $db->table('simpanan');

  //   $builder->selectSum('nominal_simpanan');
  //   $query = $builder->get();
  //   return $query;
  // }
}
