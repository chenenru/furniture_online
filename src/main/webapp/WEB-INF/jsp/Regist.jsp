<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户注册</title>
        <link href="<c:url value='/css'/>/login.css" rel='stylesheet' type='text/css' media="all"/>
        <link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
        <script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
        <script src="<c:url value='/js'/>/bootstrap.min.js"></script>
        <script src="<c:url value='/js'/>/index.js"></script>

	</head>
	<body>
		<form  method="post" action="processRegist" id="myform">
		<div class="regist">
			<div class="regist_center">
				<div class="regist_top">
					<div class="left fl">用户注册</div>
					<div class="right fr"><a href="../../index.jsp" target="_self">小米商城</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="regist_main center">
					<div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;
					<s:textfield name="customer.userName" class="shurukuang" type="text" placeholder="请输入你的用户名" style="margin: 2px 0 0 0;height: 40px; width: 230px;"></s:textfield>
					<!-- <input class="shurukuang" type="text" name="username" placeholder="请输入你的用户名"/> --><span>请不要输入汉字</span></div>
					<div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;
					<s:textfield name="customer.userPsw" class="shurukuang" type="password" placeholder="请输入你的密码" style="margin: 2px 0 0 0;height: 40px; width: 230px;"></s:textfield>
					<!-- <input class="shurukuang" type="password" name="password" placeholder="请输入你的密码"/> --><span>请输入6位以上字符</span></div>
					
					<div class="username">确认密码:&nbsp;&nbsp;
					<s:textfield name="customer.userRpsw" class="shurukuang" type="password" placeholder="请确认你的密码" style="margin: 2px 0 0 0;height: 40px; width: 230px;"></s:textfield>
					<!-- <input class="shurukuang" type="password" name="repassword" placeholder="请确认你的密码"/> --><span>两次密码要输入一致哦</span></div>
					<div class="username">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:&nbsp;&nbsp;
					<s:textfield name="customer.userNickname" class="shurukuang" type="text" placeholder="请填写昵称" style="margin: 2px 0 0 0;height: 40px; width: 230px;"></s:textfield>
					<!-- <input class="shurukuang" type="text" name="tel" placeholder="请填写昵称"/> --><span>请写下昵称吧，爱填不填！</span></div>
					
					<div class="username">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;
					<!-- <input type="radio" name="customer.usereSex" id="" value="" />男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="customer.userSex" id="" value="" />女 -->
					<s:radio name="customer.userSex" list="#{'男':'男','女':'女'}" value="'男'" />
					<span>&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男和女总得选一个吧！</span></div>
					
					<div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;
					<s:textfield name="customer.userPhone" class="shurukuang" type="text" placeholder="请填写正确的手机号" style="margin: 2px 0 0 0;height: 40px; width: 230px;"></s:textfield>
					<!-- <input class="shurukuang" type="text" name="tel" placeholder="请填写正确的手机号"/> -->
					<span>填写下手机号吧，方便我们联系您！</span></div>
					
					<div class="username">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;
					<s:textfield name="customer.userEmail" class="shurukuang" type="text" placeholder="请填写正确的邮箱" style="margin: 2px 0 0 0;height: 40px; width: 230px;"></s:textfield>
					<!-- <input class="shurukuang" type="text" name="tel" placeholder="请填写正确的邮箱"/> -->
					<span>填写下邮箱吧，方便我们联系您！</span></div>
					<div class="username">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;
					<s:textfield name="customer.userAddress" class="shurukuang" type="text" placeholder="请填写正确的地址" style="margin: 2px 0 0 0;height: 40px; width: 230px;"></s:textfield>
					<!-- <input class="shurukuang" type="text" name="tel" placeholder="请填写正确的邮箱"/> -->
					<span>填写下地址吧，方便我们送货给您！</span></div>

					<div class="username" style="margin: 5% 2% 0% 0% ;">
						<div class="drag">
							<div class="bg"></div>
							<div class="text" onselectstart="return false;">请拖动滑块解锁</div>
							<div class="btn">&gt;&gt;</div>
						</div>
					</div>
					
					<div class="regist_submit">
					<input class="submit" type="submit" name="submit" value="立即注册" >
				</div>

				</div>
				
				
			</div>
		</div>
		</form>
	</body>
	<script type="text/javascript" src="../../js/drag.js"></script>
</html>
