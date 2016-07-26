<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    <title>TaskManager</title>

    <!-- Bootstrap core CSS -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css" rel="stylesheet">
    <link href="{{asset('vendor/css/datatables.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/css/datepicker.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/css/modal.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/css/toast.css')}}" rel="stylesheet">
    {{--<link href="{{asset('vendor/css/select2.css')}}" rel="stylesheet">--}}

    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script src="{{asset('vendor/js/underscore.js')}}"></script>
    <script src="{{asset('vendor/js/datatables.js')}}"></script>
    <script src="{{asset('vendor/js/datepicker.js')}}"></script>
    <script src="{{asset('vendor/js/modal.js')}}"></script>
    <script src="{{asset('vendor/js/toast.js')}}"></script>
    {{--<script src="{{asset('vendor/js/select2.js')}}"></script>--}}
    <script src="{{asset('js/app.js')}}"></script>
    <![endif]-->
    <style type="text/css">
        .container-flex{
            margin-left: 10px;
            margin-right: 10px;;
        }
        html body{
            font-family: Microsoft YaHei,Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;
        }
        label{
            color: #555;
        }
        th{
            color: #555;
        }
        table tr{
            cursor: pointer;
        }
    </style>
</head>
<body>
    @include('templates.nav')
    @yield('content')
{{--    @include('templates.footer')--}}
</body>