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

    <!--范例-->
    <%--<link rel="stylesheet" media="all" type="text/css"
          href="<c:url value='/resource'/>/base.css" media="all">--%>


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
        td{
            text-align: center;
        }
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
                <h1 class="page-header">评论管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">评论信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>商品属性Id</th>
                            <th>顾客ID</th>
                            <th>评论内容</th>
                            <th>评论时间</th>
                            <th>星级</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.id}</td>
                                <td>${row.pr_id}</td>
                                <td>${row.c_id}</td>
                                <td>${row.co_info}</td>
                                <td>${row.co_date}</td>
                                <td>${row.co_grade}</td>


                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <itcast:page url="${pageContext.request.contextPath }/manageComment" />
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
                <h4 class="modal-title" id="myModalLabel">修改订单信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_customer_form">
                    <input type="hidden" id="edit_cust_id" name="cust_id"/>
                    <div class="form-group">
                        <label for="edit_customerName" class="col-sm-2 control-label">商品属性id</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_customerName" placeholder="商品属性id" name="cust_name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="edit_linkMan" class="col-sm-2 control-label">订单数量</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_linkMan" placeholder="订单数量" name="cust_linkman">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_phone" class="col-sm-2 control-label">订单价格</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_phone" placeholder="订单价格" name="cust_phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_mobile" class="col-sm-2 control-label">下单用户</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_mobile" placeholder="下单用户" name="cust_mobile">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_zipcode" class="col-sm-2 control-label">下单时间</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_zipcode" placeholder="下单时间" name="cust_zipcode">
                        </div>
                    </div>
                    <div class="form-group">
                    <label for="edit_address" class="col-sm-2 control-label">订单地址</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="edit_address" placeholder="订单地址 name="cust_address">
                    </div>
                </div>
                    <div class="form-group">
                        <label for="edit_address" class="col-sm-2 control-label">订单电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="phone" placeholder="订单电话 name="cust_address">
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
<!-- /#wrapper -->
<%--<script type="text/javascript"
        src="<c:url value='/resource'/>/jquery-1.2.6.pack.js"></script>--%>
<!-- jQuery -->
<script type="text/javascript"
        src="<c:url value='/js'/>/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script type="text/javascript"
        src="<c:url value='/js'/>/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script type="text/javascript"
        src="<c:url value='/js'/>/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script type="text/javascript"
        src="<c:url value='/js'/>/jquery.dataTables.min.js"></script>
<script type="text/javascript"
        src="<c:url value='/js'/>/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script type="text/javascript"
        src="<c:url value='/js'/>/sb-admin-2.js"></script>

<%--<script type="text/javascript">--%>
    <%--function editCustomer(id) {--%>
        <%--$.ajax({--%>
            <%--type:"get",--%>
            <%--url:"<%=basePath%>customer/edit.action",--%>
            <%--data:{"id":id},--%>
            <%--success:function(data) {--%>
                <%--$("#edit_cust_id").val(data.cust_id);--%>
                <%--$("#edit_customerName").val(data.cust_name);--%>
                <%--$("#edit_customerFrom").val(data.cust_source)--%>
                <%--$("#edit_custIndustry").val(data.cust_industry)--%>
                <%--$("#edit_custLevel").val(data.cust_level)--%>
                <%--$("#edit_linkMan").val(data.cust_linkman);--%>
                <%--$("#edit_phone").val(data.cust_phone);--%>
                <%--$("#edit_mobile").val(data.cust_mobile);--%>
                <%--$("#edit_zipcode").val(data.cust_zipcode);--%>
                <%--$("#edit_address").val(data.cust_address);--%>

            <%--}--%>
        <%--});--%>
    <%--}--%>
    <%--function updateCustomer() {--%>
        <%--$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){--%>
            <%--alert("客户信息更新成功！");--%>
            <%--window.location.reload();--%>
        <%--});--%>
    <%--}--%>

    <%--function deleteCustomer(id) {--%>
        <%--if(confirm('确实要删除该客户吗?')) {--%>
            <%--$.post("<%=basePath%>customer/delete.action",{"id":id},function(data){--%>
                <%--alert("客户删除更新成功！");--%>
                <%--window.location.reload();--%>
            <%--});--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>

</body>

</html>
