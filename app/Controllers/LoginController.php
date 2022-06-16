<?php

namespace App\Controllers;

use App\Models\MLogin;
use App\Models\MUser;

class LoginController extends RestfulController
{
  public function login()
  {
    $email = $this->request->getVar('email');
    $password = $this->request->getVar('password');

    $model = new MLogin();
    $user = $model->where(['email' => $email])->first();
    if (!$user) {
      return $this->responseHasil(400, false, 'Email tidak ditemukan!');
    }
    if (!password_verify($password, $user['password'])) {
      return $this->responseHasil(400, false, 'Password tidak valid!');
    }

    $data = [
      'user' => [
        'id_user' => $user['id_user'],
        'email' => $user['email'],
      ],
    ];
    return $this->responseHasil(200, true, $data);
  }
}
