@extends('templates.default')
@section('content')
    <div class="container">

        {{--<div class="input-group">--}}
            {{--<input type="text" class="form-control" placeholder="输入客户全称/简称/拼音" aria-describedby="basic-addon2">--}}
            {{--<span class="input-group-btn" id="basic-addon2">--}}
                {{--<button class="btn btn-default" id="search"><i class="glyphicon glyphicon-search"></i> Go! </button>--}}

            {{--</span>--}}
        {{--</div>--}}

        <table class="table table-striped table-hover" id="example" width="100%">
            <thead>
                <tr>
                    <th style="width:40px;text-align: center" title="序号">#</th>
                    <th style="text-align: center">客户名称</th>
                    <th style="text-align: center">工作流版本</th>
                    <th style="text-align: center">ERP版本</th>
                    <th style="display: none"></th>
                </tr>
            </thead>
            <tbody>
            @foreach($projects as $k=>$project)
                <tr rel="{{$project->id}}">
                    <td scope="row">{{$k+1}}</td>
                    <td>{{$project->name}}</td>
                    <td>{{$project->workflow_version}}</td>
                    <td>{{$project->erp_version}}</td>
                    <td style="display: none">{{letter($project->name) }}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>

    <script type="text/javascript">

        $(document).ready(function() {
            $('#example').dataTable( {
                lengthMenu: [30, 50, 100],//这里也可以设置分页，但是不能设置具体内容，只能是一维或二维数组的方式，所以推荐下面language里面的写法。
                paging: true,//分页
                ordering: true,//是否启用排序
                searching: true,//搜索
                language: {
                    lengthMenu: '每页<select class="form-control input-xsmall">' + '<option value="30">30</option>' + '<option value="50">50</option>' + '<option value="100">100</option>' + '</select>条记录',//左上角的分页大小显示。
                    search: '搜索：',//右上角的搜索文本，可以写html标签

                    paginate: {//分页的样式内容。
                        previous: "上一页",
                        next: "下一页",
                        first: "第一页",
                        last: "最后"
                    },

                    zeroRecords: "没有内容",//table tbody内容为空时，tbody的内容。
                    //下面三者构成了总体的左下角的内容。
                    info: "总共_PAGES_ 页，显示第_START_ 到第 _END_ ，筛选之后得到 _TOTAL_ 条，初始_MAX_ 条 ",//左下角的信息显示，大写的词为关键字。
                    infoEmpty: "0条记录",//筛选为空时左下角的显示。
                    infoFiltered: ""//筛选之后的左下角筛选提示，
                },
//                pagingType: "full_numbers",//分页样式的类型
//                "scrollX": false,
//                "dom": '<"wrapper"f>tlip'
            } );

            $('#example tbody').on('click', 'tr', function () {
                var data = $('#example').DataTable().row( this ).data();
                console.log(data);
                alert( 'You clicked on '+data[0]+'\'s row' );
            } );

        } );

        $(function(){
            $("#example_filter").children().children().attr("placeholder","请输入汉字/拼音/首字母");
        });


    </script>

@stop
