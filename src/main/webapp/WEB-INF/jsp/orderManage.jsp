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
                <h1 class="page-header">订单管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" action="${pageContext.request.contextPath }/manageOrder" method="get">
                    <div class="form-group">
                        <label for="customerName">顾客id</label>
                        <input type="text" class="form-control" id="customerName" value="${custName }" name="c_id">
                    </div>
                    <%--<div class="form-group">--%>
                        <%--<label for="customerFrom">商品类型</label>--%>
                        <%--<select	class="form-control" id="customerFrom" placeholder="商品类型" name="custSource">--%>
                            <%--<option value="">--请选择--</option>--%>
                            <%--<c:forEach items="${fromType}" var="item">--%>
                                <%--<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>--%>
                            <%--</c:forEach>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                    <%--<label for="custIndustry">所属行业</label> --%>
                    <%--<select	class="form-control" id="custIndustry"  name="custIndustry">--%>
                    <%--<option value="">--请选择--</option>--%>
                    <%--<c:forEach items="${industryType}" var="item">--%>
                    <%--<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>--%>
                    <%--</c:forEach>--%>
                    <%--</select>--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                    <%--<label for="custLevel">客户级别</label>--%>
                    <%--<select	class="form-control" id="custLevel" name="custLevel">--%>
                    <%--<option value="">--请选择--</option>--%>
                    <%--<c:forEach items="${levelType}" var="item">--%>
                    <%--<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>--%>
                    <%--</c:forEach>--%>
                    <%--</select>--%>
                    <%--</div>--%>
                    <button type="submit" class="btn btn-primary">查询</button>

                    <a style="margin-left: 20px;" class="btn btn-primary" href="${pageContext.request.contextPath}/manageOrder">所有订单</a>
                    <a style="margin-left: 20px;" class="btn btn-primary" href="${pageContext.request.contextPath}/manageOrder?type=1">未付款订单</a>
                    <a style="margin-left: 20px;" class="btn btn-primary" href="${pageContext.request.contextPath}/manageOrder?type=2">已付款订单</a>
                    <a style="margin-left: 20px;" class="btn btn-primary" href="${pageContext.request.contextPath}/manageOrder?type=3">已发货订单</a>
                    <a style="margin-left: 20px;" class="btn btn-primary" href="${pageContext.request.contextPath}/manageOrder?type=4">已签收订单</a>

                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">订单信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>商品属性id</th>
                            <th>订单数量</th>
                            <th>订单价格</th>
                            <th>下单用户</th>
                            <th>下单时间</th>
                            <th>支付时间</th>
                            <th>发货时间</th>
                            <th>收货时间</th>
                            <th>订单地址</th>
                            <th>订单电话</th>

                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.id}</td>
                                <td>${row.prId}</td>
                                <td>${row.oNum}</td>
                                <td>${row.oTotal}</td>
                                <td>${row.cId}</td>
                                <td>${row.oCreate}</td>
                                <td>${row.oPay}</td>
                                <td>${row.oDeliver}</td>
                                <td>${row.oConfirm}</td>
                                <td>${row.oAddress}</td>
                                <td>${row.oPhone}</td>


                                <td>
                                    <c:if test="${row.oCreate != null && row.oPay != null && row.oDeliver == null && row.oConfirm == null}">
                                        <a class="btn btn-warning btn-xs" href="${pageContext.request.contextPath}/order/orderDeliver?o_id=${row.id}" name="">发货</a>
                                    </c:if>
                                    <a href="" class="btn btn-primary btn-xs" data-toggle="modal"
                                       data-target="#customerEditDialog" onclick="editCustomer(${row.id})">修改</a>
                                    <%--<a href=“”"${pageContext.request.contextPath}/order/adminRemove?o_id=${row.id}&pr_id=${row.prId}&c_id=${row.cId}"--%>
                                       <%--class="btn btn-danger btn-xs" >删除</a>--%>
                                    <a href="${pageContext.request.contextPath}/order/adminRemove?o_id=${row.id}&pr_id=${row.prId}&c_id=${row.cId}"
                                       class="btn btn-danger btn-xs" >删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <itcast:page url="${pageContext.request.contextPath }/manageOrder" />
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
                    <input type="hidden" id="edit_cust_id" name="id"/>
                    <div class="form-group">
                        <label for="prId" class="col-sm-2 control-label">商品属性</label>
                        <div class="col-sm-10">
                            <input type="text" disabled class="form-control" id="prId" placeholder="商品属性id" name="prId">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="oNum" class="col-sm-2 control-label">订单数量</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="oNum" placeholder="订单数量" name="oNum">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oTotal" class="col-sm-2 control-label">订单价格</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="oTotal" placeholder="订单价格" name="oTotal">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cId" class="col-sm-2 control-label">下单用户</label>
                        <div class="col-sm-10">
                            <input type="text"  disabled class="form-control" id="cId" placeholder="下单用户" name="cId">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oStatus" class="col-sm-2 control-label">订单状态</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="oStatus" placeholder="订单状态" name="oStatus">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oCreate" class="col-sm-2 control-label">下单时间</label>
                        <div class="col-sm-10">
                            <input type="text" disabled class="form-control" id="oCreate" placeholder="下单时间" name="oCreate">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oPay" class="col-sm-2 control-label">支付时间</label>
                        <div class="col-sm-10">
                            <input type="text" disabled class="form-control" id="oPay" placeholder="支付时间" name="oPay">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oDeliver" class="col-sm-2 control-label">发货时间</label>
                        <div class="col-sm-10">
                            <input type="text" disabled class="form-control" id="oDeliver" placeholder="发货时间" name="oDeliver">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oConfirm" class="col-sm-2 control-label">收货时间</label>
                        <div class="col-sm-10">
                            <input type="text" disabled class="form-control" id="oConfirm" placeholder="收货时间" name="oConfirm">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oAddress" class="col-sm-2 control-label">订单地址</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="oAddress" placeholder="订单地址" name="oAddress">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oPhone" class="col-sm-2 control-label">订单电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="oPhone" placeholder="订单电话" name="oPhone">
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

</body>

<script type="text/javascript">

    function editCustomer(id) {
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/order/gotoOrder",
            data:{"id":id},
            success:function(data) {
                $("#edit_cust_id").val(data.id);
                $("#oNum").val(data.oNum);
                $("#oTotal").val(data.oTotal);
                $("#oAddress").val(data.oAddress);
                $("#oPhone").val(data.oPhone);
                $("#prId").val(data.prId);
                $("#cId ").val(data.cId );
                $("#oStatus").val(data.oStatus);
                $("#oCreate").val(data.oCreate);
                $("#oPay").val(data.oPay);
                $("#oDeliver").val(data.oDeliver);
                $("#oConfirm").val(data.oConfirm);

            }

        });
        //alert("json查询用户成功");
    }

    function updateCustomer() {
        $.post("${pageContext.request.contextPath}/order/updateOrder",
            $("#edit_customer_form").serialize(),
            function(data){
                alert("客户信息更新成功！");
                window.location.reload();
            });
    }
</script>


</html>
