<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/" %>
<%--<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>订单列表-BootCRM</title>

    <script type="text/javascript"
            src="<c:url value='/js'/>/jquery.min.js"></script>
    <script type="text/javascript"
            src="<c:url value='/js'/>/bootstrap.min.js"></script>
    <script type="text/javascript"
            src="<c:url value='/js'/>/metisMenu.min.js"></script>
    <script type="text/javascript"
            src="<c:url value='/js'/>/jquery.dataTables.min.js"></script>
    <script type="text/javascript"
            src="<c:url value='/js'/>/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript"
            src="<c:url value='/js'/>/sb-admin-2.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css"/>/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css"/>/style.css">
    <script type="text/javascript" src="<c:url value="/js"/>/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="<c:url value="/js"/>/bootstrap.min.js"></script>
    <script type="text/javascript" src="<c:url value="/js"/>/index.js"></script>
    <link href="<c:url value='/css'/>/metisMenu.min.css" rel="stylesheet" media="all">
    <link href="<c:url value='/css'/>/dataTables.bootstrap.css" rel="stylesheet" media="all">
    <link href="<c:url value='/css'/>/sb-admin-2.css" rel="stylesheet" media="all">
    <link href="<c:url value='/css'/>/font-awesome.min.css" rel="stylesheet" media="all"
          type="text/css">
    <link href="<c:url value='/css'/>/boot-crm.css" rel="stylesheet" media="all"
          type="text/css">
    <script type="text/javascript"
            src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script type="text/javascript"
            src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>


    <script type="text/javascript"
            src="<c:url value='/js'/>/frappe-charts.min.js"></script>


    <style>
        td{ text-align: center;}
    </style>

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/manageOrder">面对疾风后台管理系统</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-user">
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/admin/logout"><i class="fa fa-sign-out fa-fw"></i>
                        退出登录</a></li>
                </ul> <!-- /.dropdown-user --></li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">

                    <li><a href="${pageContext.request.contextPath}/manageOrder" class="active"><i
                            class="fa fa-edit fa-fw"></i>订单管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/ProductManage" class="active"><i
                            class="fa fa-edit fa-fw"></i>商品管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageAdmin" class="active"><i
                            class="fa fa-edit fa-fw"></i>管理员管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageClient" class="active"><i
                            class="fa fa-edit fa-fw"></i>用户管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageComment" class="active"><i
                            class="fa fa-edit fa-fw"></i>评论管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageFeedback" class="active"><i
                            class="fa fa-edit fa-fw"></i>反馈管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageProfit" class="active"><i
                            class="fa fa-edit fa-fw"></i>利润统计</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageSale" class="active"><i
                            class="fa fa-edit fa-fw"></i>销量统计</a></li>


                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side --> </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">利润统计</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <div class="container">
            <div class="row hero" style="padding-top: 30px; padding-bottom: 0px;">
                <a class="btn btn-primary" target="_blank" href="${pageContext.request.contextPath}/profitPie">查看利润占比</a>
                <div class="row hero" style="padding-top: 30px; padding-bottom: 0px;">
                    <div class="col-sm-10 push-sm-1 later" style="font-size: 14px;">
                        <div id="chart-composite-1" class="border" style="border: 1px solid black;"><svg height=225></svg></div>

                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /#page-wrapper -->
</div>

<%--<script type="text/javascript"--%>
<%--src="<c:url value='/js'/>/myfrappe_bar.js"></script>--%>


<script type="text/javascript">

    let c1 = document.querySelector("#chart-composite-1");

    let gdp_date = [
        [
            ${productData.get(0).allPrice},
            ${productData.get(1).allPrice},
            ${productData.get(2).allPrice},
            ${productData.get(3).allPrice},
            ${productData.get(4).allPrice},
            ${productData.get(5).allPrice}
        ],
    ];

    let barCompositeData = {
        labels: ["餐厅“","儿童","客厅","书房","卧室","阳台户外"],
        datasets: [
            {
                name: "利润",
                values: gdp_date[0],
            },
        ]
    };

    let barCompositeChart = new Chart (c1, {
        title: "各种类型的家具利润(单位元)",
        data: barCompositeData,
        type: 'bar',
        height: 350,
        colors: ['blue'],
        valuesOverPoints: 0,
        axisOptions: {
            xAxisMode: 'tick'
        },
        barOptions: {
            stacked: 1
        },

    });



</script>


</body>

</html>
