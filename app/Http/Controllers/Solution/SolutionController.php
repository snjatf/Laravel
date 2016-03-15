<?php

namespace App\Http\Controllers\Solution;

use Illuminate\Http\Request;
use App\WF_Solution;


use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Config;

include 'simple_html_dom.php';
class SolutionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $solutions=WF_Solution::paginate(12);
        return view("solution.index",['theme' => 'default','solutions' => $solutions]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("solution.create",['theme' => 'default']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $solution=WF_Solution::find($id);
        return view('solution.show',['theme' => 'default','solution'=>$solution]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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


    public function mobile_tools(Request $request,$func='view')
    {
        switch($func)
        {
            case 'check':
                return self::is_customized($request->input('customer_name'));
                break;
            case 'search':
                return self::get_task_history($request->input('KeyValue'));
                break;
            default:
                return view('solution.mobile',['theme' => 'default','solution'=>$func]);
            break;
        }

    }

    private function is_customized($customer_name)
    {
        $result=Array(
            'result'=>true,//false
            'customer_name'=>$customer_name,
            'alias'=>$customer_name,
            'version'=>'ERP:303,Workflow:353',
            'message'=>'客户无个性化！'
        );
        $result['message']='一线联系不上(一线出差了，实施部门只有他一个人了解工作流，只能等他回来继续跟进)';

//        dd(Config::get('params.customized_key'));die;

//        print_r(self::get_task_history($customer_name));die;

        $count=0;
        foreach(Config::get('params.customized_key') as $key=>$value)
        {
            foreach(self::get_task_history($customer_name) as $item=>$item_value)
            {
                if(strpos($item_value,$value) && !strpos($item_value,'升级微助手') && !strpos($item_value,'典型功能包') && !strpos($item_value,'移动审批')) {echo $item_value.":有个性化嫌疑、";$count++;}
            }
        }
        echo $count;
        die;
        return json_encode($result,JSON_UNESCAPED_UNICODE);
    }


    /**
     * @param $key
     * @return array
     */
    private function  get_task_history($key)
    {
        $user_cookie = '9da1e58d-cccb-4528-93d5-e93f40951b53={"MySettingID":"00000000-0000-0000-0000-000000000000","DefaultLoadPage":"MyPendingList","PendingShow":true,"PreSubmitShow":true,"MyAllShow":true,"AllShow":true,"DefaultPageSize":10,"DataMode":0,"UserGUID":null,"RealDataMode":0,"CreatedBy":null,"CreatedOn":null,"ModifiedBy":null,"ModifiedOn":null,"VersionNumber":0,"_DataState":0}; Login_User=UserCode=wank&SignTime=2016-01-21 15:59:27&UserSign=j6rLyJuRe2VCavJ0d2AgUsFwqRYmbmXuknAjL/cDzI2yDwFFAxKBOUzS+ht3lTKVC/1hJGbxB+R3AdeoW5y9S/T9GolzeEpIFszkxhBjcnhifUqqa0KT7gZuvrTbjnbH+TBg0h4E/3vJN0x4maACInOVXpHe58m+bsvyjCRW1Dc=';
        $url = 'http://pd.mysoft.net.cn/AjaxRequirement/GetAllRequirementList.cspx?Customerchn=&ManagerName=&PMName=&TeamMembers=&Status=&Source=&XqType=&CustomerType=&CustomerArea=&HandlerToRequirementType=&CreatedOnType=&RecordDateBegin=&RecordDateEnd=&DevelopEndTimeType=&FinishiDateBegin=&FinishiDateEnd=&TechReLmtType=&RechDateBegin=&RechDateEnd=&TaskDoneLmtType=&DcDateBegin=&DcDateEnd=&IsHaveTestDoc=&OrderSeq=&PageSize=100';
        $cur_page = 1;
        $params = "&KeyValue=$key&PageIndex=$cur_page";
        $url = $url . $params;


        $method = 'GET';
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        //模拟登录
        curl_setopt($ch, CURLOPT_COOKIE, $user_cookie);
        //模拟打开浏览器
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_TIMEOUT, 10);
        if ($method === 'POST') {
            curl_setopt($ch, CURLOPT_POST, true);
        }
        $result = curl_exec($ch);
        $content = json_decode($result);

        $html = str_get_html($content->html);

        $task_array = array();

        foreach ($html->find('div[class*=singleRequirementCard]') as $task_node) {
            $task_title = $task_node->find('div[class*=title]', 0)->children(1)->plaintext;
            $task_array[] = $task_title;
        }
        return $task_array;
    }
}
