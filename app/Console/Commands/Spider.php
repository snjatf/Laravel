<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
include 'simple_html_dom.php';

class Spider extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:get_task';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
//        $this->ADDomain();
        $this->soapLogin();
    }

    protected function ADDomain()
    {

//        $user = $_POST ['name'];
//        $password = $_POST ['pwd'];
        $user = 'wank';
        $password = 'kunta0514';

        //设定域信息
        $domain = 'mysoft.net.cn'; //设定域名
        $basedn = 'dc=pd,dc=mysoft,dc=net,dc=cn'; //如果域名为“b.a.com”,则此处为“dc=b,dc=a,dc=com”
        $ad = ldap_connect( "ldap://{$domain}" ) or die ('Could not connect to LDAP server.');

        if($ad){
            ldap_set_option ( $ad, LDAP_OPT_PROTOCOL_VERSION, 3 );
            ldap_set_option ( $ad, LDAP_OPT_REFERRALS, 0 ); // Binding to ldap server
//            echo $user.'/'.$password;
            $bd = ldap_bind($ad, $user, $password);
            if($bd){
                echo 'ldap_bind success';
            }else {
                echo 'ldap_bind fail';
            }
        }

//        $ad = ldap_connect('http://lanlogin.mysoft.net.cn/Default.aspx') or die ('Could not connect to LDAP server.');
//        ldap_set_option ( $ad, LDAP_OPT_PROTOCOL_VERSION, 3 );
//        ldap_set_option ( $ad, LDAP_OPT_REFERRALS, 0 );
//        $ldap_bd = ldap_bind($ad,"username","password");
//        @ldap_bind ( $ad, "{$user}@{$domain}", $password ) or die ( 'Authorization failed! Please check your username or password!' );
//        echo "Welcome ".$user;
    }

    protected function Spider()
    {
        //
        $url = 'http://pd.mysoft.net.cn/AjaxRequirement/GetAllRequirementList.cspx';
        $method = 'GET';
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
//        curl_setopt($ch, CURLOPT_COOKIE, self::$user_cookie);
//        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_TIMEOUT, 10);
        if ($method === 'POST')
        {
            curl_setopt($ch, CURLOPT_POST, true );
//            curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        }
        $result = curl_exec($ch);

        echo $result;
    }

    protected function checkADUser($username,$password)
    {
//        $client = new \SoapClient('http://ekp.mysoft.net.cn/EKPWebService/AdUserService.asmx?wsdl', ["trace" => 1, "exception" => 0]);
//        $ret = $client->__soapCall('UserLoginForALLDomain', ['UserLoginForALLDomain'=>['sUserName'=>$username,'sPassWord'=>$password]]);
//        return $ret->UserLoginForALLDomainResult;

        $url = 'http://ekp.mysoft.net.cn/EKPWebService/AdUserService.asmx?wsdl';
        $soap = new \SoapClient($url);
        $param = [
            'sUserName' => 'wank',
            'sPassWord' => 'kunta0514'
        ];
        $result = $soap->UserLoginForDomain($param);
        print_r($result->UserLoginForDomainResult);
    }

    private static $user_cookie = '9da1e58d-cccb-4528-93d5-e93f40951b53={"MySettingID":"00000000-0000-0000-0000-000000000000","DefaultLoadPage":"MyPendingList","PendingShow":true,"PreSubmitShow":true,"MyAllShow":true,"AllShow":true,"DefaultPageSize":10,"DataMode":0,"UserGUID":null,"RealDataMode":0,"CreatedBy":null,"CreatedOn":null,"ModifiedBy":null,"ModifiedOn":null,"VersionNumber":0,"_DataState":0}; Login_User=UserCode=wank&SignTime=2016-01-21 15:59:27&UserSign=j6rLyJuRe2VCavJ0d2AgUsFwqRYmbmXuknAjL/cDzI2yDwFFAxKBOUzS+ht3lTKVC/1hJGbxB+R3AdeoW5y9S/T9GolzeEpIFszkxhBjcnhifUqqa0KT7gZuvrTbjnbH+TBg0h4E/3vJN0x4maACInOVXpHe58m+bsvyjCRW1Dc=';

    protected function soapLogin()
    {


        $url = 'http://pd.mysoft.net.cn/AjaxRequirement/GetAllRequirementList.cspx?KeyValue=&ManagerName=&TeamMembers=&Status=0%2C1%2C2%2C3%2C4%2C5&Source=&XqType=&CustomerType=&CustomerArea=&HandlerToRequirementType=&CreatedOnType=&DevelopEndTimeType=&TechReLmtType=&TaskDoneLmtType=&OrderSeq=';
        $pm = '万堃';
        $cur_page = 1;
        $params = "&PMName=$pm&PageIndex=$cur_page";
        $url = $url .$params;

//        print_r($url);
//        die;

        $method = 'GET';
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        //模拟登录
        curl_setopt($ch, CURLOPT_COOKIE, self::$user_cookie);
        //模拟打开浏览器
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_TIMEOUT, 10);
        if ($method === 'POST')
        {
            curl_setopt($ch, CURLOPT_POST, true );
//            curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        }
        $result = curl_exec($ch);
//        print_r($result);
//        die;
        $j = json_decode($result);

        $total_count = $j->TotalCount;
        $html = $j->html;
        $html = str_get_html($html);
        foreach($html->find('div[class*=singleRequirementCard]') as $task_node)
        {
            $task_no = $task_node->find('div[class*=title]',0)->children(0)->plaintext;
            $str = ['【','】'];
            $task_no = str_replace($str,"",$task_no);
            $task_title = $task_node->find('div[class*=title]',0)->children(1)->plaintext;
            $task_cst_name = $task_node->find('li[title=客户名称]',0)->plaintext;
            $task_type = $task_node->find('li[title=需求类型]',0)->plaintext;
            $task_apu_pm = $task_node->find('li[title=需求负责人]',0)->plaintext;
            $task_status = $task_node->find('div[class*=status]',0)->plaintext;

            print_r(iconv('utf-8','gbk',$task_no).chr(10));
            print_r(iconv('utf-8','gbk',$task_title).chr(10));
            print_r(iconv('utf-8','gbk',$task_cst_name).chr(10));
            print_r(iconv('utf-8','gbk',$task_type).chr(10));
            print_r(iconv('utf-8','gbk',$task_apu_pm).chr(10));
            print_r(iconv('utf-8','gbk',$task_status).chr(10));
        }
    }

    protected function demo()
    {
        $html = file_get_html( 'G:\laravel\app\Console\Commands\task.html');

        foreach($html->find('div[class*=singleRequirementCard]') as $task_node)
        {
            $task_no = $task_node->find('div[class*=title]',0)->children(0)->plaintext;
            $str = ['【','】'];
            $task_no = str_replace($str,"",$task_no);
            $task_title = $task_node->find('div[class*=title]',0)->children(1)->plaintext;
            $task_cst_name = $task_node->find('li[title=客户名称]',0)->plaintext;
            $task_type = $task_node->find('li[title=需求类型]',0)->plaintext;
            $task_apu_pm = $task_node->find('li[title=需求负责人]',0)->plaintext;
            $task_status = $task_node->find('div[class*=status]',0)->plaintext;

            print_r(iconv('utf-8','gbk',$task_no).chr(10));
            print_r(iconv('utf-8','gbk',$task_title).chr(10));
            print_r(iconv('utf-8','gbk',$task_cst_name).chr(10));
            print_r(iconv('utf-8','gbk',$task_type).chr(10));
            print_r(iconv('utf-8','gbk',$task_apu_pm).chr(10));
            print_r(iconv('utf-8','gbk',$task_status).chr(10));

        }

    }


}
