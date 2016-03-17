<title>Tools For Mobile Team</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- Bootstrap core CSS -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">

    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
    .panle4Check
    {
        width: 100%;
    }
    .border_r_1
    {
        border-right: 1px solid #ddd;
        width: 100px;
    }
    .panle4Check h4
    {
        margin: 0;
    }
    .version,.remark,.result
    {
        font-size: 14px;;
    }
    .my_alert
    {
        padding: 10px;
        font-size: 14px;;
        margin-bottom: 0;
        text-align: center;
    }
    div[name=history_tasks] li,div[name=history_tasks] li:hover,div[name=history_tasks] li:focus,div[name=version] li
    {
        font-size: 13px;
        width: 100%;
        border-bottom: 1px solid #ddd;
        padding: 3px 0;
    }

    .solution_list
    {
        width: 100%;
        margin-top: 10px;
    }
    /*#myModal*/
    /*{*/
        /*display: block;*/
    /*}*/
    .my_image
    {
        overflow-x: hidden;
    }
    .my_image img
    {
        width: 99%;
        max-width: 99%;

    }
</style>
<script type="text/javascript">
    $(function(){
        //检测按钮 事件绑定
        $("#btnCheck").unbind("click").bind("click",function(){
            $("div[name='check_process_bar']").show();
            var customer_name= $.trim($("#customer_name").val());
            if(customer_name.length==0)
            {
                alert("请输入客户名称！");
                return;
            }
            //异步请求
            $.get("/solution/mobile/check", { customer_name: customer_name },function(data){
                var Json_data=eval("("+data+")");
                var history_tasks=$("div[name='history_tasks']");
                $("div.panle4Check h4").html(Json_data.customer_name+" <small>"+Json_data.alias+"</small>");
                history_tasks.html("");
                if(Json_data.result)
                {
                    $("div[name='result']").attr("class","").attr("class","alert alert-success my_alert");
                    $("div[name='result']").html("可以直接使用更新标准包...")
                }else
                {
                    $("div[name='result']").attr("class","").attr("class","alert alert-danger my_alert");
                    $("div[name='result']").html("需要升级任务给工作流团队...")
                    $.each(Json_data.task_list,function(n,value){
                        history_tasks.append($("<li></li>").html( value));
                    });
                }
                var version=$("div.version");
                version.html("");
                $.each(Json_data.version_list,function(n,value){
                    version.append($("<li></li>").html( value));
                });
                $("span.remark").html(Json_data.message);
                $("div[name='check_process_bar']").hide();
            } );
        });

        //检测按钮回车事件监听
        $("#btnCheck").keydown(function(event){
            if(event.keyCode == 13){
                $("#btnCheck").click();
            }
        });

        //搜索按钮 事件绑定
        $("#btnSearch").unbind("click").bind("click",function(){
            var txtSearch= $.trim($("#txtSearch").val());
            $.get("/solution/mobile/search", { KeyValue: txtSearch },function(data){
                console.info(data);
            } );
        });
    });

    function oprClick_title(obj)
    {
        $("#myModalLabel").html($(obj).attr("s_title"));
        $("div.modal-body").html($(obj).attr("rel"));
    }
</script>

<div class="container">
    <div class="page-header">
        <h1>工作流小公举 <small> For Mobile Team</small></h1>
    </div>
    <div class="row">
        <div class="col-lg-5">
            <div class="input-group">
                <input id="customer_name" type="text" class="form-control" placeholder="客户名称...">
          <span class="input-group-btn">
            <button id="btnCheck" class="btn btn-default" type="button">检测</button>
          </span>
            </div><!-- /input-group -->
            <div name="check_process_bar" class="progress" style="margin: 5px 0;display: none">
                <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                    <span class="sr-only">100% Complete</span>
                </div>
            </div>
            <div class="panel panel-default" style="margin-top: 8px;">
                <div class="panel-body panle4Check">
                    <h4>客户名称 <small>客户名称</small></h4>
                </div>
                <!-- Table -->
                <table class="table">
                    <tr class="hidden1">
                        <td class="border_r_1"><h5>结果：</h5></td>
                        <td><div name="result" class="alert alert-success my_alert hidden" role="alert"></div></td>
                    </tr>
                    <tr>
                        <td class="border_r_1"><h5>版本信息：</h5></td>
                        <td><div name="version" class="version"></div></td>
                    </tr>
                    <tr class="hidden1">
                        <td class="border_r_1"><h5>历史任务：</h5></td>
                        <td><div name="history_tasks" ></div></td>
                    </tr>

                    <tr>
                        <td class="border_r_1"><h5>备注：</h5></td>
                        <td><span class="remark"></span></td>
                    </tr>
                </table>
                <!-- Table -->
            </div>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-7">
            <div class="input-group">
                <input id="txtSearch" type="text" class="form-control" placeholder="输入问题关键字,逗号分隔...">
          <span class="input-group-btn">
            <button id="btnSearch" class="btn btn-default" type="button">Go!</button>
          </span>
            </div><!-- /input-group -->
            <div class="solution_list">
                <ul class="list-group">
                    @foreach($solution_list as $key=>$value)
                        <li class="list-group-item">
                            <span class="badge">x</span>
                            <a href="#" rel="{{$value->Html}}" data-toggle="modal" data-target="#myModal" onclick="oprClick_title(this)" s_title="{{$value->solution_name}}">{{$key+1}}.{{$value->solution_name}}</a>
                        </li>
                    @endforeach
                    <?php //var_dump($solution_list) ?>
                </ul>
                <?php echo '共有: '.$solution_list->total().' 条记录,当前页显示: '.$solution_list->count().' 条';?>
            </div>
            <?php echo $solution_list->render(); ?>
        </div><!-- /.col-lg-8 -->
    </div>
</div>


<!-- Modal -->
<div class="modal fade my_image" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>