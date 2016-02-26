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
        $tasks=Task::where('status','<',3)->paginate(12);
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
        //$tasks = DB::table('tasks')->where('id',$id)->first();
        $tasks=Task::find($id);


        $taskload=$tasks->GetWorkloads();
        var_dump(json_encode($taskload));die;
        return response()->json($taskload);
    }


    public function aa()
    {
//        return response()->json(['name' => 'Abigail', 'state' => 'CA']);
        $pathToFile="../TaskController.php";
        return response()->download($pathToFile);
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
//        var_dump($request);
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
        $taskid=$request->input("task_id");
        $task = Task::find($taskid);
        $task->ekp_expect=$request->input("task_deadline");
        $task->comment=$request->input("remark");
        //先删除
        $oldworkload =Taskload::where('task_id','=',$taskid);
        $oldworkload->delete();

        //新增
        $workload =new Taskload();
        $workload->task_id=$task->id;
        $workload->task_no=$task->task_no;
        $workload->task_type=$task->task_type;
        $workload->user_code=$request->input("sel_dev");
//        var_dump(json_encode($workload));die;

        if ($task->save() && $workload->save()) {
            return Redirect::to('task');
        } else {
            return Redirect::back()->withInput()->withErrors('保存失败！');
        }
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
