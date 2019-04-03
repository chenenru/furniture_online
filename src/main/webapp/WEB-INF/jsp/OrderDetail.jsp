<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城-商品详情</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/style.css">
		<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/index.js"></script>
	</head>
	<body>
	<s:debug/>
	<!-- 顶部复用代码块 -->
	<%@include file="Header.jsp" %>	
<!-- self_info -->
	<div class="grzxbj">
		<div class="selfinfo center">
		<div class="lfnav fl">
			<div class="ddzx">订单中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryOrderrs" style="color:#ff6700;font-weight:bold;">我的订单</a></li>
				</ul>
			</div>
			<div class="ddzx">个人中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryCustomer">我的个人中心</a></li>
				</ul>
			</div>
		</div>
		<div class="rtcont fr">
			<div class="ddzxbt">交易订单</div>
			<%-- <div class="ddxq">
				<div class="ddspt fl"><img src="${product.productImage }" alt="" width="80" height="80"></div>
				<div class="ddbh fl">订单号:0000000000${orderr.id }</div>
				<div class="ztxx fr">
					<ul>
						<li>已发货</li>
						<li>${product.productSellPrice }</li>
						<li>${orderr.orderPayTime }</li>
						<li><a href="./content/OrderMsg.jsp">订单详情></a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div> --%>
			<s:iterator value="orderrs" var="o" status="os" id="r">
			<s:if test="products!=null">
			<s:iterator value="products" var="p">
			<div class="ddxq">
				<div class="ddspt fl"><img src='${pageContext.request.contextPath }/${p.productImage }' alt="" width="80" height="80" style="margin-bottom: 43px;"></div>
				<div class="ddbh fl">订单号:0000000000${orderr.id }</div><s:text name="id"></s:text><%-- <s:text name="product.productImage" /> --%>
				<div class="ztxx fr">
					<ul>
						<li>已发货<s:property value="#r.id" /></li>
						<li>${product.productSellPrice }<s:text name="productSellPrice"/></li>
						<li>${orderr.orderPayTime }</li>
						<li><a href="./content/OrderMsg.jsp?id=${id }">订单详情></a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			</s:iterator>
			</s:if>
			<s:else>
			<div class="ddxq">
				<div class="ddspt fl"><img src='${pageContext.request.contextPath }/${p.productImage }' alt="" width="80" height="80"></div>
				<div class="ddbh fl">订单号:0000000000${orderr.id }</div><s:text name="id"></s:text><%-- <s:text name="product.productImage" /> --%>
				<div class="ztxx fr">
					<ul>
						<li>已发货<s:property value="#r.id" /></li>
						<li>${product.productSellPrice }<s:text name="productSellPrice"/></li>
						<li>${orderr.orderPayTime }</li>
						<li><a href="./content/OrderMsg.jsp?id=${id }">订单详情></a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			</s:else>
			</s:iterator>
			<%-- <div class="ddxq">
				<div class="ddspt fl"><img src="${product.productImage }" alt="" width="80" height="80"></div>
				<div class="ddbh fl">订单号:0000000000${orderr.id }</div>
				<div class="ztxx fr">
					<ul>
						<li>已发货</li>
						<li>${product.productSellPrice }</li>
						<li>${orderr.orderPayTime }</li>
						<li><a href="./content/OrderMsg.jsp">订单详情></a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div> --%>
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
