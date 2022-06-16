<?php

namespace App\Controllers;

use App\Models\MPinjaman;
use App\Models\MSimpanan;
use App\Models\MTransaksi;

class PinjamanController extends RestfulController
{

  public function pinjam()
  {
    $ModelSimpanan = new MSimpanan();
    $TotalSimpanan = $ModelSimpanan->select('sum(nominal_simpanan) as nominal_simpanan')->first();
    if (array_sum($TotalSimpanan) < $this->request->getVar('nominal_pinjaman')) {
      return $this->responseHasil(420, false, "Simpanan tidak cukup!");
    } else {
      $data = [
        'id_pinjaman' => uniqid('P'),
        'nama_user' => $this->request->getVar('nama_user'),
        'jenis_pinjaman' => $this->request->getVar('jenis_pinjaman'),
        'nominal_pinjaman' => $this->request->getVar('nominal_pinjaman'),
        'tanggal_pinjaman' => time(),
      ];

      $model = new MPinjaman();
      $model->insert($data);

      $dataTransaksi = [
        'id_transaksi' => $data['id_pinjaman'],
        'jenis_transaksi' => 'Pinjaman',
        'nama_user' => $data['nama_user'],
        'nominal_transaksi' => $data['nominal_pinjaman'],
        'tanggal_transaksi' => $data['tanggal_pinjaman'],

      ];

      $modelTransaksi = new MTransaksi();
      $modelTransaksi->insert($dataTransaksi);

      $pinjaman = $model->find($model->getInsertID());
      return $this->responseHasil(200, true, $pinjaman);
    }
  }

  public function semua_pinjaman()
  {
    $model = new MPinjaman();
    $pinjaman = $model->findAll();
    return $this->responseHasil(200, true, $pinjaman);
  }

  public function total_pinjaman()
  {
    $model = new MPinjaman();
    $pinjaman = $model->select('sum(nominal_pinjaman) as nominal_pinjaman')->first();
    return $this->responseHasil(200, true, $pinjaman);
  }

  public function selisih()
  {
    $ModelSimpanan = new MSimpanan();
    $ModelPinjaman = new MPinjaman();

    $TotalSimpanan = $ModelSimpanan->select('sum(nominal_simpanan) as nominal_simpanan')->first();
    $TotalPinjaman = $ModelPinjaman->select('sum(nominal_pinjaman) as nominal_pinjaman')->first();

    $selisih = array_sum($TotalSimpanan) - array_sum($TotalPinjaman);

    return $this->responseHasil(200, true, $selisih);
  }

  public function detail_pinjaman($id_pinjaman)
  {
    $model = new MPinjaman();
    $pinjaman = $model->find($id_pinjaman);
    return $this->responseHasil(200, true, $pinjaman);
  }

  public function tarik_pinjaman($id_pinjaman)
  {
    $model = new MPinjaman();

    $tb_pinjaman = $model->where(['id_pinjaman' => $id_pinjaman])->first();

    $data = [
      'nominal_pinjaman' => $tb_pinjaman['nominal_pinjaman'] - $this->request->getVar('nominal_pinjaman'),
    ];

    $model->update($id_pinjaman, $data);
    $pinjaman = $model->find($id_pinjaman);

    if ($model->where(['id_pinjaman' => $id_pinjaman])->first()['nominal_pinjaman'] <= 0) {
      $model->delete($id_pinjaman);
    }

    return $this->responseHasil(200, true, $pinjaman);
  }
}
