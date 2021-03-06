<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>会员登录</title>
		<link href="<c:url value='/css'/>/login.css" rel='stylesheet' type='text/css' media="all"/>
		<link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
		<script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
		<script src="<c:url value='/js'/>/bootstrap.min.js"></script>
		<style>
        </style>
	</head>
	<body>
		<!-- login -->
		<div class="top center">
			<!--<div class="logo center">
				<a href="${pageContext.request.contextPath}/index" target="_blank"><img src="<c:url value='/js'/>/finallogo.jpg" alt=""></a>
			</div>-->
		</div>
		<form  method="post" action="${pageContext.request.contextPath}/client/login" class="form center" id="myform">
		<div class="login">
			<div class="login_center">
				<div class="login_top">
					<div class="left fl" style="font-family: 华文行楷;">用户登录</div>
					<div class="right fr">您还不是我们的用户？<a href="${pageContext.request.contextPath}/regist" target="_self">立即注册</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="login_main center">

					<div class="input-group" style="margin: 0 13% 10%;">
					  <span class="input-group-addon glyphicon glyphicon-user" id="basic-addon1"></span>
					  <input name="email" type="text" class="form-control" placeholder="请输入你的账号" aria-describedby="basic-addon1" style="margin: 2px 0 0 0;height: 40px; width: 230px;color: black;font-size: 14px;font-family: 微软雅黑;">
					</div>

					<div class="input-group" style="margin: 0 13% 10%;">
					  <span class="input-group-addon glyphicon glyphicon-lock" id="basic-addon2"></span>
					  <input name="pwd" type="password" class="form-control" placeholder="请输入你的密码" aria-describedby="basic-addon2" style="margin: 2px 0 0 0;height: 40px; width: 230px;color:black;font-size:14px;font-family:微软雅黑 ;">
                    </div>

					<div class="username" style="margin: 0 13% 5%;">
						<div class="drag" style="width: 269px;height: 40px;">
							<div class="bg"></div>
							<div class="text" onselectstart="return false;">请拖动滑块解锁</div>
							<div class="btn" style="height: 40px;">&gt;&gt;</div>
						</div>
					</div>
				</div>
				<div class="login_submit" >
					<button type="button" id="sbbt" onclick="checkform()">立即登录</button>
				</div>
				<div style="margin: 30px 0 0 260px;">
					<span><a href="#" style="color: orange; font-size: 15px;">忘记密码？</a></span>
				</div>
			</div>
		</div>
		</form>
		<footer>
			<div class="copyright">简体 | 繁体 | English | 常见问题</div>
			<div class="copyright">小莫所有版权所有-00000-<img src="<c:url value='/image'/>/ghs.png" alt="">京公网安备000000000号-京ICP证00000号</div>

		</footer>
	</body>
	<script type="text/javascript" src="<c:url value='/js'/>/drag.js"></script>
	
</html>
