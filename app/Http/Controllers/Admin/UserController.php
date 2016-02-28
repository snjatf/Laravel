<?php
/**
 * Created by PhpStorm.
 * User: Zhuang少东
 * Date: 2016/2/26
 * Time: 23:14
 */
namespace App\Http\Controllers\Admin;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function  get_all()
    {
        $results = DB::select('SELECT id as \'key\',`name` as text,user_type FROM users');
//        return response()->json($results);
        return $results;
    }
}