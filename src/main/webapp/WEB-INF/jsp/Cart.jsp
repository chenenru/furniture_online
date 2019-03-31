<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/style.css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/content/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/content/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/content/js/index.js"></script>
		<style type="text/css">
		.banner_y .nav ul li{
			width: 300px;
		}
		</style>
	</head>
	<body >
	<s:if test="#session.user==null">
	<jsp:forward page="/content/Login.jsp"></jsp:forward>
	</s:if>
		<div class="container-fluid">
		<!-- 顶部复用代码块 -->
	<%@include file="Header.jsp" %>	


<!-- start banner_x -->
		<div class="banner_x center">
			<div class="wdgwc fl ml40">我的购物车</div>
			<div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>
			<div class="clear"></div>
		</div>
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
				<s:iterator value="products" var="p" id="pr">
				<div class="content2 center">
					<div class="sub_content fl ">
						<input type="checkbox" value="quanxuan" class="quanxuan" />
					</div>
					<div class="sub_content fl"></div>
					<div class="sub_content fl">{{小米6全网通6GB内存+64GB}}<s:property value="productName"/>${ps.productName }</div>
					<div class="sub_content fl "><s:text name="productSellPrice"></s:text></div>
					<div class="sub_content fl">
						<s:textfield name="productCount" class="shuliang" type="number" value="1" step="1" min="1" style="width: 100px; height:70px;" />
					</div>
					<div class="sub_content fl">10000元<s:property value="productCount"/></div>
					<div class="sub_content fl"><a href="${pageContext.request.contextPath}/OrderrDetail!QueryCart?id=${pr.id}">x</a></div>
					<div class="clear"></div>
				</div>
				</s:iterator>
				<s:if test="products==null">
				<div class="content2 center">
					<div class="sub_content fl ">
						<input type="checkbox" value="quanxuan" class="quanxuan" />
					</div>
					<div class="sub_content fl"></div>
					<div class="sub_content fl">{{小米6全网通6GB内存+64GB}}<s:property value="productName"/>${ps.productName }</div>
					<div class="sub_content fl ">{danjia}</div>
					<div class="sub_content fl">
						<s:textfield name="productCount" class="shuliang" type="number" value="1" step="1" min="1" style="width: 100px; height:70px;" />
					</div>
					<div class="sub_content fl">10000元<s:property value="productCount"/></div>
					<div class="sub_content fl"><a href="${pageContext.request.contextPath}/OrderrDetail!QueryCart?id=-1">x</a></div>
					<div class="clear"></div>
				</div>
				</s:if>
			</div>
			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="${pageContext.request.contextPath}/content/index.jsp">继续购物</a></li>
						<li>|</li>
						<li>共<span></span>件商品</li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="jiesuan fr">
					<div class="jiesuanjiage fl">合计（不含运费）：<span>2499</span></div>
					<div class="jsanniu fr"><input class="jsan" type="submit" name="jiesuan"  value="去结算"/></div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			</div>
		</div>
		<footer class="mt20 center">			
			<div>©由某某学习小组进行编写</div> 
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>

	</body>
</html>
