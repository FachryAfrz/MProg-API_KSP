<?php

namespace App\Controllers;

use App\Models\MTransaksi;


class TransaksiController extends RestfulController
{
  public function semua_transaksi()
  {
    $model = new MTransaksi();
    $model->orderBy('id', 'DESC')->limit(10);
    $transaksi = $model->find();

    return $this->responseHasil(200, true, $transaksi);
  }
}
