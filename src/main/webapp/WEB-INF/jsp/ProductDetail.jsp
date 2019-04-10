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
			<div style="margin: 20px 0 0 50%; font-size: 18px; font-family: Algerian"><a>评论</a></div>
		</div>
		<div class="right fr">
			<div class="h3 ml20 mt20"><c:out value="${ProductDetail.pName}"></c:out><span id="product_id" style="display:none;"><s:text name="product.id"></s:text></span></div>
			<div id="tishi">加入购物车成功！</div>
			<div class="jianjie mr40 ml20 mt10">家具介绍：<c:out value="${ProductDetail.pIntro}"></c:out></div>
			<div class="jiage ml20 mt10">单价：<span id="onePrice"><c:out value="${ProductDetail.tbProperty.prOutprice}"></c:out>.00</span></div>
			<div class="ft20 ml20 mt20">颜色：<span><c:out value="${ProductDetail.tbProperty.prColor}"></c:out></span></div>
			
			<div class="ft20 ml20 mt20" >选择尺寸：<c:out value="${ProductDetail.tbProperty.prSize}"></c:out></div>
			<div class="xzbb ml20 mt10">
				<div class="banben">
					<div class="yanse" id="yan1" style="height: 60px; width: 200px;">
						<a href="#" onclick="chooseSize1()"><span id="size1" ><c:out value="${ProductDetail.tbProperty.prSize}"></c:out></span></a>
					</div>
					<%--<div class="yanse" id="yan2">--%>
						<%--<a href="#" onclick="chooseSize2()"><span id="size2">41</span></a>--%>
					<%--</div>--%>
				</div>
			</div>
			
			
			<div class="ft20 ml20 mt20">数量：
				<div class="sub_content" style="display:inline-block;">
					<input class="shuliang" id="sum" type="number" value="1" step="1" min="1" style="width: 50px;" >
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
					<input class="jrgwc" type="button" name="jrgwc" value="加入购物车" id="add" />
			</div>
		</div>
		</div>
		<div class="clear"></div>
		<div style="height: 50px; width: 100%;">
			<hr>
			<c:forEach var="comment" items="${comments}" begin="0" step="1">
				<div style="background-color: #aaaaaa;">
					<div style="margin: 10px 0 10px 5%">用户:${comment.cName}</div>
					<div style="margin: 10px 0 10px 5%">${comment.co_date}</div>
					<div style="margin: 10px 0 10px 25%">${comment.co_info}</div>
					<div style="margin: 10px 0 10px 45%; border-bottom: #201f1f;">星级：${comment.co_grade}</div>
					<%--<div style="border-bottom: solid 1px #201f1f"></div>--%>
					<hr>
				</div>
			</c:forEach>
		</div>
	</form>
	<!-- footer -->
		</div>
		<%--<footer class="mt20 center">--%>
		<%--<div style="margin-top: 20px; ">--%>
			<%--<div>©由莫宽元、赖周浩、陈恩如、陈婉琳学习小组进行编写</div>--%>
			<%--<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>--%>
		<%--</div>--%>
		<%--</footer>--%>
	</body>
	<script type="text/javascript">
	<%--var size = -1;--%>
	<%--var count = 1;--%>
	<%--$(function() { --%>
	    <%--var offset = $("#cartHref").offset(); --%>
	    <%--$("#add").click(function(event){ --%>
	        <%--var add = $(".left").find('img'); --%>
	        <%--var img = add.attr('src');--%>
<%--// 	        alert(img);--%>
	        <%--var flyer = $('<img class="u-flyer" src="'+img+'">'); --%>
	        <%--flyer.fly({ --%>
	            <%--start: { --%>
	                <%--left: event.pageX-750, //开始位置（必填）#fly元素会被设置成position: fixed --%>
	                <%--top: event.pageY-600, //开始位置（必填）--%>
	                <%--width: 50, //开始时宽度 --%>
	                <%--height: 50 //开始时高度 --%>
	            <%--}, --%>
	            <%--end: { --%>
	                <%--left: offset.left+30, //结束位置（必填） --%>
	                <%--top: offset.top+20, //结束位置（必填） --%>
	                <%--width: 0, //结束时宽度 --%>
	                <%--height: 0 //结束时高度 --%>
	            <%--}, --%>
	            <%--onEnd: function(){ //结束回调 --%>
	                <%--$("#tishi").show().animate({width: '140px'}, 200).fadeOut(2000); //提示信息 --%>
<%--// 	                addcar.css("cursor","default").removeClass('orange').unbind('click'); --%>
<%--// 	                this.destory(); //移除dom --%>
					<%--sleep(1000);--%>
					<%----%>
	                <%--var productID = document.getElementById("product_id").innerText;--%>
					<%--alert("${pageContext.request.contextPath}/OrderrDetail!AddProductToOrder?id=" + productID + size + "count=" + count);--%>
	        		<%--window.location.href = "${pageContext.request.contextPath}/OrderrDetail!AddProductToCart?id=" + productID + "&size=" + size +"&count=" + count;--%>
	            <%--} --%>
	        <%--}); --%>
	    <%--}); --%>
	<%--}); --%>
	
	function chooseSize1() {
		size = document.getElementById("size1").innerText;
// 		alert("-----");
// 		alert(size);
		$("#yan2").css("border","1px solid #bbb");
		$("#yan1").css("border","1px solid #ff6700");
		$("#size2").css("color","black");
		$("#size1").css("color","#ff6700");
		
	}
	
	function chooseSize2() {
		size = document.getElementById("size2").innerText;
// 		alert("-----");
// 		alert(size);
		$("#yan1").css("border","1px solid #bbb");
		$("#yan2").css("border","1px solid #ff6700");
		$("#size1").css("color","black");
		$("#size2").css("color","#ff6700");
	}
	
	$("#sum").blur(function(){
		count = $("#sum").val();
		var oneprice = document.getElementById("onePrice").innerText;
		
// 		alert(size);
		
		$("#AllPrice").text((count * oneprice) );
	});
	
	$("#sum").click(function(){
			
		count = $("#sum").val();
		var oneprice = document.getElementById("onePrice").innerText;
		$("#AllPrice").text((count * oneprice) );
	});


	$('#add').click(function(){
			var sum =$("#sum").val();
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/addProductDetail",
				data:{
					"addPid":"${ProductDetail.id}",
					"addCid":2,
					"addProNumber":sum,
				},
				success:function(){
					alert("亲，加入购物车成功！");
				},
				error:function(){
					alert("亲，很遗憾，加入购物车失败！");
				}
			});
	});
	

	function sleep(numberMillis) { 
		var now = new Date(); 
		var exitTime = now.getTime() + numberMillis; 
		while (true) { 
		now = new Date(); 
		if (now.getTime() > exitTime) 
		return; 
		} 
		}
	
	
	</script>
	
</html>
