<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>面对疾风商城</title>
		<link href="<c:url value='/css'/>/style.css" rel='stylesheet' type='text/css' media="all"/>
		<link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
		<script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
		<script src="<c:url value='/js'/>/bootstrap.min.js"></script>
		<script src="<c:url value='/js'/>/index.js"></script>
		<style type="text/css">
		.banner_y .nav ul li{
			width: 300px;
		}
		</style>
	</head>
	<body >
		<div class="container-fluid">
		<!-- 顶部复用代码块 -->
		<%@include file="Header.jsp" %>

		<%--<header>--%>
			<%--<div class="top center">--%>
				<%--<div class="left fl">--%>
				<%--</div>--%>
				<%--<div class="right fr">--%>
					<%--<div class="gouwuche fr"><a href="${pageContext.request.contextPath }/order/all_list">我的订单</a></div>--%>
					<%--<div class="fr">--%>
						<%--<ul><c:if test="${sessionScope.size()>0}">--%>
						<%--<li>欢迎,<c:out value="${sessionScope.values()}"></c:out></li>--%>
						<%--<li><a href="${pageContext.request.contextPath }/logout">退出</a></li>--%>
						<%--</c:if>--%>
						<%--<c:if test="${sessionScope.size()<=0}">--%>
							<%--<li><a href="/login" target="_blank">登录</a></li>--%>
							<%--<li>|</li>--%>
							<%--<li><a href="/regist" target="_blank" >注册</a></li>--%>
							<%--<li>|</li>--%>
							<%--</c:if>--%>
							<%--<li><a href="${pageContext.request.contextPath }/client/info">个人中心</a></li>--%>
							<%--<li><a href="${pageContext.request.contextPath }/feedback">我要反馈</a></li>--%>
						<%--</ul>--%>
					<%--</div>--%>
					<%--<div class="clear"></div>--%>
				<%--</div>--%>
				<%--<div class="clear"></div>--%>
			<%--</div>--%>
		<%--</header>--%>

	<%--<!-- 中间类型导航条 -->--%>
		<%--<div class="banner_x center">--%>
			<%--<a href="${pageContext.request.contextPath}/content/index.jsp"><div class="logo fl"></div></a>--%>
			<%--<a href=""><div class="ad_top fl"></div></a>--%>
			<%--<div class="nav fl" style="display: inline-block;">--%>
				<%--<ul>--%>
					<%--<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=男鞋" target="_blank">男鞋</a></li>--%>
					<%--<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=女鞋">女鞋</a></li>--%>
					<%--<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=篮球鞋">篮球鞋</a></li>--%>
					<%--<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=平板鞋">平板鞋</a></li>--%>
					<%--<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=休闲鞋">休闲鞋</a></li>--%>
					<%--<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=马丁靴">马丁靴</a></li>--%>
					<%--<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=跑步鞋">跑步鞋</a></li>--%>
					<%--<li><a href="${pageContext.request.contextPath }/ProductDetail!QueryProductByType?productType=帆布鞋">帆布鞋</a></li>--%>
				<%--</ul>--%>
			<%--</div>--%>

			<%--<div class="rightNav">--%>
				<%--<div class="rightNavDiv"><a href="#" id="cartHref"><img src="<c:url value='/image'/>/gouwuche.jpg" style="height: 80px;width: 100px;" id="cart"></a></div>--%>
<%--<!-- 				<div class="rightNavDiv"><a href="#" id="serviceHref"><img src="<c:url value='/image'/>/kefu.jpg" style="height: 80px;width: 100px;" id="service"></a></div> -->--%>
				<%--<div class="rightNavDiv"><a href="#" id="personHref"><img src="<c:url value='/image'/>/gerenzhongxin.jpg" style="height: 80px;width: 100px;" id="person"></a></div>--%>
				<%--<div class="rightNavDiv"><a href="#" id="toTopHref"><img src="<c:url value='/image'/>/toTop.jpg" style="height: 80px;width: 100px;" id="toTop"></a></div>--%>
			<%--</div>--%>
<%--<!-- ProductDetail!QueryProductByProductName?productName= -->--%>
			<%--<div class="searchProduct" style="display: inline-block;">--%>
				<%--<form action="" method="post" id="searchName" name="searchForm">--%>
					<%--<div class="input-group" id="searchProduct">--%>
						<%--<input type="text" class="form-control" placeholder="请输入商品名" id="productName">--%>
						<%--<div class="input-group-btn">--%>
							<%--<button class="btn btn-danger" onclick="findKey()">查找</button>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</form>--%>
			<%--</div>--%>
		<%--</div>--%>
		<%--<script type="text/javascript">--%>
			<%--function findKey() {--%>
				<%--var name = $("#productName").val();--%>
				<%--var my_action = "OrderrDetail!QueryProductByProductName?productName=" + name ;--%>
<%--// 				alert(my_action);--%>
				<%--document.searchForm.action = my_action;--%>
				<%--searchForm.submit();--%>
			<%--}--%>
		<%--</script>	--%>
	<!-- 中间品牌导航块 -->
		<div class="banner_y center">
			<div class="nav">				
				<ul>
					<li>
						<a href="" id="nike" style="text-decoration: none;">耐克&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<!-- <a href="">电话卡</a> -->
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">
											<span class="fl">女靴</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1" target="_blank">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">
											<span class="fl">休闲鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>

					<li>
						<a href="" id="adidas" style="text-decoration: none;">阿迪达斯&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=2">
											<span class="fl">男子经典鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=2">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=2">
											<span class="fl">跑步鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=2">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>
					<li>
						<a href="" id="converse" style="text-decoration: none;">匡威&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=3">
											<span class="fl">经典款 男女帆布鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=3">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=3">
											<span class="fl">低帮帆布鞋硫化鞋 </span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=3">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>

					<li>
						<a href="" id="Xtep" style="text-decoration: none;">特步&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=4">
											<span class="fl">慢跑鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=4">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=4">
											<span class="fl">休闲运动鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=4">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>	
					</li>
					<li>
						<a href="" id="AnTa" style="text-decoration: none;">安踏&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=5">
											<span class="fl">帆布鞋 女</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=5">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=5">
											<span class="fl">休闲鞋 男</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=5">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>
					<li>
						<a href="" id="flowerMan" style="text-decoration: none;">花花公子&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=6">
											<span class="fl">运动休闲鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=6">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=6">
											<span class="fl">黑色加绒小皮鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=6">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>
					<li>
						<a href="" id="Reebok" style="text-decoration: none;">锐步&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=7">
											<span class="fl">男子休闲鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=7">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=7">
											<span class="fl"> 低帮休闲跑步鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=7">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>
					<li>
						<a href="" id="AJ" style="text-decoration: none;">乔丹&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=8">
											<span class="fl">运动鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=8">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=8">
											<span class="fl"> 防滑减震耐磨战靴</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=8">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>
					<li>
						<a href="" id="LiNing" style="text-decoration: none;">李宁&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">
											<span class="fl">跑步鞋 女</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=2">
											<span class="fl">跑步鞋 男</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>
					<li>
						<a href="" id="umbro" style="text-decoration: none;">新百伦&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span class="glyphicon glyphicon-chevron-right"></span></a>
						<div class="pop">
							<div class="left fl">
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">
											<span class="fl">休闲运动鞋跑步鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">选购</a></div>
									<div class="clear"></div>
								</div>
								<div>
									<div class="xuangou_left fl">
										<a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">
											<span class="fl">运动鞋</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">选购</a></div>
									<div class="clear"></div>
								</div>		
							</div>
						</div>
					</li>
				</ul>
			</div>
		
		</div>	

		<!-- 品牌列表下界面 -->


	<!-- start danpin -->
		<div class="danpin center">
			
			<div class="biaoti center">疾风明星单品</div>
			<div class="main center">
				<div class="mingxing fl">
					<div class="sub_mingxing"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1"><img src="<c:url value='/image'/>/KT4.jpg" alt=""></a></div>
					<div class="pinpai"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=1">KT4</a></div>
					<div class="youhui">享满减优惠卷</div>
					<div class="jiage">699元</div>
				</div>
				<div class="mingxing fl">
					<div class="sub_mingxing"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=2"><img src="<c:url value='/image'/>/KT轻骑兵.jpg" alt=""></a></div>
					<div class="pinpai"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=2">KT轻骑兵</a></div>
					<div class="youhui">满300-30</div>
					<div class="jiage">399元</div>
				</div>
				<div class="mingxing fl">
					<div class="sub_mingxing"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=3"><img src="<c:url value='/image'/>/安踏篮球鞋.jpg" alt=""></a></div>
					<div class="pinpai"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=3">安踏篮球鞋</a></div>
					<div class="youhui">享满减优惠卷</div>
					<div class="jiage">599元</div>
				</div>
				<div class="mingxing fl"> 	
					<div class="sub_mingxing"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=4"><img src="<c:url value='/image'/>/KT鸳鸯鞋.jpg" alt=""></a></div>
					<div class="pinpai"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=4">KT鸳鸯鞋</a></div>
					<div class="youhui">享满减优惠卷</div>
					<div class="jiage">699元</div>
				</div>
				<div class="mingxing fl">
					<div class="sub_mingxing"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=5"><img src="<c:url value='/image'/>/kT4破坏.jpg" alt=""></a></div>
					<div class="pinpai"><a href="${pageContext.request.contextPath }/ProductDetail!QueryProduct?id=5">KT4破坏</a></div>
					<div class="youhui">享满减优惠卷</div>
					<div class="jiage">899元</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<footer class="mt20 center">			
			<div>©由莫宽元、赖周浩、陈恩如学习小组进行编写</div> 
			<div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
		</footer>
		</div>
	</body>
</html>