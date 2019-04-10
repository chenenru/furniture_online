<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城商城</title>
		<link href="<c:url value='/css'/>/style.css" rel='stylesheet' type='text/css' media="all"/>
		<link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
		<script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
		<script src="<c:url value='/js'/>/bootstrap.min.js"></script>
		<script src="<c:url value='/js'/>/index.js"></script>
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
	<!-- end banner -->

	<!-- start danpin -->
		<div class="danpin center">
			<div class="biaoti center">搜索结果</div>
			<div class="main center">

				<c:forEach var="product" items="${productList}" begin="0" end="${productList.size()}">
					<div class="mingxing  mb20" style="border:2px solid #fff;width:230px;cursor:pointer;"
						 onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
						<div class="sub_mingxing">
							<a href="${pageContext.request.contextPath }/selectProduct?id=${product.id}" target="_blank">
							<img src='${pageContext.request.contextPath }/image/${ product.prImage }' alt=""></a></div>
						<div class="pinpai">
							<a href="${pageContext.request.contextPath }/selectProduct?id=${product.id}" target="_blank">
							${product.pName}</a></div>
						<div class="youhui"></div>
						<div class="jiage">${product.prOutprice}.00元</div>
					</div>
				</c:forEach>

			</div>

		</div>
		</div>
		

		<footer class="mt20 center">			
			<div>©由莫宽元、赖周浩、陈恩如学习小组进行编写</div> 
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>

	<!-- end danpin -->


	</body>
</html>