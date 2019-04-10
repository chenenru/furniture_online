<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>面对疾风商城-个人中心</title>
        <link href="<c:url value='/css'/>/style.css" rel='stylesheet' type='text/css' media="all"/>
        <link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
        <script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
        <script src="<c:url value='/js'/>/bootstrap.min.js"></script>
        <script src="<c:url value='/js'/>/index.js"></script>
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
                        <li>
                            <%--${order_page}--%>
                            <a href="${pageContext.request.contextPath}/order/all_list"
                               <c:if test="${order_page == 0}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>所有订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=1"
                               <c:if test="${order_page == 1}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>未支付订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=2"
                               <c:if test="${order_page == 2}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>待发货订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=3"
                               <c:if test="${order_page == 3}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>已发货订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=4"
                               <c:if test="${order_page == 4}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>已收货订单</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/status_list?order_status=5"
                               <c:if test="${order_page == 5}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>已评论订单</a>
                        </li>

                    </ul>
                </div>
                <div class="ddzx">个人中心</div>
                <div class="subddzx">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/client/info" >我的个人中心</a></li>
                    </ul>
                </div>
            </div>
        <div class="rtcont fr">
            <h3 style="color:darkgray;margin:0;" align="center">订单详情</h3>
            <hr style="margin : 10px">
            <div class="order_image fr">
                <img src="<c:url value='/image'/>${orderProperty.tbProperty.prImage}" width="400px" height="400px"/>
            </div>
            <div class="order_info">

                <P><span>订&nbsp;&nbsp;单&nbsp;&nbsp;号：&nbsp;</span><span>${orderProperty.id}</span></P>
                <P><span>订单状态：</span><span>${order_status}</span></P>
                <P><span>商品名称：</span><span>${orderProperty.tbProduct.pName}</span></P>
                <P><span>商品数量：</span><span>${orderProperty.oNum}</span></P>
                <P><span>商品类别：</span><span>${orderProperty.tbProduct.pType}</span></P>
                <P><span>商品材质：</span><span>${orderProperty.tbProperty.prMaterial}</span></P>
                <P><span>商品颜色：</span><span>${orderProperty.tbProperty.prColor}</span></P>
                <P><span>商品简介：</span><span>${orderProperty.tbProduct.pIntro}</span></P>

                <P><span>订单总价：</span><span>${orderProperty.oTotal}</span></P>
                <P><span>收货地址：</span><span>${orderProperty.oAddress}</span></P>
                <P><span>联系电话：</span><span>${orderProperty.oPhone}</span></P>
                <P><span>下单时间：</span><span>${orderProperty.oCreate}</span></P>
                <P><span>支付时间：</span><span>${orderProperty.oPay}</span></P>
                <P><span>发货时间：</span><span>${orderProperty.oDeliver}</span></P>
                <P><span>收货时间：</span><span>${orderProperty.oConfirm}</span></P>


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
