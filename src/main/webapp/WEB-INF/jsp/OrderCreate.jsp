<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>面对疾风商城商城</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/content/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/content/css/style.css">
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/index.js"></script>
<style type="text/css">
.banner_y .nav ul li {
	width: 300px;
}
/* 下单页面 */
.dingdan {
	width: 1300px;
	background-color:;
}

.dingdan .ordertitle {
	width: 200px;
	height: 60px;
	background-color:;
	text-align: center;
	padding-top: 15px;
}

.dingdan .ordertitle span:nth-of-type(1) {
	font-size: 30px;
}

.dingdan .orderinfo {
	width: 500px;
	height: 60px;
	background-color:;
	text-align: ;
	padding-top: 15px;
}

.dingdan .orderinfo span:nth-of-type(1) {
	font-size: 16px;
}

.dingdan .shangpin {
	line-height: 40px;
}

.dingdan .shangpin span:nth-of-type(1) {
	margin-left: ;
	font-size: 18px;
}

.dingdan .shangpin span:nth-of-type(2) {
	margin-left: 50px  ;
	font-size: 18px;
}

.dingdan .shangpin span:nth-of-type(3) {
	margin-left: ;
	font-size: 18px;
	color: orange;
}

.dingdan .jieguo {
	margin-left: 80%;
}

.dingdan .jieguo .xianshi span:nth-of-type(2) {
	font-size: 20px;
	color: orange;
}

.dingdan .xiadan .submit {
	border: none;
	width: 200px;
	height: 45px;
	margin-left: 80%;
	margin-top: 30px;
	background: #ff6700;
	color: #fff;
	font-size: 22px;
	font-weight: bold;
	letter-spacing: 8px;
	cursor: pointer;
}

.dingdan .xiadan .submit:hover {
	border: 1px solid #ccc;
}

.dingdan .orderimage{ display:inline-block; margin-top: 20px; }

.dingdan .orderimage img{ width:150px;height: 150px;}

.dingdan .orderproductname { display:inline-block; margin-left: 50px;width: 850px; height: 100px; }

.dingdan .shangpin { display: inline-block; }

</style>
</head>
<script type="text/javascript">

	function buy() {
		
	}

</script>
<body>
<%
    	//获得number
    	String str=request.getParameter("id");
		String str1 = request.getParameter("count");
		String str2 = request.getParameter("size");
		String allprice = request.getParameter("allprice");
    	int id=Integer.parseInt(str);
    	int count=Integer.parseInt(str1);
    	int size=Integer.parseInt(str2);
    	String Do = "http://localhost:8080/shopping_online/" + "OrderrDetail!AddProductToOrder?id=" + str + "&count=" + count + "&size=" + size + "&allprice=" + allprice;
    	
%>
	<div class="container-fluid">
		<!-- 顶部复用代码块 -->
		<%@include file="Header.jsp"%>

		<!-- 订单主要内容 -->
		<div class="dingdan center">
			<div class="ordertitle">
				<span>确认订单</span>
			</div>
			<form action=<%=Do %> method="post">
				<hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<div class="orderinfo" style="">
					<span >收货地址：<s:property value="customer.productAddress" /></span>
				</div>
				<hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<div class="orderimage">
					<img src='<s:property value="product.productImage" />'>
				</div>
				<div class="orderproductname">
					<span> <s:property value="product.productName" /> </span>
				</div>
				<div class="shangpin">
					<span></span><span id="onePrice"><s:property value="product.productSellPrice" /></span> *<%=count %><span></span>
				</div>

				
				<hr style="height:1px;border:none;border-top:1px solid #555555;" />
				<div class="jieguo">
					<div class="xianshi">
						<span>商品件数：</span><span id="count"><%=count %>件</span>
					</div>
					<div class="xianshi">
						<span>商品总价：</span><span id="allprice"><%=allprice %>.00元</span>
					</div>

				</div>
				<div class="xiadan">
					<div class="xiadan_submit">
						<input class="submit" type="submit" value="立即下单" onclick="buy()"/>
					</div>
				</div>
				
			</form>
		</div>
	</div>
</body>
</html>