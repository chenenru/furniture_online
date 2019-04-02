<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 顶部装饰块 -->
		<header>
			<div class="top center">
				<div class="left fl">
				</div>
				<div class="right fr">
					<div class="gouwuche fr"><a href="${pageContext.request.contextPath }/Order">我的订单</a></div>
					<div class="fr">
						<ul><c:if test="42l">
						<li>欢迎,<jsp:text>${sessionScope.values()}</jsp:text></li>
						<ul><c:if test="#session.user!=null">
						<li>欢迎,<c:out value="#session.user"></c:out></li>
						<li><a href="${pageContext.request.contextPath }/logoutAction">退出</a></li>
						</c:if>
							<li><a href="${pageContext.request.contextPath}/Login" target="_blank">登录</a></li>
						</c:if>
							<c:if test="#session.user==null">
							<li><a href="./content/Login.jsp" target="_blank">登录</a></li>
							<li>|</li>
							<li><a href="${pageContext.request.contextPath}/Regist" target="_blank" >注册</a></li>
							<li>|</li>
							<li><a href="${pageContext.request.contextPath }/Info">个人中心</a></li>
							</c:if>
							<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryCustomer">个人中心</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</header>
	<!-- 中间类型导航条 -->
		<div class="banner_x center">
			<a href="${pageContext.request.contextPath}/content/index.jsp" ><div class="logo fl"></div></a>
			<a href=""><div class="ad_top fl"></div></a>
			<div class="nav fl" style="display: inline-block;">
				<ul>
					<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=男鞋" target="_blank">男鞋</a></li>
					<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=女鞋">女鞋</a></li>
					<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=篮球鞋">篮球鞋</a></li>
					<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=平板鞋">平板鞋</a></li>
					<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=休闲鞋">休闲鞋</a></li>
					<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=马丁靴">马丁靴</a></li>
					<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=跑步鞋">跑步鞋</a></li>
					<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=帆布鞋">帆布鞋</a></li>
				</ul>
			</div>

			<div class="rightNav">
				<div class="rightNavDiv"><a href="#" id="cartHref"><img src="${pageContext.request.contextPath}/content/image/gouwuche.jpg" style="height: 80px;width: 100px;" id="cart"></a></div>
<!-- 				<div class="rightNavDiv"><a href="#" id="serviceHref"><img src="./image/kefu.jpg" style="height: 80px;width: 100px;" id="service"></a></div> -->
				<div class="rightNavDiv"><a href="#" id="personHref"><img src="${pageContext.request.contextPath}/content/image/gerenzhongxin.jpg" style="height: 80px;width: 100px;" id="person"></a></div>
				<div class="rightNavDiv"><a href="#" id="toTopHref"><img src="${pageContext.request.contextPath}/content/image/toTop.jpg" style="height: 80px;width: 100px;" id="toTop"></a></div>
			</div>
		</div>
		<script type="text/javascript">
			function findKey() {
				var name = $("#productName").val();
				var my_action = "ProductDetail!QueryProductByProductName?productName=" + name ;
// 				alert(my_action);
				document.searchForm.action = my_action;
				searchForm.submit();
			}
		</script>
</body>
</html>