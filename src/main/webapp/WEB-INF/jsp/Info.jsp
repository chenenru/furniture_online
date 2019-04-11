<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城商城</title>

		<!--范例-->
		<%--<link rel="stylesheet" media="all" type="text/css"
              href="<c:url value='/resource'/>/base.css" media="all">--%>

		<!-- Bootstrap Core CSS -->
		<link href="<c:url value='/css'/>/css2/bootstrap.min.css" rel="stylesheet" media="all">

		<!-- MetisMenu CSS -->
		<link href="<c:url value='/css'/>/css2/metisMenu.min.css" rel="stylesheet" media="all">

		<!-- DataTables CSS -->
		<link href="<c:url value='/css'/>/css2/dataTables.bootstrap.css" rel="stylesheet" media="all">

		<!-- Custom CSS -->
		<link href="<c:url value='/css'/>/css2/sb-admin-2.css" rel="stylesheet" media="all">

		<!-- Custom Fonts -->
		<link href="<c:url value='/css'/>/css2/font-awesome.min.css" rel="stylesheet" media="all"
			  type="text/css">
		<link href="<c:url value='/css'/>/css2/boot-crm.css" rel="stylesheet" media="all"
			  type="text/css">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script type="text/javascript"
				src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script type="text/javascript"
				src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
		<script type="text/javascript" src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js'/>/bootstrap.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js'/>/index.js"></script>
		<style type="text/css">
		.banner_y .nav ul li{
			width: 300px;
		}
		</style>
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
	</head>
	<body>
	<%--<c:out value="不登录就要跳转到登录页面"/>--%>
	<%--<c:if test="${sessionScope.size()<=0}">
		<c:redirect url="/client/login"/>
	</c:if>--%>
	<div class="container-fluid">
	<%--<!-- 顶部复用代码块 -->--%>
	<%@include file="Header.jsp" %>
	<!-- self_info -->
		<div class="grzxbj">
			<div class="selfinfo center">
			<div class="lfnav fl">

                <div class="ddzx">订单中心</div>
                <div class="subddzx">
                    <ul>
                        <li>
                            <%--${order_page}--%>
                            <a href="${pageContext.request.contextPath}/order/all_list"
                               <c:if test="${order_page == 0}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>所有订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=1"
                               <c:if test="${order_page == 1}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>未支付订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=2"
                               <c:if test="${order_page == 2}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>待发货订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=3"
                               <c:if test="${order_page == 3}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>已发货订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=4"
                               <c:if test="${order_page == 4}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>已收货订单</a>
                        </li>

                    </ul>
                </div>
				<div class="ddzx">个人中心</div>
				<div class="subddzx">
					<ul>
						<li><a href="${pageContext.request.contextPath}/client/info" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
					</ul>
				</div>
				<%--<div class="subddzx">--%>
					<%--<ul>--%>
						<%--<li><a href="${pageContext.request.contextPath}/client/feedback" style="color:#ff6700;font-weight:bold;">我要反馈</a></li>--%>
					<%--</ul>--%>
                <%--</div>--%>
			</div>
			<div class="rtcont fr">
				<div class="grzlbt ml40"><span class="mr40">我的资料</span><a href="" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editCustomer(${user.id})">编辑</a></div>
				<div class="subgrzl ml40"><span>昵称</span><span style="width:600px;">${user.cName}</span></div>
				<div class="subgrzl ml40" hidden><span>id</span><span style="width:600px;">...${user.id}</span></div>
				<div class="subgrzl ml40"><span>邮箱</span><span style="width:600px;">${user.cEmail}</span></div>
				<div class="subgrzl ml40"><span>手机号</span><span style="width:600px;">${user.cPhone}</span></div>
				<div class="subgrzl ml40"><span>密码</span><span style="width:600px;">${user.cPwd}</span></div>
				<div class="subgrzl ml40"><span>收货地址</span><span style="width:600px;">${user.cAddress}</span></div>
			</div>
			<div class="clear"></div>
			</div>
		</div>
	<!-- 客户编辑信息框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
		 aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改客户信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="id"/>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">昵称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_customerName" name="cName">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_password" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_password" name="cPwd">
							</div>
						</div>
						<%--<div class="form-group">
							<label for="edit_Id" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-10">
								<input hidden type="text" class="form-control" id="edit_Id" name="id">
							</div>
						</div>--%>
						<div class="form-group">
							<label for="edit_mobile" class="col-sm-2 control-label">移动电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_mobile" name="cPhone">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_zipcode" class="col-sm-2 control-label">邮政编码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_zipcode" name="cEmail">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_address" class="col-sm-2 control-label">联系地址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_address" name="cAddress">
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
	<!--这是修改框 -->
	<script type="text/javascript">
        function editCustomer(id) {
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/client/edit",
                data:{"id":id},
                success:function(data) {
                    $("#edit_cust_id").val(data.id);
                    $("#edit_customerName").val(data.cName);
                    $("#edit_password").val(data.cPwd);
                    $("#edit_mobile").val(data.cPhone);
                    $("#edit_zipcode").val(data.cEmail);
                    $("#edit_address").val(data.cAddress);

                }

            });
            //alert("json查询用户成功");
        }
        function updateCustomer() {
            $.post("${pageContext.request.contextPath}/client/update",
				$("#edit_customer_form").serialize(),
				function(data){
                alert("客户信息更新成功！");
                window.location.reload();
            });
        }
	</script>
		<script>
            $(function(){
                var click=1;
                if (click==0) {
                    $(".divBox2").toggle("slow");
                }else{
                    $(".divBox").toggle("slow");
                }
                $(".spanBox").click(function(){
                    $(".divBox").toggle("slow");
                    $(".divBox2").toggle("slow");
                });
                // alert(click);
            });
		</script>
		<footer class="mt20 center">
			<div>©由莫宽元、赖周浩、陈恩如、陈婉琳学习小组进行编写</div>
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>
		</body>
</html>

