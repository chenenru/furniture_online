<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城-商品详情</title>
		<link href="<c:url value='/css'/>/style.css" rel='stylesheet' type='text/css' media="all"/>
		<link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
		<script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
		<script src="<c:url value='/js'/>/bootstrap.min.js"></script>
		<script src="<c:url value='/js'/>/index.js"></script>
	</head>
	<body>
	<!-- 顶部复用代码块 -->
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
					<li>
						<a href="${pageContext.request.contextPath}/order/status_list?order_status=5"
						   <c:if test="${order_page == 5}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>已评论订单</a>
					</li>

				</ul>
			</div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/client/info" >我的个人中心</a></li>
                </ul>
            </div>
		</div>
		<div class="rtcont fr">
			<%--要动态生成的html代码--%>
			<c:forEach var="order_item" items="${orderList}" begin="0" end="${orderList.size()}" varStatus="index">
				<div class="ddxq">
					<div class="ddspt fl">
						<img src="<c:url value="/image"/>/${order_item.tbProperty.prImage} "
							style="margin-bottom:50px" width="80" height="80">
					</div>
					<div class="ddbh fl">订单号:${order_item.id}</div>
					<div class="ztxx fr">
						<ul>
							<li>
								<c:choose>
									<c:when test="${ order_item.oStatus == 1 }">
										未支付
									</c:when>
									<c:when test="${ order_item.oStatus == 2 }">
										已支付
									</c:when>
									<c:when test="${ order_item.oStatus == 3 }">
										已发货
									</c:when>
									<c:when test="${ order_item.oStatus == 4 }">
										已收货
									</c:when>
									<c:when test="${ order_item.oStatus == 5 }">
										已评论
									</c:when>
								</c:choose>
							</li>
							<li>总价：${order_item.oTotal}</li>
							<li>下单数量：${order_item.oNum}</li>
							<li><a href="${pageContext.request.contextPath}/order/detail?order_id=${order_item.id}">订单详情></a></li>
							<div class="clear"></div>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
			</c:forEach>

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
