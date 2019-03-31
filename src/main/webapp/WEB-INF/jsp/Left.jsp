<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
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
						<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryDiscount">优惠券</a></li>
						<li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryAddress">收货地址</a></li>
					</ul>
				</div>
			</div>
</body>
</html>