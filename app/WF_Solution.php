<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use EndaEditor;

class WF_Solution extends Model
{
    //
    protected $table = 'tb_solutions';

    protected $appends = ['Html'];

    public function getHtmlAttribute()
    {
        return $this->attributes['Html'] =$this->markDecode();
    }

    protected function markDecode()
    {
        return EndaEditor::MarkDecode($this->solution_content);
    }

}
