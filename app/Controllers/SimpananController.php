<?php

namespace App\Controllers;

use App\Models\MSimpanan;
use App\Models\MTransaksi;

class SimpananController extends RestfulController
{

  public function simpan()
  {
    $data = [
      'id_simpanan' => uniqid('S'),
      'nama_user' => $this->request->getVar('nama_user'),
      'jenis_simpanan' => $this->request->getVar('jenis_simpanan'),
      'nominal_simpanan' => $this->request->getVar('nominal_simpanan'),
      'tanggal_simpanan' => date('d M', time()),
    ];

    $model = new MSimpanan();
    $model->insert($data);

    $dataTransaksi = [
      'id_transaksi' => $data['id_simpanan'],
      'jenis_transaksi' => 'Simpanan',
      'nama_user' => $data['nama_user'],
      'nominal_transaksi' => $data['nominal_simpanan'],
      'tanggal_transaksi' => $data['tanggal_simpanan'],

    ];

    $modelTransaksi = new MTransaksi();
    $modelTransaksi->insert($dataTransaksi);

    $simpanan = $model->find($model->getInsertID());
    return $this->responseHasil(200, true, $simpanan);
  }

  public function semua_simpanan()
  {
    $model = new MSimpanan();
    $model->orderBy('id', 'DESC');
    $simpanan = $model->findAll();
    return $this->responseHasil(200, true, $simpanan);
  }

  public function total_simpanan()
  {
    $model = new MSimpanan();
    $simpanan = $model->select('sum(nominal_simpanan) as nominal_simpanan')->first();
    return $this->responseHasil(200, true, $simpanan);
  }

  public function detail_simpanan($id_simpanan)
  {
    $model = new MSimpanan();
    $simpanan = $model->find($id_simpanan);
    return $this->responseHasil(200, true, $simpanan);
  }

  public function tarik_simpanan($id_simpanan)
  {
    $model = new MSimpanan();

    $tb_simpanan = $model->where(['id_simpanan' => $id_simpanan])->first();

    $data = [
      'nominal_simpanan' => $tb_simpanan['nominal_simpanan'] - $this->request->getVar('nominal_simpanan'),
    ];

    $model->update($id_simpanan, $data);
    $simpanan = $model->find($id_simpanan);

    if ($model->where(['id_simpanan' => $id_simpanan])->first()['nominal_simpanan'] <= 0) {
      $model->delete($id_simpanan);
    }

    return $this->responseHasil(200, true, $simpanan);
  }
}
