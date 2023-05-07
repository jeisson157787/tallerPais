<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    use HasFactory;
    protected $table='users';
    protected $primaryKey ='id';
    public $timestamps = false;
    protected $fillable = [
        'id',
        'name',
        'lastname',
        'email',
        'password',
        'date_birth',
        'school_id',
        'departaments_id',
    ];
}
