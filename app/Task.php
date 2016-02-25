<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    //
    protected $table = 'tb_task';

    public function hasManyWorker()
    {
        return $this->hasMany('App\Taskload', 'id', 'task_id');
    }
}
