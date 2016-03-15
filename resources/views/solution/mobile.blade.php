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
</style>
<script type="text/javascript">
    $(function(){
        //检测按钮 事件绑定
        $("#btnCheck").unbind("click").bind("click",function(){
            var customer_name= $.trim($("#customer_name").val());
            if(customer_name.length==0)
            {
                alert("请输入客户名称！");
                return;
            }
            $.get("/solution/mobile/check", { customer_name: customer_name },function(data){
                console.info(data);
                var Json_data=eval("("+data+")");
                $("div.panle4Check h4").html(Json_data.customer_name+" <small>"+Json_data.alias+"</small>");
                if(Json_data.result)
                {
                    $("div[name='result']").attr("class","").attr("class","alert alert-success my_alert");
                }else
                {
                    $("div[name='result']").attr("class","").attr("class","alert alert-danger my_alert");
                    $("div[name='result']").html("需要升级任务给工作流团队...")
                }
                $("span.version").html(Json_data.version);
                $("span.remark").html(Json_data.message);
            } );
        });

        //搜索按钮 事件绑定
        $("#btnSearch").unbind("click").bind("click",function(){
            var txtSearch= $.trim($("#txtSearch").val());
            $.get("/solution/mobile/search", { KeyValue: txtSearch },function(data){
                console.info(data);
            } );
        });
    });
</script>
<div class="container">
    <div class="page-header">
        <h1>工作流小公举 <small> For Mobile Team</small></h1>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="input-group">
                <input id="customer_name" type="text" class="form-control" placeholder="客户名称..." value="协和">
          <span class="input-group-btn">
            <button id="btnCheck" class="btn btn-default" type="button">检测</button>
          </span>
            </div><!-- /input-group -->
            <div class="panel panel-default" style="margin-top: 8px;">
                <div class="panel-body panle4Check">
                    <h4>客户名称 <small>客户名称</small></h4>
                </div>
                <!-- Table -->
                <table class="table">
                    <tr class="hidden1">
                        <td class="border_r_1"><h5>结果：</h5></td>
                        <td><div name="result" class="alert alert-success my_alert hidden" role="alert">直接更新标准包</div></td>
                    </tr>
                    <tr>
                        <td class="border_r_1"><h5>版本信息：</h5></td>
                        <td><span class="version"></span></td>
                    </tr>
                    <tr>
                        <td class="border_r_1"><h5>备注：</h5></td>
                        <td><span class="remark"></span></td>
                    </tr>
                </table>
                <!-- Table -->
            </div>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-8">
            <div class="input-group">
                <input id="txtSearch" type="text" class="form-control" placeholder="输入问题关键字,逗号分隔..." value="协和">
          <span class="input-group-btn">
            <button id="btnSearch" class="btn btn-default" type="button">Go!</button>
          </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-8 -->
    </div>
</div>