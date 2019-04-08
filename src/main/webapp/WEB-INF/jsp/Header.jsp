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
					<div class="gouwuche fr">
						<c:choose>
							<c:when test="${ sessionScope.user != null}">
								<a href="${pageContext.request.contextPath }/order/all_list">我的订单</a>
							</c:when>
							<c:otherwise>
								欢迎登陆
							</c:otherwise>
						</c:choose>
					</div>
					<div class="fr">
						<%--<ul><c:if test="42l">--%>
						<%--<li>欢迎,<jsp:text>${sessionScope.values()}</jsp:text></li>--%>
						<ul><c:if test="${sessionScope.size()>0}">
						<li><c:if test="${sessionScope.username != null }">欢迎,${sessionScope.username}</c:if> </li>
						<li><a href="${pageContext.request.contextPath }/client/logout">退出</a></li>
						</c:if>
							<%--<li><a href="${pageContext.request.contextPath}/Login" target="_blank">登录</a></li>--%>
						<%--</c:if>--%>
							<c:if test="${sessionScope.size()<=0}">
							<li><a href="${pageContext.request.contextPath}/login" target="_blank">登录</a></li>
							<li>|</li>
							<li><a href="${pageContext.request.contextPath}/regist" target="_blank" >注册</a></li>
							<li>|</li>
							<%--<li><a href="${pageContext.request.contextPath }/client/info">个人中心</a></li>--%>
							</c:if>
							<%--<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryCustomer">个人中心</a></li>--%>
							<li><c:if test="${sessionScope.user != null}"><a href="${pageContext.request.contextPath }/client/info">个人中心</a> </c:if> </li>
							<li><a href="${pageContext.request.contextPath }/feedback">我要反馈</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</header>
	<!-- 中间类型导航条 -->
		<div class="banner_x center">
			<a href="${pageContext.request.contextPath}/index" ><div class="logo fl"></div></a>
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
				<div class="rightNavDiv"><a href="#" id="cartHref"><img src="${pageContext.request.contextPath}/image/gouwuche.jpg" style="height: 80px;width: 100px;" id="cart"></a></div>
<!-- 				<div class="rightNavDiv"><a href="#" id="serviceHref"><img src="./image/kefu.jpg" style="height: 80px;width: 100px;" id="service"></a></div> -->
				<div class="rightNavDiv"><a href="#" id="personHref"><img src="${pageContext.request.contextPath}/image/gerenzhongxin.jpg" style="height: 80px;width: 100px;" id="person"></a></div>
				<div class="rightNavDiv"><a href="#" id="toTopHref"><img src="${pageContext.request.contextPath}/image/toTop.jpg" style="height: 80px;width: 100px;" id="toTop"></a></div>
			</div>
			<div class="searchProduct" style="display: inline-block;">
				<form action="" method="post" id="searchName" name="searchForm">
					<div class="input-group" id="searchProduct">
						<input type="text" class="form-control" placeholder="请输入商品名" id="productName">
						<div class="input-group-btn">
							<button class="btn btn-danger" onclick="findKey()">查找</button>
						</div>
					</div>
				</form>
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