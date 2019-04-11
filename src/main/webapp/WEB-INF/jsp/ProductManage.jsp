<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--<%@page isELIgnored="false"%>--%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://com.web/utils/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>商品列表-BootCRM</title>

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
					<li><a href="#"><i class="fa"></i> </a></li>
					<li><a href="#"><i class="fa"></i> </a></li>
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
							<%--<input type="text" class="form-control" placeholder="查询内容...">--%>
							<%--<span class="input-group-btn">--%>
								<%--<button class="btn btn-default" type="button">--%>
									<%--<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>--%>
								<%--</button>--%>
							<%--</span>--%>
						</div> <!-- /input-group -->
					</li>
					<li><a href="orderManege.jsp" class="active"><i
							class="fa fa-edit fa-fw"></i>订单管理</a></li>
					<li><a href="userManege.jsp"><i
							class="fa fa-dashboard fa-fw"></i>用户管理</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">商品管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" action="${pageContext.request.contextPath }/ProductManage" method="get">
						<div class="form-group">
							<label for="customerName">商品名称</label>
							<input type="text" class="form-control" id="customerName" value="" name="productName" placeholder="请输入商品名称模糊查询">
						</div>
						<button type="submit" class="btn btn-primary" id="searchProducts">查询</button>
						<a href="#" class="btn btn-danger" data-toggle="modal" data-target="#productDetailDialog">添加商品</a>
					</form>
				</div>
			</div>

			<div class="modal fade" id="productDetailDialog" tabindex="-1" role="dialog"
				 aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myProductLabel">添加商品信息</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" id="add_product_form">
								<input type="hidden" id="add_product_id" name="product_id"/>
								<div class="form-group">
									<label for="edit_name" class="col-sm-2 control-label">商品名称</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="add_productName" placeholder="商品名称" name="cust_name">
									</div>
								</div>
								<div class="form-group">
									<label for="edit_ProductType" style="float:left;padding:7px 15px 0 27px;">商品类型</label>
									<div class="col-sm-10">
										<select	class="form-control" id="add_productForm" placeholder="商品类型" name="cust_source">
											<option value="">--请选择--</option>
											<%--<c:forEach items="${fromType}" var="item">--%>
												<%--<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>--%>
											<%--</c:forEach>--%>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="edit_ProductColor" style="float:left;padding:7px 15px 0 27px;">商品颜色</label>
									<div class="col-sm-10">
										<select	class="form-control" id="add_productLevel" name="cust_level">
											<option value="">--请选择--</option>
											<%--<c:forEach items="${levelType}" var="item">--%>
												<%--<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>--%>
											<%--</c:forEach>--%>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="edit_size" class="col-sm-2 control-label">商品规格</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="add_productlinkMan" placeholder="商品规格" name="cust_linkman">
									</div>
								</div>
								<div class="form-group">
									<label for="edit_innum" class="col-sm-2 control-label">商品进货数量</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="add_productphone" placeholder="商品进货数量" name="cust_phone">
									</div>
								</div>
								<div class="form-group">
									<label for="edit_store" class="col-sm-2 control-label">商品库存</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="add_mobile" placeholder="商品库存" name="cust_mobile">
									</div>
								</div>
								<div class="form-group">
									<label for="edit_inprice" class="col-sm-2 control-label">商品进货价</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="add_zipcode" placeholder="商品进货价" name="cust_zipcode">
									</div>
								</div>
								<div class="form-group">
									<label for="edit_outprice" class="col-sm-2 control-label">商品销售价</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="add_address" placeholder="商品销售价" name="cust_address">
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary" onclick="">确认添加</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">商品信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>商品名称</th>
									<th>商品类型</th>
									<th>商品颜色</th>
									<th>商品规格</th>
									<th>商品进货数量</th>
									<th>商品库存</th>
									<th>商品进货价</th>
									<th>商品销售价</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.rows}" var="row">
									<tr>
										<td>${row.tbProperty.id}</td>
										<td>${row.pName}</td>
										<td>${row.pType}</td>
										<td>${row.tbProperty.prColor}</td>
										<td>${row.tbProperty.prSize}</td>
										<td>${row.tbProperty.prInnum}</td>
										<td>${row.tbProperty.prStore}</td>
										<td>${row.tbProperty.prInprice}</td>
										<td>${row.tbProperty.prOutprice}</td>
										<td>
											<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editCustomer(${row.tbProperty.id})">修改</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right">
							<itcast:page url="${pageContext.request.contextPath }/ProductManage"/>
						</div>
						<div class="col-md-12 text-right">
							<%--<itcast:page url="${pageContext.request.contextPath }/customer/list.action" />--%>
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








	<!-- 商品编辑对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改商品信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="id"/>
						<div class="form-group">
							<label for="edit_name" class="col-sm-2 control-label">商品名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_name" placeholder="商品名称" name="pName">
							</div>
						</div>
                        <div class="form-group">
                            <label for="edit_ProductType" class="col-sm-2 control-label">商品类型</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="edit_ProductType" placeholder="商品类型" name="pType">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="edit_ProductColor" class="col-sm-2 control-label">商品颜色</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="edit_ProductColor" placeholder="商品颜色" name="prColor">
                            </div>
                        </div>
						<div class="form-group">
							<label for="edit_Size" class="col-sm-2 control-label">商品规格</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_Size" placeholder="商品规格" name="prSize">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_innum" class="col-sm-2 control-label">商品进货数量</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_innum" placeholder="商品进货数量" name="prInnum">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_store" class="col-sm-2 control-label">商品库存</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_store" placeholder="商品库存" name="prStore">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_inprice" class="col-sm-2 control-label">商品进货价</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_inprice" placeholder="商品进货价" name="prInprice">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_outprice" class="col-sm-2 control-label">商品销售价</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_outprice" placeholder="商品销售价" name="prOutprice">
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
	
	<script type="text/javascript">
		function editCustomer(id) {
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/editProductManage",
				data:{"id":id},
				success:function(data) {
					$("#edit_cust_id").val(data.id);
					$("#edit_name").val(data.pName);
					$("#edit_ProductType").val(data.pType);
					$("#edit_ProductColor").val(data.prColor)
					$("#edit_Size").val(data.prSize);
					$("#edit_innum").val(data.prInnum);
					$("#edit_store").val(data.prStore);
					$("#edit_inprice").val(data.prInprice);
					$("#edit_outprice").val(data.prOutprice);
				}
			});
		}
		function updateCustomer() {
			$.post("${pageContext.request.contextPath}/UpdateProductManage",
					$("#edit_customer_form").serialize(),
					function(data){
				alert("客户信息更新成功！");
				window.location.reload();
			});
		}
		
		function deleteCustomer(id) {
			if(confirm('确实要删除该客户吗?')) {
				$.post("${pageContext.request.contextPath}/DeleteProductManage",{"id":id},function(data){
					alert("客户删除更新成功！");
					window.location.reload();
				});
			}
		}

		<%--$(document).ready(function(){--%>
			<%--$('#searchProducts').click(function(){--%>
				<%--var name = $('#customerName').text();--%>
				<%--alert(name);--%>
				<%--$.ajax({--%>
					<%--type:"post",--%>
					<%--url:"${pageContext.request.contextPath}/ProductManage",--%>
					<%--data:{"start":1,--%>
						<%--"rows":10,--%>
						<%--"name":name--%>
					<%--},--%>
					<%--success:function() {--%>
						<%--alert("");--%>
						<%--window.location.reload();--%>
					<%--}--%>
				<%--});--%>
			<%--});--%>
	</script>

</body>

</html>
