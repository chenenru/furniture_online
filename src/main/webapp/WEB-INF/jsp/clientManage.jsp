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
            <a class="navbar-brand" href="index.html">面对疾风后台管理系统</a>
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
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
                        退出登录</a></li>
                </ul> <!-- /.dropdown-user --></li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="查询内容...">
                            <span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
                        </div> <!-- /input-group -->
                    </li>
                    <li><a href="${pageContext.request.contextPath}/manageOrder" class="active"><i
                            class="fa fa-edit fa-fw"></i>订单管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageAdmin" class="active"><i
                            class="fa fa-edit fa-fw"></i>管理员管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageClient" class="active"><i
                            class="fa fa-edit fa-fw"></i>用户管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageComment" class="active"><i
                            class="fa fa-edit fa-fw"></i>评论管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/manageFeedback" class="active"><i
                            class="fa fa-edit fa-fw"></i>反馈管理</a></li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side --> </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">用户管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" action="${pageContext.request.contextPath }/manageClient" method="get">
                    <div class="form-group">
                        <label for="">顾客昵称</label>
                        <input type="text" class="form-control" name="name">
                    </div>
                    <div class="form-group">
                        <label for="">顾客邮箱</label>
                        <input type="text" class="form-control" name="email">
                    </div>
                    <div class="form-group">
                        <label for="">顾客地址</label>
                        <input type="text" class="form-control" name="address">
                    </div>
                    <div class="form-group">
                        <label for="">顾客电话</label>
                        <input type="text" class="form-control"  name="phone">
                    </div>

                    <button type="submit" class="btn btn-primary">查询</button>

                    <a href="#" class="btn btn-warning" data-toggle="modal" style="margin-left: 50px"
                       data-target="#customerAddDialog" >添加</a>

                </form>


            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">管理员信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>邮箱账号</th>
                            <th>密码</th>
                            <th>昵称</th>
                            <th>地址</th>
                            <th>电话</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.id}</td>
                                <td>${row.cEmail}</td>
                                <td>${row.cPwd}</td>
                                <td>${row.cName}</td>
                                <td>${row.cAddress}</td>
                                <td>${row.cPhone}</td>

                                <td>

                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal"
                                       data-target="#customerEditDialog" onclick="editCustomer(${row.id})">修改</a>
                                    <%--<a href="${pageContext.request.contextPath }/client/removeClient?id=${row.id}" class="btn btn-danger btn-xs" >删除</a>--%>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <itcast:page url="${pageContext.request.contextPath }/manageClient" />
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- 客户编辑对话框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_customer_form">
                    <input type="hidden" id="edit_cust_id" name="id"/>
                    <div class="form-group">
                        <label for="id" class="col-sm-2 control-label">用户记录ID</label>
                        <div class="col-sm-8">
                            <input type="text" disabled class="form-control" id="id" placeholder="用户记录ID" name="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="cEmail" class="col-sm-2 control-label">账号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cEmail" placeholder="账号" name="cEmail">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cPwd" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cPwd" placeholder="密码" name="cPwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cName" class="col-sm-2 control-label">昵称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cName" placeholder="昵称" name="cName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cAddress" class="col-sm-2 control-label">地址</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cAddress" placeholder="地址" name="cAddress">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cPhone" class="col-sm-2 control-label">电话号码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cPhone" placeholder="电话号码" name="cPhone">
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="customerAddDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModal">添加管理员账号</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="addClient">
                    <div class="form-group">
                        <label for="id1" class="col-sm-2 control-label">用户记录ID</label>
                        <div class="col-sm-8">
                            <input type="text" disabled class="form-control" id="id1" placeholder="用户记录ID" name="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="cEmail1" class="col-sm-2 control-label">账号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cEmail1" placeholder="账号" name="cEmail1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cPwd1" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cPwd1" placeholder="密码" name="cPwd1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cName1" class="col-sm-2 control-label">昵称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cName1" placeholder="昵称" name="cName1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cAddress1" class="col-sm-2 control-label">地址</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cAddress1" placeholder="地址" name="cAddress1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cPhone1" class="col-sm-2 control-label">电话号码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="cPhone1" placeholder="电话号码" name="cPhone1">
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addCustomer()">确认添加</button>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript">

    function addCustomer() {
        var usr = $("#cEmail1").val();
        var pwd = $("#cPwd1").val();
        var name = $("#cName1").val();
        var address = $("#cAddress1").val();
        var phone = $("#cPhone1").val();

        <%--alert("${pageContext.request.contextPath}/client/addClient?usr=" + usr + "&pwd=" +--%>
            <%--pwd + "&name=“”“" + name + "&address=" + address + "&phone=" + phone);--%>

        $.post("${pageContext.request.contextPath}/client/addClient?usr=" + usr + "&pwd=" +　
                pwd + "&name=“”“" + name + "&address=" + address + "&phone=" + phone,
            function(data){
                alert("用户信息添加成功！");
                window.location.reload();
            });


    }

    function editCustomer(id) {
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/client/gotoClient",
            data:{"id":id},
            success:function(data) {
                $("#id").val(data.id);
                $("#edit_cust_id").val(data.id);
                $("#cEmail").val(data.cEmail);
                $("#cPwd").val(data.cPwd);
                $("#cName").val(data.cName);
                $("#cAddress").val(data.cAddress);
                $("#cPhone").val(data.cPhone);

            }

        });
        //alert("json查询用户成功");
    }

    function updateCustomer() {
        $.post("${pageContext.request.contextPath}/client/updateClient",
            $("#edit_customer_form").serialize(),
            function(data){
                alert("用户信息更新成功！");
                window.location.reload();
            });
    }
</script>



</body>

</html>
