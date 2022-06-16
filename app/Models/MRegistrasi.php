<?php

namespace App\Models;

use CodeIgniter\Model;

class MRegistrasi extends Model
{
  protected $table = 'user';
  protected $allowedFields = ['email', 'password', 'nama', 'id_user'];
}
