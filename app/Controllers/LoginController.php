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

    $model = new MUser();
    $user = $model->where(['email' => $email])->first();
    if (!$user) {
      return $this->responseHasil(400, false, 'Email tidak ditemukan!');
    }
    if (!password_verify($password, $user['password'])) {
      return $this->responseHasil(400, false, 'Password tidak valid!');
    }

    $login = new MLogin();
    $auth_key = $this->RandomString();
    $login->save([
      'user_id' => $user['id'],
      'auth_key' => $auth_key,
    ]);

    $data = [
      'token' => $auth_key,
      'user' => [
        'id_user' => $user['id_user'],
        'email' => $user['email'],
      ],
    ];
    return $this->responseHasil(200, true, $data);
  }

  private function RandomString($length = 100)
  {

    $karakter = '012345678dssd9abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $panjang_karakter = strlen($karakter);
    $str = '';
    for ($i = 0; $i < $length; $i++) {
      $str .= $karakter[rand(0, $panjang_karakter - 1)];
    }
    return $str;
  }
}
