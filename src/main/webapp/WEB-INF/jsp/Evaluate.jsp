<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>面对疾风商城-商品评价</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
		<script type="text/javascript" src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js'/>js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js'/>/js/index.js"></script>
    </head>
    <body>
    	<!-- 顶部复用代码块 -->
	<%@include file="Header.jsp" %>	
<!-- self_info -->
    <div class="grzxbj">
        <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="subddzx">
                <ul>
                    <li><a href="#" style="color:#ff6700;font-weight:bold;">返回购买商品</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div style="height: 150px; border-bottom: 1px solid;">
               <div class="evaluateName" style="height: 20%; text-align: left; color: red;">
                   <span>莫组长</span>
               </div>
               <div class="evaluateMsg" style="height: 60%;">
                   <p>我在网上买的这头小莫猪，肉质不错，入口即化，肥而不腻，特别适合程序员</p>
               </div>
               <div class="evaluateTime" style="height: 20%; text-align: right; ">
                   <span><%=new Date()%></span>
               </div>
            </div>
            <div style="height: 150px; border-bottom: 1px solid;">
               <div class="evaluateName" style="height: 20%; text-align: left; color: red;">
                   <span>莫组长</span>
               </div>
               <div class="evaluateMsg" style="height: 60%;">
                   <p>我在网上买的这头小莫猪，肉质不错，入口即化，肥而不腻，特别适合程序员</p>
               </div>
               <div class="evaluateTime" style="height: 20%; text-align: right; ">
                   <span><%=new Date()%></span>
               </div>
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
