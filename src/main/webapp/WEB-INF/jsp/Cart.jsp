<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城</title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/css"/>/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<c:url value="/css"/>/style.css">
		<script type="text/javascript" src="<c:url value="/js"/>/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<c:url value="/js"/>/bootstrap.min.js"></script>
		<script type="text/javascript" src="<c:url value="/js"/>/index.js"></script>
		<style type="text/css">
            .banner_y .nav ul li{
                width: 300px;
            }
            .remove:hover{
                font-size: 20px;
            }
		</style>
	</head>
	<body >
	<c:if test="#session.user==null">
	<jsp:forward page="/WEB-INF/jsp/Login.jsp"></jsp:forward>
	</c:if>
		<div class="container-fluid">
		<!-- 顶部复用代码块 -->
	<%@include file="Header.jsp" %>
<!-- start banner_x -->
		<div class="banner_x center">
			<div class="wdgwc fl ml40">我的购物车</div>
			<div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>
			<div class="clear"></div>
		</div>
		<div class="gwcxqbj" id="cart11">
			<div class="gwcxd center">
				<div class="top2 center">
					<div class="sub_top fl">
						<input type="checkbox" value="quanxuan" class="selectAll" id="selectAll"/>全选
					</div>
					<div class="sub_top fl">商品名称</div>
					<div class="sub_top fl">单价</div>
					<div class="sub_top fl">数量</div>
					<div class="sub_top fl">小计</div>
					<div class="sub_top fr">操作</div>
					<div class="clear"></div>
				</div>
				<c:if test="${Carts.size()==0}">
					<div class="content2 center">
						<div style="margin: 30px 0 0 43%; font-size: 20px;"><strong style="font-size: 30px; ">亲,</strong>购物车空空如也，赶紧去购物吧!</div>
					</div>
				</c:if>
				<%--<c:if test="${Carts}!=null">--%>
                        <c:forEach var="Cart" items="${Carts}" begin="0" step="1">
                            <div class="content2 center cart12" id="${Cart.id}">
                                <div class="sub_content fl checkDiv">
                                    <input type="checkbox" name="selectOne" value="quan" class="select" id="select${Cart.id}"/>
                                </div>
                                <div class="sub_content fl"></div>
                                <div class="sub_content fl"><img src="<c:url value='/image'/>/<c:out value="${Cart.tbProperty.prImage}"></c:out>" style="width: 50px; height: 50px;" ><c:out value="${Cart.pName}"></c:out></div>
                                <div class="sub_content fl "><c:out value="${Cart.tbProperty.prOutprice}"></c:out></div>
                                <div class="sub_content fl number" id="number${Cart.id}">
									<c:out value="${Cart.proNumber}"></c:out>
                                </div>
                                    <%--<c:param name="productCount"/>--%>
                                <div class="sub_content fl price" id="price${Cart.id}"><c:out value="${Cart.tbProperty.prOutprice*Cart.proNumber}"></c:out></div>
                                <div class="sub_content fl"><a class="remove" style="font-size: 14px;">x</a></div>
                                <div class="clear"></div>
                            </div>
                        </c:forEach>
				<%--</c:if>--%>
			</div>
			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="${pageContext.request.contextPath}/content/index.jsp">继续购物</a></li>
						<li>|</li>
						<li>共<span><c:out value="${productNum}"></c:out></span>件商品</li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="jiesuan fr">
					<div class="jiesuanjiage fl">合计（不含运费）：<span class="monry" id="totalMoney">0</span></div>
					<div class="jsanniu fr"><input class="jsan" type="submit" name="jiesuan"  value="去结算"/></div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			</div>
		</div>
		<footer class="mt20 center">			
			<div>©由赖周浩、陈恩如、莫宽元、陈婉琳学习小组进行编写</div>
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>

	</body>
<script>
	$(document).on("click","input",function(){
		if($(this).attr("id")=="selectAll"){
			if($(".selectAll").prop("checked")==true){
				$(".monry").text(${money});
			}else{
				$(".monry").text(0);
			}
			return 0;
		}else{
		var id = $(this).parent().parent().attr("id");
		var checkbox =$("#"+id).find("input.select").attr("id");
		if($("#"+checkbox).prop("checked")==true) {
			var i = parseInt($(".monry").text()) + parseInt($("#" + $("#" + id).children("div.price").attr("id")).text());
			$(".monry").text(i);
		}else{
			var j = parseInt($(".monry").text());
			$(".monry").text(j-parseInt($("#" + $("#" + id).children("div.price").attr("id")).text()))
		}
			return 0;
		}
	});
	//传递删除的id
	$(document).on("click","a",function(){
        var id = $(this).parent().parent().attr("id");
		// alert($("#"+id).children("div.number").attr("id"));
        var money = null;
        // var number = parseInt($("#"+$("#"+id).children("div.number").attr("id")).text());
        var price = parseInt($("#"+$("#"+id).children("div.price").attr("id")).text());
		return null;
          $.ajax({
              type:"post",
              // getRemoveId.do
              url:"${pageContext.request.contextPath}/remove",
              data:{
              	  "removeId":id,
				  "money":${money},
				  "number":number,
				  "price":price
			  },
              success:function(){
                  <%--alert(${Carts.get(0).id});--%>
				  window.location.reload();
              },
              error:function(){
                  // alert("failed");
              }
          });
	});

	//设置全选
	$(".selectAll").click(function() {
		// alert($('.select').attr("id"));
		// $('.select').each(function(){
		//
		// 	if($(this).prop("checked")==true){
		// 		alert("选中"+$(this).prop("checked"))
		// 		$(this).attr("checked",false);
		// 	}else{
		// 		$(this).attr("checked",true);
		// 	}
		// 	alert($(this).prop("checked"))
		// });
		// $('input').attr("checked",true);
		// alert($('.select').prop("checked"));
		// $(".select").attr("checked",false);
		// alert($(".selectAll").attr("checked"));
		if($(".selectAll").prop("checked")==true){
			// $(".select").attr("checked",false);
			$(".select").attr("checked",true);
		}else{
			$(".select").attr("checked",false);
		}
	});
</script>
</html>
