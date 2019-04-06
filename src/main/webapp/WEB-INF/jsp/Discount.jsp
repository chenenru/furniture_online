<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城商城</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/style.css">
		<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/index.js"></script>
		<style type="text/css">
		.banner_y .nav ul li{
			width: 300px;
		}
		</style>
	</head>
	<body>
	<div class="container-fluid">
		<!-- 顶部复用代码块 -->
	<%@include file="Header.jsp" %>
<!-- self_info -->
	<div class="grzxbj">
		<div class="selfinfo center">
		<div class="lfnav fl">
			<div class="ddzx">订单中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryOrderrs" >我的订单</a></li>
				</ul>
			</div>
			<div class="ddzx">个人中心</div>
			<div class="subddzx">
				<ul>
						<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryCustomer" >我的个人中心</a></li>
						<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryDiscount" style="color:#ff6700;font-weight:bold;">优惠券</a></li>
						<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryAddress">收货地址</a></li>
				</ul>
			</div>
		</div>
		<div class="rtcont fr">
			<div class="grzlbt ml40">账户里所有的优惠卷信息</div>
			<div class="discountTile"><span>优惠卷编号</span><span>适用商品类别</span><span>优惠时段</span><span>优惠金额</span></div>
			<s:iterator value="discounts" var="d" id="di">
			<%-- <s:property value="id"/>
			<s:property value="discountPrice"/>
			<td>${a} </td> --%>
			<div class="discountTile"><span><s:property value="id"/></span><span>适用商品类别</span><span><s:property value="discountBeginTime"/></span><span><s:property value="discountPrice"/></span></div>
			</s:iterator>
			<div class="subgrzl ml40"><span>{优惠卷编号}</span><span>{适用商品类别}</span><span>{优惠时段}</span><span>{优惠金额}</span></div>
			<div class="subgrzl ml40"><span>{优惠卷编号}</span><span>{适用商品类别}</span><span>{优惠时段}</span><span>{优惠金额}</span></div>
		</div>
		<div class="clear"></div>
		</div>
	</div>
<!-- self_info -->
		
		<footer class="mt20 center">
			<div>©由莫宽元、赖周浩、陈恩如学习小组进行编写</div>
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>
	</body>
</html>