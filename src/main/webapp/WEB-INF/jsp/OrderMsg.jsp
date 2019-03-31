<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<s:debug/>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>面对疾风商城-个人中心</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/style.css">
		<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/index.js"></script>
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
                    <li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryOrderrs">我的订单</a></li>
                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryCustomer">我的个人中心</a></li>
                    <li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryDiscount">优惠券</a></li>
                    <li><a href="${pageContext.request.contextPath }/OrderrDetail!QueryAddress">收货地址</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div class="ddzxbt">订单详情</div>
            <div class="orderNumber" style="padding-bottom: 42px; font-size: 18px;"><span>订单号{{201624133102}}</span></div>
            <div class="orderZ" style="border-bottom: 1px solid #ccc; width: 938px;">状态：已收货</div>
            <div class="orderProduct" style="border-bottom: 1px solid #ccc; width: 938px; height: 100px;">
                <div id="producePosition" style="margin-top: 80px;"><img src="#"><span>{{名称}}</span><span>数量：{{1}}</span></div>
            </div>
             <div class="orderAddress" style="border-bottom: 1px solid #ccc; width: 938px; height: 100px;">
                <h3>收获信息</h3>
                <div>姓名：{{name}}</div>
                <div>联系方式：{{phone}}</div>
                <div>收货地址：。。。。。。。。。。。${customer.userAddress }<s:text name="product.productAddress"></s:text></div>
            </div>
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
