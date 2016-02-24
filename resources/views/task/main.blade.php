@extends('templates.default')
@section('content')

    <style type="text/css">
        .detail-white-card {
            overflow: hidden;
            background-color: #fff;
            border: 1px solid rgba(0,0,0,.1);
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
        }
        .task-detail-handler-set {
            display: -moz-box;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-flex;
            display: -ms-flexbox;
            display: -ms-flex;
            display: flex;
        }
        .task-detail-handler-set .task-detail-handler.on-flex {
            min-width: 25%;
            max-width: 36%;
            width: inherit;
            -webkit-box-flex: 0;
            -moz-box-flex: 0;
            -webkit-flex: 0 0 auto;
            -moz-flex: 0 0 auto;
            -ms-flex: 0 0 auto;
            flex: 0 0 auto;
        }

        .task-detail-handler-set .task-detail-handler {
            position: relative;
            width: 25%;
            border-right: 1px solid rgba(0,0,0,.05);
            white-space: nowrap;
            overflow: hidden;
        }

         .task-detail-handler-set .task-detail-handler:last-child {
            border-right: 0 none;
        }
        .task-detail-handler-set .task-detail-handler {
            position: relative;
            width: 25%;
            border-right: 1px solid rgba(0,0,0,.05);
            white-space: nowrap;
            overflow: hidden;
        }
        .task-info-title {
            margin: 16px 16px 0;
            line-height: 12px;
            color: grey;
            font-family: inherit;
            font-weight: 500;
        }
        .task-detail-executor {
            margin: 10px 16px 14px;
            line-height: 24px;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .task-detail-handler-body{
            position: relative;
            display: block;
            margin: 12px 16px 16px;
            color: #383838;
            vertical-align: middle;
        }
        .task-detail-priority {
            margin-left: 15px!important;
        }

        .task-detail-handler-set .task-detail-handler .task-detail-handler-body, .task-detail .task-detail-handler-set .task-detail-handler>a, .task-detail .task-detail-handler-set .task-detail-handler>span {
            position: relative;
            display: block;
            margin: 12px 16px 16px;
            color: #383838;
            vertical-align: middle;
        }

        .task-detail-handler-set .task-detail-handler .task-detail-executor {
            margin: 10px 16px 14px;
            line-height: 24px;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .task-detail-handler-set .task-detail-handler>a.dirty:hover, .task-detail .task-detail-handler-set .task-detail-handler>a.open, .task-detail .task-detail-handler-set .task-detail-handler>a:hover, .task-detail .task-detail-handler-set .task-detail-handler>a:hover .icon {
            color: #03a9f4;
        }
        .task-detail-handler-set a:hover,a:focus{
            text-decoration: none;
            color: #03a9f4;
            cursor:pointer;
        }
    </style>

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
                        <div class="detail-white-card task-detail-handler-wrap">
                            <div class="task-detail-handler-set">
                                <div class="task-detail-handler on-flex">
                                    <h6 class="task-info-title" style="margin-bottom: 10px;">执行者</h6>
                                    <a class="task-detail-executor" >
                                         <span class="glyphicon glyphicon-user"></span>Zhuang少东 </a>
                                </div>
                                <div class="task-detail-handler on-flex">
                                    <h6 class="task-info-title">截止时间</h6>
                                    <div class="task-detail-handler-body task-detail-due-date dirty">
                                        <a class="task-datepicker" id="task-expect">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                            <span>选择截止时间</span> </a>
                                    </div>
                                </div>
                                <div class="task-detail-handler">
                                    <h6 class="task-info-title">优先级</h6>
                                    <a class="task-detail-priority dirty" >
                                        <span class="glyphicon glyphicon-signal"></span>
                                        <span class="priority-title">普通</span>
                                    </a>
                                </div>
                                <div class="task-detail-handler repeat-menu-wrap">
                                    <h6 class="task-info-title">重复</h6>
                                    <a class="task-detail-repeat dirty">
                                        <span class="icon icon-repeat"></span>
                                        <span class="repeat-title">不重复</span>
                                    </a>
                                </div>
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
                            <input type="text" class="form-control" id="task-expect1" />
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal">取消
                    </button>
                    <button type="button" class="btn btn-primary">
                        确定
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
                    $('#myModalLabel').html(data.task_title+"<small> ["+data.task_no+"]</small>");
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


