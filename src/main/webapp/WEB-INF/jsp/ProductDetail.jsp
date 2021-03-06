<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城商城</title>
		<%String basePath = request.getScheme()+"://" +request.getServerName()+":"+request.getServerPort(); %>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css'/>/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css'/>/style.css">
		<script type="text/javascript" src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js'/>/bootstrap.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js'/>/index.js"></script>
		<script type="text/javascript" src="<c:url value='/js'/>/fly.js"></script>
		<script src="<c:url value='/js'/>/requestAnimationFrame.js"></script>
		<style type="text/css">
			.banner_y .nav ul li{
				width: 300px;
			}
			#tishi{border:1px solid; border-radius:10px; width:140px; background-color: orange;position: fixed; margin-left: 600px; display:none ; font-size: 24px; color:white;}




		</style>
	</head>
	<body>
	<div class="container-fluid">
		<!-- 顶部复用代码块 -->
	<%@include file="Header.jsp" %>	
	
	<!-- xiangqing -->
	<form action="post" method="">
	<div class="xiangqing">
		<div class="neirong w">
			<div class="xiaomi6 fl"><c:out value="${ProductDetail.pName}"></c:out></div>
			<nav class="fr" >
			<ul style="margin-left: 150px;">
				<div class="clear"></div>
				</ul>
			</nav>
			<div class="clear"></div>
		</div>
	</div>
	
	<div class="jieshao mt10 w">
		<div class="left fl">
			<div><img src="<c:url value='/image'/>/<c:out value='${ProductDetail.tbProperty.prImage}'></c:out>" style="height: 560px; width: 560px;"/></div>
			<div style="margin: 20px 0 0 0%; font-size: 28px; font-family: Algerian;" ><a style=" color: red;">评论&nbsp;:</a></div>
		</div>
		<div class="right fr">
			<div class="h3 ml20 mt20"><c:out value="${ProductDetail.pName}"></c:out><span id="product_id" style="display:none;"><s:text name="product.id"></s:text></span></div>
			<div id="tishi">加入购物车成功！</div>
			<div class="jianjie mr40 ml20 mt10">家具介绍：<c:out value="${ProductDetail.pIntro}"></c:out></div>
			<div class="jiage ml20 mt10">单价：<span id="onePrice"><c:out value="${ProductDetail.tbProperty.prOutprice}"></c:out>.00</span></div>
			<div class="ft20 ml20 mt20">颜色：<span><c:out value="${ProductDetail.tbProperty.prColor}"></c:out></span></div>
			
			<div class="ft20 ml20 mt20" >尺寸：<c:out value="${ProductDetail.tbProperty.prSize}"></c:out></div>
			<div class="xzbb ml20 mt10" style="color: orange;font-size:16px;">
				销量：${ProductDetail.tbProperty.prInnum - ProductDetail.tbProperty.prStore} &nbsp;&nbsp;&nbsp;&nbsp;
				货存：${ProductDetail.tbProperty.prStore}
			</div>
			
			
			<div class="ft20 ml20 mt20">数量：
				<div class="sub_content" style="display:inline-block;">
					<input class="shuliang" id="sum" type="number" value="1" step="1" min="1" style="width: 50px;"
						   onblur="chooseNumber()" onclick="chooseNumber()" >
				</div>
			</div>
			
			
			<div class="xqxq" style="background-color: rgb(248,248,248);">
				<div class="top1 mt10">
					<div class="left1 fl">类型：<c:out value="${ProductDetail.pType}"></c:out></div>
					<div class="right1 fr"></div>
					<div class="clear"></div>
				</div>
				<div class="bot mt20 ft20 ftbc">总计：<span id="AllPrice"><c:out value="${ProductDetail.tbProperty.prOutprice}"></c:out></span>.00元</div>
			</div>
			<br><br>
			<div class="xiadan ml20 mt20">
					<%--<input class="jrgwc"  type="button" name="jrgwc" value="立即选购" id="buy"  />--%>
					<input class="jrgwc "  type="button" name="jrgwc" value="加入购物车" id="add" />
			</div>
		</div>
		</div>
		<div class="clear"></div>
		<div style="height: 1px; width: 1300px; margin: auto;background-color:#fffaf5;">
			<hr>
			<c:forEach var="comment" items="${comments}" begin="0" step="1">
				<div style="background-color: #fffaf5;padding-top: 5px;">
					<div style="margin: 10px 0 10px 5%">用户:${comment.cName}</div>
					<div style="margin: 10px 0 10px 5%">${comment.co_date}</div>
					<div style="margin: 10px 0 10px 25%">${comment.co_info}</div>
					<div style="margin: 10px 15% 10px 5%; border-bottom: #201f1f;">星级：${comment.co_grade}</div>
					<%--<div style="border-bottom: solid 1px #201f1f"></div>--%>
					<hr>
				</div>
			</c:forEach>
		</div>
	</form>
		</div>
	</body>
	<script type="text/javascript">



		function chooseNumber() {

			// alert("---");

			var oneNumber = parseInt($("#sum").val());
			var price = ${ProductDetail.tbProperty.prOutprice};
			if (oneNumber < 1){
				oneNumber =1;
				$("#sum").text("1");
				$("#sum").attr("value",1);
				$("#sum").html("1");
			}
			if ( isNaN(oneNumber)){
				oneNumber =1;
				$("#sum").text("1");
				$("#sum").attr("value",1);
				$("#sum").html("1");
			}

			$("#AllPrice").text(parseInt(price * oneNumber));
		}



	$('#add').click(function(){

		var storenow = ${ProductDetail.tbProperty.prStore};
		// alert(storenow);
		var sum =$("#sum").val();
		if (storenow < sum) {
			alert("亲~该商品的货存不足！");
			return;
		}
		if( storenow >= sum ){
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/addProductDetail",
				data:{
					"addPid":"${ProductDetail.id}",
					"addProNumber":sum,
				},
				success:function(){
					alert("亲，加入购物车成功！");
				},
				error:function(){
					alert("亲，很遗憾，加入购物车失败！");
				}
			});
		}

	});
	

	</script>
	
</html>
