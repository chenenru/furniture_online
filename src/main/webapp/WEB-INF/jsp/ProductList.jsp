<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

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
	<div class="container-fluid">
		<!-- 顶部复用代码块 -->
	<%@include file="Header.jsp" %>	
	<!-- end banner -->

	<!-- start danpin -->
		<div class="danpin center">
			<div class="biaoti center"><s:text name="productType"/></div>
			<div class="main center">
			<s:iterator value="products" var="p">
				<div class="mingxing  mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
					<div class="sub_mingxing"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=${p.id}" target="_blank"><img src='${pageContext.request.contextPath }/${ p.productImage }' alt=""></a></div>
					<div class="pinpai"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=${p.id}" target="_blank"><s:property value="productName"/></a></div>
					<div class="youhui"></div>
					<div class="jiage"><s:property value="productSellPrice"/>.00元</div>
				</div>
			</s:iterator>
			</div>
			<%-- <div class="biaoti center">{鞋子类型}</div>
			<div class="main center">
				<div class="mingxing  mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
					<div class="sub_mingxing"><a href="./ProductDetail.jsp" target="_blank"><img src="${pageContext.request.contextPath}/content/image/liebiao_xiaomi6.jpg" alt=""></a></div>
					<div class="pinpai"><a href="./ProductDetail.jsp" target="_blank">小米6</a></div>
					<div class="youhui">5.16早10点开售</div>
					<div class="jiage">2499.00元</div>
				</div>
				
				<div class="mingxing  mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
					<div class="sub_mingxing"><a href=""><img src="${pageContext.request.contextPath}/content/image/liebiao_xiaomi5c.jpg" alt=""></a></div>
					<div class="pinpai"><a href="">小米手机5c</a></div>
					<div class="youhui">搭载澎湃S1 八核高性能处理器</div>
					<div class="jiage">1499.00元</div>
				</div>
				<div class="mingxing  mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
					<div class="sub_mingxing"><a href=""><img src="${pageContext.request.contextPath}/content/image/liebiao_xiaomint2.jpg" alt=""></a></div>
					<div class="pinpai"><a href="">小米Note 2</a></div>
					<div class="youhui">5月9日-20日 小米Note 2 享花呗12期分期免息</div>
					<div class="jiage">2799.00元</div>
				</div>
				<div class="mingxing  mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
					<div class="sub_mingxing"><a href=""><img src="${pageContext.request.contextPath}/content/image/liebiao_xiaomimix.jpg" alt=""></a></div>
					<div class="pinpai"><a href="">小米MIX</a></div>
					<div class="youhui">5月9日-20日小米MIX 享花呗12期分期免息</div>
					<div class="jiage">3499.00元</div>
				</div>
				<div class="mingxing  mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
					<div class="sub_mingxing"><a href=""><img src="${pageContext.request.contextPath}/content/image/liebiao_xiaomi5s.jpg" alt=""></a></div>
					<div class="pinpai"><a href="">小米5s</a></div>
					<div class="youhui">“暗夜之眼”超感光相机 / 无孔式超声波</div>
					<div class="jiage">1999.00元</div>
				</div>	
			</div> --%>
		</div>
		</div>
		

		<footer class="mt20 center">			
			<div>©由莫宽元、赖周浩、陈恩如学习小组进行编写</div> 
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>

	<!-- end danpin -->


	</body>
</html>