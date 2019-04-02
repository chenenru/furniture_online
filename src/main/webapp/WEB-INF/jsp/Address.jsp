<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城商城</title>
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
	</head>
	<body>
	<!-- <div class="container-fluid"> -->
		<!-- 顶部复用代码块 -->
	<%@include file="Header.jsp" %>	
	<!-- 中间类型导航条 -->
<!-- self_info -->
	<div class="grzxbj">
		<div class="selfinfo center">
		<div class="lfnav fl">
			<div class="ddzx">订单中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="${pageContext.request.contextPath }/#" style="color:#ff6700;font-weight:bold;">我的订单</a></li>
				</ul>
			</div>
			<div class="ddzx">个人中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="${pageContext.request.contextPath }/#">我的个人中心</a></li>
					<li><a href="${pageContext.request.contextPath }/#">优惠券</a></li>
					<li><a href="${pageContext.request.contextPath }/#">收货地址</a></li>
				</ul>
			</div>
		</div>
		<div class="rtcont fr">
			<div class="grzlbt ml40">所有收货地址</div>
			<div class="address"><span>省市区</span><span>具体地址</span><span>收货人</span><span>收货电话</span><span>操作</span></div>
			<div class="addressinfo ml40"><span>{省市区}</span><span>{具体地址}</span><span>{收货人}</span><span>{收货电话}</span><span><a href="">删除</a></span></div>
			<div class="addressinfo ml40"><span>{省市区}</span><span>{具体地址}</span><span>{收货人}</span><span>{130482*****}</span><span><a href="">删除</a></span></div>

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