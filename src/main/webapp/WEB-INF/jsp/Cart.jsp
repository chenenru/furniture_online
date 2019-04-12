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
						<input type="checkbox" value="quanxuan" class="selectAll" id="selectAll" onclick="checkedAll(this,'selectOne')"/>全选
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
                            <div class="content2 center cart12" id="${Cart.tbProperty.id}">
                                <div class="sub_content fl checkDiv">
                                    <input type="checkbox" name="selectOne" value="${Cart.tbProperty.id}" class="select" id="select${Cart.tbProperty.id}" onclick="chooseOne()" />
                                </div>
                                <input type="hidden" id="Element${Cart.tbProperty.id}" value="${Cart.tbProperty.id}" />
                                <div class="sub_content fl"></div>
                                <div class="sub_content fl"><img src="<c:url value='/image'/>/${Cart.tbProperty.prImage}" style="width: 50px; height: 50px;" >${Cart.pName}</div>
                                <div class="sub_content fl "><span id="oprice${Cart.tbProperty.id}">${Cart.tbProperty.prOutprice}</span></div>
                                <%--<div class="sub_content fl number" id="number${Cart.tbProperty.id}">--%>
									<%--<c:out value="${Cart.proNumber}"></c:out>--%>
                                <%--</div>--%>
                                <div class="sub_content fl" id="">
                                    <input style="width: 50px; height: 35px;" type="number"
                                           id="number${Cart.tbProperty.id}" value="${Cart.proNumber}"
                                           onclick="chooseNumber(${Cart.tbProperty.id})" onblur="chooseNumber(${Cart.tbProperty.id})" />
                                </div>
                                    <%--<c:param name="productCount"/>--%>
                                <div class="sub_content fl price" id="">
                                    <span id="oneTotal${Cart.tbProperty.id}">${Cart.tbProperty.prOutprice*Cart.proNumber}</span>
								</div>
                                <div class="sub_content fl"><a class="remove" style="font-size: 14px;" onclick="removeProduct(${Cart.tbProperty.id})">x</a></div>
                                <div class="clear"></div>
                            </div>
                        </c:forEach>
				<%--</c:if>--%>
			</div>
			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="${pageContext.request.contextPath}/index.jsp">继续购物</a></li>
						<li>|</li>
						<li>共<span id="toTalnumber">0</span>件商品</li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="jiesuan fr">
					<div class="jiesuanjiage fl">合计（不含运费）：<span class="monry" id="totalMoney">0</span></div>
					<div class="jsanniu fr"><input class="jsan" type="submit" name="jiesuan"  value="去付款"/></div>
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

    function chooseOne() {
        var test = $("input[name='selectOne']:checked");
        var sumPrice = 0;
        var sumNumber = 0;
        test.each(function () {
            var id = $(this).val();
            var onePrice = $("#oneTotal"+id).text();
            var oneNumber = $("#number"+id).val();
            // alert(oneNumber + onePrice);
            sumNumber +=  parseInt(oneNumber);
            sumPrice  +=  parseInt(onePrice);
        });
        $("#toTalnumber").text(sumNumber);
        $("#totalMoney").text(sumPrice);
    }

    function checkedAll(obj, sName){
        var objs = document.getElementsByName(sName);
        if(obj.checked){
            doAllchecked();
            for(var i = 0; i < objs.length; i++){
                objs[i].checked = true;
            }
        }else{
            for(var i = 0; i < objs.length; i++){
                objs[i].checked = false;

            }
            cancelAll();
        }
    }

    function doAllchecked() {
        var sumPrice = 0;
        var sumNumber = 0;
        $("input[name='selectOne']").each(function(){
            // alert($(this).val());
            $(this).attr("checked",false);
            $(this).attr("checked",true);
            var id = $(this).val();
            var onePrice = $("#oneTotal"+id).text();
            var oneNumber = $("#number"+id).val();
            // alert(oneNumber + onePrice);
            sumNumber +=  parseInt(oneNumber);
            sumPrice  +=  parseInt(onePrice);
        });
        $("#toTalnumber").text(sumNumber);
        $("#totalMoney").text(sumPrice);
        // window.location.reload();
    }

    function cancelAll() {
        $("#toTalnumber").text("0");
        $("#totalMoney").text("0");
    }

    function chooseNumber(id) {

        // alert("nubmer");
        var oneNumber = parseInt($("#number"+id).val());
        var price = parseInt($("#oprice"+id).text());
        if (oneNumber < 1){
            oneNumber =1;
            $("#number"+id).text("1");
            $("#number"+id).attr("value",1);
            $("#number"+id).html("1");
        }
        if ( isNaN(oneNumber)){
            oneNumber =1;
            $("#number"+id).text("1");
            $("#number"+id).attr("value",1);
            $("#number"+id).html("1");
        }

        // alert(price);
        $("#oneTotal"+id).text(parseInt(price * oneNumber));

        var test = $("input[name='selectOne']:checked");
        var sumPrice = 0;
        var sumNumber = 0;
        test.each(function () {
            var id = $(this).val();
            var onePrice = $("#oneTotal"+id).text();
            var oneNumber = $("#number"+id).val();

            // alert(oneNumber + onePrice);
            sumNumber +=  parseInt(oneNumber);
            sumPrice  +=  parseInt(onePrice);
        });
        $("#toTalnumber").text(sumNumber);
        $("#totalMoney").text(sumPrice);

    }

    //传递删除的id
	function removeProduct(id){
          $.ajax({
              type:"post",
              url:"${pageContext.request.contextPath}/remove",
              data:{
                  "removeId":id,
              },
              success:function(){
				  window.location.reload();
              }
          });
	}

	//结算
	$('.jsan').click(function () {
        var allTerminal = new Array();
        var test = $("input[name='selectOne']:checked");
        var time=0;
        test.each(function () {
            var id = parseInt($(this).val());
            var oneNumber = parseInt($("#number"+id).val());
            allTerminal.push({id:id,num:oneNumber});
            time = 1;
        });

        if(time != 1 ){
        	alert("亲~您还没有勾选商品哦！");
        	return ;
		}
		var Json = JSON.stringify(allTerminal);
		$.ajax({
			type:"post",
			// getRemoveId.do
			url:"${pageContext.request.contextPath}/test_add_order",
			data:Json,
			dataType:"json",
			contentType:"application/json;charset=UTF-8",
			success:function(){
				window.location.href="${pageContext.request.contextPath}/goAlipay";
			},
			error:function(){
				window.location.href="${pageContext.request.contextPath}/order/status_list?order_status=1"
			}
		});

	});


</script>
</html>
