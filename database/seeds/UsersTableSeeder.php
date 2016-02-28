<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/11/29
 * Time: 21:58
 */

use Illuminate\Database\Seeder;
use App\Version;

class VersionTableSeeder extends Seeder {

    public function run()
    {
       $userList=[
           [
               'username'=>'庄少东',
               'code'=>'zhuangsd',
               'admin'=>0,
               'email'=>'zhuangsd@mysoft.com.cn',
               'password'=>'$2y$10$sbUbMp4ophCVgPZrIj/9E.rc2jlRe4vEYUF3kQouDNms07zy4oEZu',
               'user_type'=>'开发'
           ],
           [
               'username'=>'随波',
               'code'=>'suib',
               'admin'=>0,
               'email'=>'suib@mysoft.com.cn',
               'password'=>'$2y$10$sbUbMp4ophCVgPZrIj/9E.rc2jlRe4vEYUF3kQouDNms07zy4oEZu',//123456
               'user_type'=>'测试'
           ],
           [
               'username'=>'季家龙',
               'code'=>'jijl',
               'admin'=>0,
               'email'=>'jijl@mysoft.com.cn',
               'password'=>'$2y$10$sbUbMp4ophCVgPZrIj/9E.rc2jlRe4vEYUF3kQouDNms07zy4oEZu',
               'user_type'=>'开发'
           ],
           [
               'username'=>'沈金龙',
               'code'=>'shenjl',
               'admin'=>0,
               'email'=>'shenjl@mysoft.com.cn',
               'password'=>'$2y$10$sbUbMp4ophCVgPZrIj/9E.rc2jlRe4vEYUF3kQouDNms07zy4oEZu',
               'user_type'=>'开发'
           ],

       ];


        DB::table('users')->truncate();

        foreach($userList as $k=>$val)
        {
            \App\User::create([
                'name' => $val['username'],
                'code' => $val['code'],
                'admin' => $val['admin'],
                'email' => $val['email'],
                'password' => $val['password'],
                'user_type' => $val['user_type'],
            ]);
        }
    }

}
