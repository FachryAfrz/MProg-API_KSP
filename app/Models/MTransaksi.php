<?php

namespace App\Models;

use CodeIgniter\Model;

class MTransaksi extends Model
{
  protected $table = 'transaksi';
  protected $primaryKey = 'id';
  protected $allowedFields = ['nama_user', 'jenis_transaksi', 'nominal_transaksi', 'tanggal_transaksi', 'id_transaksi'];
}
