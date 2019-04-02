<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<%--<c:if test="${sessionScope.values()} ==null">
	<jsp:forward page="${pageContext.request.contextPath}/login"></jsp:forward>
	</c:if>--%>
	<c:out value="不登录就要跳转到登录页面"/>
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
						<li><a href="#" >我的订单</a></li>
					</ul>
				</div>
				<div class="ddzx">个人中心</div>
				<div class="subddzx">
					<ul>
						<li><a href="#" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
					</ul>
				</div>
			</div>
			<div class="rtcont fr">
				<div class="grzlbt ml40"><span class="mr40">我的资料</span></div>
				<div class="subgrzl ml40"><span>昵称</span><span style="width:600px;">${user.cName}</span></div>
				<div class="subgrzl ml40"><span>性别</span><span style="width:600px;">...</span></div>
				<div class="subgrzl ml40"><span>邮箱</span><span style="width:600px;">${user.cEmail}</span></div>
				<div class="subgrzl ml40"><span>手机号</span><span style="width:600px;">${user.cPhone}</span></div>
				<div class="subgrzl ml40"><span>密码</span><span style="width:600px;">${user.cPwd}</span></div>
				<div class="subgrzl ml40"><span>收货地址</span><span style="width:600px;">${user.cAddress}</span></div>

			</div>
			<div class="clear"></div>
			</div>
		</div>
		<%--<c:choose>
			<c:when test="${fn:length(gasPlateDtoList)==1 && fn:length(gasCompanyDtoList)==1}">
				<input type="button" value="确认支付" id="payBtn">
			</c:when>
			<c:otherwise>
				<input type="button" value="确认支付" id="payBtn" disabled>
			</c:otherwise>
		</c:choose>--%>
	<!-- self_info -->
			</div>
		<footer class="mt20 center">			
			<div>©由莫宽元、赖周浩、陈恩如、陈婉琳学习小组进行编写</div>
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>
		</body>
</html>