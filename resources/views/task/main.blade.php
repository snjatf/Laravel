@extends('templates.default')
@section('content')


<div class="container">
    <div class="divtab">
        <ul class="nav nav-tabs" id="myTab">
           <li><a href="#todo" data-toggle="tab">待处理</a></li>
           <li><a href="#doing" data-toggle="tab">进行中</a></li>
           <li><a href="#done" data-toggle="tab">已完成</a></li>
        </ul>
    </div>
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <td>#</td>
                <td width="130px;">任务编号</td>
                <td>任务标题</td>
                <td>客户</td>
                <td>PM</td>
                <td>开发</td>
                <td>测试</td>
                <td>工作量</td>
                <td>状态</td>
                <td>备注</td>
            </tr>
        </thead>
        <tbody>
            @foreach($tasks as $task)
            <tr>
                <td>{{$task->id}}</td>
                <td>{{$task->task_no}}</td>
                <td class="details" rel={{$task->id}}>{{$task->task_title}}</td>
                <td>{{$task->customer_name}}</td>
                <td>{{$task->abu_pm}}</td>
                <td></td>
                <td></td>
                <td></td>
                <td>{{$task->status}}</td>
                <td>{{$task->comment}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <nav>
      <ul class="pagination">
        <li>
          <a href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
          </a>
        </li>
        <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li>
          <a href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
          </a>
        </li>
      </ul>
    </nav>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">×
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        模态框（Modal）标题
                    </h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="{{ URL('task.store') }}" role="form" >

                        <div class="row">
                            <div class="col-xs-1">

                            </div>
                            <div class="col-xs-2">

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="task-no">需求编号:</label>
                            <input type="text" class="form-control" id="task-no" >
                        </div>
                        <div class="form-group">
                            <label for="task-title">需求标题:</label>
                            <input type="text" class="form-control" id="task-title" >
                        </div>
                        <div class="form-group">
                            <label for="task-title">截止时间:</label>
                            <input type="text" class="form-control" id="task-expect" >
                        </div>

                        按下 ESC 按钮退出。

                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal">关闭
                    </button>
                    <button type="button" class="btn btn-primary">
                        提交更改
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <script>

        $(function() {
            $.datepicker.regional["zh-CN"] = { closeText: "关闭", prevText: "&#x3c;上月", nextText: "下月&#x3e;", currentText: "今天", monthNames: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"], monthNamesShort: ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"], dayNames: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"], dayNamesShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"], dayNamesMin: ["日", "一", "二", "三", "四", "五", "六"], weekHeader: "周", dateFormat: "yy-mm-dd", firstDay: 1, isRTL: !1, showMonthAfterYear: !0, yearSuffix: "年" }
            $.datepicker.setDefaults($.datepicker.regional["zh-CN"]);

            var datePicker = $("#ctl00_BodyMain_txtDate").datepicker({
                showOtherMonths: true,
                selectOtherMonths: true
            });
            $( "#task-expect" ).datepicker();
            //tabs
            $('#myTab a').click(function (e) {
              e.preventDefault();
              $(this).tab('show');
              // alert($(this).attr("href"));这里实现点击tab切换逻辑
            });
            $('#myTab a:first').tab('show') 
        });

        $('.details').on('click',function(){
            //1.根据ID获取详细（get）
            console.info($(this).attr('rel'));

            $.ajax({
                        type:'GET',
                        url:'/task/get_details/'+ $(this).attr('rel'),
                dataType:'json',
                success:function(data){
                    console.info(data);
                    $('#task-no').val(data.task_no);
                    $('#task-title').val(data.task_title);
                    $('#myModal').modal('toggle');
                    //http://v3.bootcss.com/javascript/#modals
                }
            });
            //2.清理modal缓存，再赋值
//            $('#myModal').modal('show')
            //3.绑定保存事件
        });
    </script>

@stop


