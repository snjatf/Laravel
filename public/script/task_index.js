/**
 * Created by Zhuang少东 on 2016/2/28.
 */

$(function() {
    $.datepicker.regional["zh-CN"] = { closeText: "关闭", prevText: "&#x3c;上月", nextText: "下月&#x3e;", currentText: "今天", monthNames: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"], monthNamesShort: ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"], dayNames: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"], dayNamesShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"], dayNamesMin: ["日", "一", "二", "三", "四", "五", "六"], weekHeader: "周", dateFormat: "yy-mm-dd", firstDay: 1, isRTL: !1, showMonthAfterYear: !0, yearSuffix: "年" }
    $.datepicker.setDefaults($.datepicker.regional["zh-CN"]);

    var datePicker = $("#ctl00_BodyMain_txtDate").datepicker({
        showOtherMonths: true,
        selectOtherMonths: true,
    });
    $( "#task_expect" ).datepicker();
    //tabs
    $('#myTab a').click(function (e) {
        e.preventDefault();
        $('#myTab li').removeClass('active');
        $(this).parent().addClass('active');
        $(this).tab('show');
//              alert($(this).attr("status"));
        //这里实现点击tab切换逻辑
        window.location.href='/task/' + $(this).attr("status");
    });
    $('#myTab a[status='+$('#task_status').val()+']').tab('show');
//            $('#myTab a:first').tab('show');

});

$('.details').on('click',function(){
    //1.根据ID获取详细（get）
//            console.info($(this).attr('rel'));
    $.ajax({
        type:'GET',
        url:'/task/get_details/'+ $(this).attr('rel'),
        dataType:'json',
        success:function(data){
            console.info(data);

            $('#task-no').val(data.task.task_no);
            $('#task-title').val(data.task.task_title);
            $('#myModalLabel').html(data.task.task_title+"<small> [<a href='#' onclick=oprViewOnEKP("+"'"+data.task.task_id+"')>"+data.task.task_no+"</a>]</small>");
            $("#task_id").val(data.task.id);
            $("#remark").val(data.task.comment);
            var ekp_expect;
            if(data.task.ekp_expect)
            {
                ekp_expect=data.task.ekp_expect.substr(0,10);
            }
            $("#task_expect").val(ekp_expect);//截至日期

            //绑定数据到select
            var devors= $.grep(data.userlist,function(value,n){
                return value.user_type=="开发";
            });
            var testors= $.grep(data.userlist,function(value,n){
                return value.user_type=="测试";
            });

            var curdevor= $.grep(data.workload,function(value,n){
                return value.work_type=="开发";
            });
            var curtestors= $.grep(data.workload,function(value,n){
                return value.work_type=="测试";
            });

            var curdevor_id,curtestor_id;
            if(curdevor.length>0)
            {
                curdevor_id=curdevor[0].user_id;
            }
            if(curtestors.length>0)
            {
                curtestor_id=curtestors[0].user_id;
            }

            binddata2select('sel_dev',devors,curdevor_id);
            binddata2select('sel_test',testors,curtestor_id);
            //绑定数据到select

            if (curdevor_id)
            {
                $("#sel_dev_name").val(curdevor[0].user_name);
            }
            if (curtestor_id)
            {
                $("#sel_test_name").val(curtestors[0].user_name);
            }


            $('#myModal').modal('toggle');
            //http://v3.bootcss.com/javascript/#modals
        }
    });
    //2.清理modal缓存，再赋值
//            $('#myModal').modal('show')
    //3.绑定保存事件


    //绑定下拉框事件
    $("#sel_dev").change(function(){
        var name=($(this).children('option:selected').text()!="请选择")?$(this).children('option:selected').text():"";
        $("#sel_dev_name").val(name);
    });
    $("#sel_test").change(function(){
        var name=($(this).children('option:selected').text()!="请选择")?$(this).children('option:selected').text():"";
        $("#sel_test_name").val(name);
    });
});



//        标记任务
function oprFinlish()
{
    alert("标记完成！");
}
//        标记任务

//打开EKP的任务详情
function oprViewOnEKP(taskid)
{
    var url="http://pd.mysoft.net.cn/Requirement/Detail.aspx?oid="+taskid;
    window.open(url);
}
//        打开EKP的任务详情

//        提交任务
function oprEditTask()
{
    $("#form_task").submit();
}
//        提交任务

//        绑定数据到select
function binddata2select(selectid,data,defaultkey)
{
    if(selectid==undefined || selectid=="" || data==undefined || data==null || data=="")return;
    if ($("#" + selectid))
    {
        var curselect=$("#"+ selectid);
        var isselected="";
        curselect.empty();
        curselect.append("<option value='' selected>请选择</option>");
        $.each(data,function(n,value)
        {
            if(value.key==defaultkey)
                isselected="selected";
            curselect.append("<option value='"+ value.key +"'" + isselected + ">" + value.text + "</option>");
            isselected="";
        });
    }
}
//        绑定数据到select