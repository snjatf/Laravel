<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    //
    protected $table = 'tasks';

    public function GetWorkloads()
    {
        return $this->hasMany('App\Taskload', 'task_id', 'id');
    }
}
