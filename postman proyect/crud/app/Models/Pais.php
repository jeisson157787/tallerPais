<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pais extends Model
{
    use HasFactory;
    protected $table='pais';
    protected $primaryKey ='id';
    public $timestamps = false;
    protected $fillable = [
        'id',
        'name',
        'flag',
        'capital'
    ];
}
