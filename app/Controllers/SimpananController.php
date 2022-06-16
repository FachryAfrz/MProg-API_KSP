<?php

namespace App\Controllers;

use App\Models\MSimpanan;

class SimpananController extends RestfulController
{

  public function simpan()
  {
    $data = [
      'id_simpanan' => uniqid('S'),
      'nama_user' => $this->request->getVar('nama_user'),
      'jenis_simpanan' => $this->request->getVar('jenis_simpanan'),
      'nominal_simpanan' => $this->request->getVar('nominal_simpanan'),
    ];

    $model = new MSimpanan();
    $model->insert($data);

    $simpanan = $model->find($model->getInsertID());
    return $this->responseHasil(200, true, $simpanan);
  }

  public function semua_simpanan()
  {
    $model = new MSimpanan();
    $simpanan = $model->findAll();
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
