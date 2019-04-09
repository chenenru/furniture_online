<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: LonelySeven
  Date: 2019/4/9
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>

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
    <form id="car_form" action="${pageContext.request.contextPath}/test_add_order" method="post">
        <div class="gwcxqbj">
            <div class="gwcxd center">
                <div class="top2 center">
                    <div class="sub_top fl">
                        <input type="checkbox" value="quanxuan" class="quanxuan" />全选
                    </div>
                    <div class="sub_top fl">商品名称</div>
                    <div class="sub_top fl">单价</div>
                    <div class="sub_top fl">数量</div>
                    <div class="sub_top fl">小计</div>
                    <div class="sub_top fr">操作</div>
                    <div class="clear"></div>
                </div>
                <c:forEach var="Cart" items="${Carts}" begin="0" step="1" varStatus="status">
                    <div class="content2 center" id="center">
                        <div class="sub_content fl ">
                            <input name="isChoose" type="checkbox" value="quanxuan" class="quanxuan" />
                        </div>
                        <div class="sub_content fl"></div>
                        <div class="sub_content fl"><img src="<c:out value="${Cart.tbProperty.prImage}"></c:out>" style="width: 50px; height: 50px;" ><c:out value="${Cart.pName}"></c:out></div>
                        <div class="sub_content fl ">${Cart.tbProperty.prOutprice}
                            <input name="productProperties[${status.index}].prOutprice" type="hidden" value="${Cart.tbProperty.prOutprice}" /></div>
                        <div class="sub_content fl">
                                <input type="number" name="productProperties[${status.index}].prInnum" value="3" />
                        </div>
                            <%--<c:param name="productCount"/>--%>
                        <div class="sub_content fl">
                                ${Cart.tbProperty.prOutprice*Cart.proNumber}
                            <input name="" type="hidden" value="${Cart.tbProperty.prOutprice*Cart.proNumber}"  />
                        </div>
                        <div class="sub_content fl"><a class="remove" style="font-size: 14px;">x</a></div>
                        <div class="clear"></div>
                    </div>
                </c:forEach>
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
                    <div class="jiesuanjiage fl">合计（不含运费）：<span><c:out value="${Cart.proNumber*Cart.tbProperty.prOutprice}"></c:out></span></div>
                    <div class="jsanniu fr"><button id="btn_submit" class="jsan" name="jiesuan" type="submit" onclick="feedback()">去结算</button></div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </form>
</div>
<footer class="mt20 center">
    <div>©由赖周浩、陈恩如、莫宽元、陈婉琳学习小组进行编写</div>
    <div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
</footer>

</body>
<script>

    function feedback(){
        var allTerminal = new Array();
        allTerminal.push({id:"60",num:"5"});
        allTerminal.push({id:"61",num:"2"});
        var Json = JSON.stringify(allTerminal);
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/test_add_order",
            data:Json,
            dataType:"json",
            contentType : "application/json;charset=UTF-8",
            success:function(data) {
                alert("同时传多个对象成功");
            }

        });
    }

</script>
</html>