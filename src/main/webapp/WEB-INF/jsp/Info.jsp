<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

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
	<s:if test="#session.user==null">
	<jsp:forward page="/content/Login.jsp"></jsp:forward>
	</s:if>
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
						<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryCustomer" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
					</ul>
				</div>
			</div>
			<div class="rtcont fr">
				<div class="grzlbt ml40"><span class="mr40">我的资料</span><span><a href="">编辑</a></span></div>
				<div class="subgrzl ml40"><span>昵称</span><span style="width:600px;"><s:text name="customer.userNickname"/></span></div>
				<div class="subgrzl ml40"><span>性别</span><span style="width:600px;"><s:text name="customer.userSex"></s:text></span></div>
				<div class="subgrzl ml40"><span>邮箱</span><span style="width:600px;"><s:text name="customer.userEmail"></s:text></span></div>
				<div class="subgrzl ml40"><span>手机号</span><span style="width:600px;"><s:text name="customer.userPhone"></s:text>陈</span></div>
				<div class="subgrzl ml40"><span>密码</span><span style="width:600px;"><s:text name="customer.userPsw"></s:text></span></div>
				<div class="subgrzl ml40"><span>收货地址</span><span style="width:600px;"><s:text name="customer.userAddress"></s:text></span></div>
				
			</div>
			<div class="clear"></div>
			</div>
		</div>
	<!-- self_info -->
			</div>
		<footer class="mt20 center">			
			<div>©由莫宽元、赖周浩、陈恩如学习小组进行编写</div> 
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>
		</body>
</html>