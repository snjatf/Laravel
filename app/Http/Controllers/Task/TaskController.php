<?php

namespace App\Http\Controllers\Task;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Task;
use App\Taskload;
use Illuminate\Support\Facades\DB;
use Redirect, Input, Auth;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //使用的Laravel的blade模版,{{ $var }}会转义html语义的
//        $tasks = DB::table('tasks')->take(5)->get();
        $tasks=Task::where('task_status','<',3)->paginate(12);
        // var_dump($tasks);
        return view('task.main',['name' => 'wank','theme' => 'default','tasks' => $tasks]);
    }

    //action()方法只针对form表单
    public function details($id)
    {
        echo $id;
        return view('task.details');
    }

    public function get_details($id)
    {
        $tasks = DB::table('tb_task')->where('id',$id)->first();
        return json_encode($tasks,JSON_UNESCAPED_UNICODE);
//        print_r($tasks) ;
    }

    public function aa()
    {
        echo 'Ok';
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        $this->validate($request, [
//            'title' => 'required|unique:pages,title|max:255',
//            'body' => 'required',
//        ]);
        var_dump($request);
        echo "ok";
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id task_id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        //echo Input::post("task_id");
        $id=$request.get("task_id");
        echo $id;die;
//        $task = Task::find($id);
//        $workload =Taskload::where('task_id','=',$id);
//        $workload->delete();
//        var_dump(json_encode($workload));die;
//        $task->comment = Input::get('note-input');
//        $task->remember_token = Input::get('sel_dev')."and".Input::get('sel_dev');
//        $task->task_expect = Input::get('task_expect');;//Auth::user()->id;
//        var_dump(json_encode($task));die;
//        if ($task->save()) {
//            return Redirect::to('admin');
//        } else {
//            return Redirect::back()->withInput()->withErrors('保存失败！');
//        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
