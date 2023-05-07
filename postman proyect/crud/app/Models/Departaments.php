<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Departaments extends Model
{
    use HasFactory;
    use HasFactory;
    protected $table='departaments';
    protected $primaryKey ='id';
    public $timestamps = false;
    protected $fillable = [
        'id',
        'name',
        'pais_id'
    ];
}
