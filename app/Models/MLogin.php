<?php

namespace App\Models;

use CodeIgniter\Model;

class MLogin extends Model
{
  protected $table = 'user';
  protected $allowedFields = ['email', 'password'];
}
