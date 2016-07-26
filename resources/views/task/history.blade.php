@extends('templates.default')
@section('content')
    <style type="text/css">
        .query-form
        {
            width: 100%;
            height: 35px;
        }
        .query-form ul li
        {
            list-style: none;
            float: left;
            margin-right: 5px;
            line-height: inherit;
            vertical-align: middle;
        }
    </style>
    <div class="container-fluid">
        {{--<div class="row">{!! var_dump(UserHelper::user_name()) !!}</div>--}}
        <div class="row">
            <div class="col-md-4">
                <div class="input-group pull-left">
                    <form onsubmit="return false;">
                        <input type="search" class="form-control search-form" placeholder="输入需求编号、客户名称、需求标题">
                    </form>
                    <span class="input-group-btn">
                        <button class="btn btn-default btn-search" type="button"><i class="glyphicon glyphicon-search"></i></button>
                    </span>
                </div>
            </div>
            <div class="col-md-8">
                <div class="pull-right">
                    <a href="/excel/task/{{$type}}" class="btn btn-default" id="export"><i class="glyphicon glyphicon-export"></i></a>
                </div>
            </div>
        </div>

        <div class="list">
            <table class="table table-bordered table-hover" id="example">
                <thead>
                <tr>
                    <th style="width: 85px">任务编号</th>
                    <th style="width: 20px">PRI</th>
                    <th style="width: 45px">状态</th>
                    <th >任务标题</th>
                    <th style="width: 60px">客户</th>
                    <th style="width: 40px">PM</th>
                    <th style="width: 60px">开发</th>
                    <th style="width: 60px">测试</th>
                    <th style="width: 60px">完成时间</th>
                    <th style="width: 300px">备注</th>
                </tr>
                </thead>
                <tbody>

                @foreach($tasks as $k=>$task)
                    <tr rel="{{$task->id}}" >
                        <td><a href="{{$task->ekp_oid}}" name="view_on_erp" rel="{{$task->task_no}}">{{$task->task_no}}</a></td>
                        <th >{{$task->PRI}}</th>
                        <td>
                            {{ Config('params.task_status')[$task->status] }}
                        </td>
                        <td data-toggle="tooltip" data-placement="top" title="{{$task->task_title}}">
                            @if(stristr($task->ekp_task_type, 'BUG'))
                                <span class="label label-danger">B</span>
                            @elseif(stristr($task->ekp_task_type, '咨询'))
                                <span class="label label-info">咨</span>
                            @elseif(stristr($task->ekp_task_type, '需求'))
                                <span class="label label-success">需</span>
                            @else
                                <span class="label label-primary">{{mb_substr($task->ekp_task_type,0,1)}}</span>
                            @endif
                            {{$task->task_title}}
                        </td>
                        <td><a name="view_on_cus" href="#" rel="{{$task->customer_uuid}}">{{$task->customer_name}}</a></td>
                        <td>{{$task->abu_pm}}</td>
                        <td>{!! AppHelper::user_name($task->developer) !!}({{$task->developer_workload}})</td>
                        <td>{!! AppHelper::user_name($task->tester) !!}({{$task->tester_workload}})</td>
                        <td>
                            @if (date("Y-m-d",strtotime("$task->actual_finish_date")) == '-0001-11-30' || date("Y-m-d",strtotime("$task->actual_finish_date")) == '1900-01-01' || date("Y-m-d",strtotime("$task->actual_finish_date")) == '1970-01-01')
                                <span></span>
                            @else
                                <?= date("Y-m-d",strtotime("$task->actual_finish_date")) ?>
                            @endif
                        </td>
                        <td>{{$task->comment}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>


    <script type="text/javascript">
        var tt = $('#example').DataTable({
            lengthMenu: [50, 100, "ALL"],//这里也可以设置分页，但是不能设置具体内容，只能是一维或二维数组的方式，所以推荐下面language里面的写法。
            paging: false,//分页
            ordering: true,//是否启用排序
            order: [ [ 0, 'desc' ]],
//                searching: true,//搜索
            dom: "<'row'<'col-sm-12'tr>>" + "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            language: {
                lengthMenu: '每页<select class="form-control input-xsmall">' + '<option value="15">15</option>' + '<option value="30">30</option>' + '<option value="50">50</option>' + '<option value="100">100</option>' + '</select>条记录',//左上角的分页大小显示。
                search: '搜索：',//右上角的搜索文本，可以写html标签
                paginate: {//分页的样式内容。
                    previous: "上一页",
                    next: "下一页",
                    first: "第一页",
                    last: "最后"
                },
                zeroRecords: "没有找到相关内容",//table tbody内容为空时，tbody的内容。
                //下面三者构成了总体的左下角的内容。
                info: "总共_PAGES_ 页，显示第_START_ 到第 _END_ ，筛选之后得到 _TOTAL_ 条，初始_MAX_ 条 ",//左下角的信息显示，大写的词为关键字。
                infoEmpty: "0条记录",//筛选为空时左下角的显示。
                infoFiltered: ""//筛选之后的左下角筛选提示，
            },
            showRowNumber:true,
            bAutoWidth:false,
        });

        $(document).on('click', '#example tbody tr', function () {
//            console.log($(this).attr('rel'));
            $.modal({
                keyboard: true,
                width:598,
                minHeight:518,
                remote: '/task/edit/' + $(this).attr('rel'),
                okHide: function () {
                    // return false;

                }
            })
        } );

        $(document).on('click', '#example tbody tr a[name=view_on_cus]', function () {
            console.log($(this)[0].innerText);
            console.log($(this).attr('rel'));
            return false;
//            $.modal({
//                keyboard: true,
//                width:598,
//                minHeight:518,
//                remote: '/customer/detail/' + $(this).attr('rel') + '?name=' + $(this)[0].innerText,
//                okHide: function () {
//                    // return false;
//                }
//            })
        } );

        $(document).on('click', '#example tbody tr a[name=view_on_erp]', function () {
            var task_no = $(this)[0].innerText;
            if($(this).attr("href")!="") {
                window.open("http://pd.mysoft.net.cn"+ $(this).attr("href"));
            }else{
                $.ajax({
                    type:'GET',
                    url:'/task/view_pd/'+task_no,
                    success:function(data) {
                        window.open("http://pd.mysoft.net.cn"+data) ;
                    },
                    error:function(data){
                        console.info(data);
                    }
                });
            }
            return false;
        } );

        $(document).on("keypress", '.search-form[type="search"]', function (e) {
            if (e.keyCode == "13") {
                var keyword = $(this).val();
//                if(keyword === '') {
//                    $.toast("请输入查找内容","info");
//                    return false;
//                }
                tt.search(keyword).draw();
            }
        });

        $(document).on("click", ".btn-search", function (e) {
            var keyword = $('.search-form[type="search"]').val();
            if(keyword === '') {
                $.toast("请输入查找内容","info");
                return false;
            }
            tt.search(keyword).draw();
        });
    </script>


@stop