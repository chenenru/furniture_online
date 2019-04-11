<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link href="<c:url value='/css'/>/login.css" rel='stylesheet' type='text/css' media="all"/>
    <script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
    <script src="<c:url value='/js'/>/bootstrap.min.js"></script>
    <script src="<c:url value='/js'/>/index.js"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value="/css"/>/login.css">
    <script type="text/javascript">
        function toMail() {
            // alert("怎么回事啊，小老弟");
            var email = $("#email").val();
            var username = $("#username").val();
            var password  = $("#password").val();
            var Rpassword  = $("#Rpassword").val();
            /*var sex  = $("#sex").val();*/
            var phone  = $("#phone").val();
            var address  = $("#address").val();
            // alert(email+" "+username+" "+password+" "+Rpassword+" "+phone+" "+" "+address);
            var jsonUser = JSON.stringify({"cName":username,"address":address,"cPwd":password,"cPhone":phone,"cAddress":address,"cEmail":email});
            $.ajax({
                url : "${pageContext.request.contextPath }/client/regist",
                type : "POST",
                dataType:"json",
                contentType : "application/json;charset=UTF-8",
                data:jsonUser,
                success:function (data) {
                    alert("注册账号成功，请到邮箱里面激活账户，祝您购物愉快");
                    window.location.href = 'http://localhost:8080/index';
                }
            });
        };
    </script>
</head>
<body>
<%--<form method="post" action="/mail" id="myform">--%>
    <div class="regist">
        <div class="regist_center">
            <div class="regist_top">
                <div class="left fl">用户注册</div>
                <div class="right fr"><a href="/index" target="_self">网上家具商城</a></div>
                <div class="clear"></div>
                <div class="xian center"></div>
            </div>
            <%--<div class="regist_main center">--%>
                <%--<div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;--%>
                    <%--<input name="customer.userName" class="shurukuang" type="text" placeholder="请输入你的用户名"--%>
                           <%--style="margin: 2px 0 0 0;height: 40px; width: 230px;"><span>请不要输入汉字</span></div>--%>

            <div class="regist_main center">
                <div class="username">&nbsp;&nbsp;&nbsp;&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="email" name="email" class="shurukuang" type="text" placeholder="请填写正确的邮箱"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>填写下邮箱吧，方便我们联系您！</span></div>

                <div class="username">&nbsp;&nbsp;&nbsp;&nbsp;昵&nbsp;&nbsp;&nbsp;&nbsp;称:&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="username" name="username" class="shurukuang" type="text" placeholder="请填写昵称"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>请写下昵称吧，爱填不填！</span></div>

                <div class="username">&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="password" name="password" class="shurukuang" type="password" placeholder="请输入你的密码"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"/>
                    <span>请输入6位以上字符</span></div>

                <div class="username">&nbsp;确&nbsp;认&nbsp;密&nbsp;码:
                    <input id="Rpassword" name="Rpassword" class="shurukuang" type="password" placeholder="请确认你的密码"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>两次密码要输入一致哦</span></div>

                <div class="username">&nbsp;&nbsp;手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;
                    <input id="phone" name="phone" class="shurukuang" type="text" placeholder="请填写正确的手机号"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>填写下手机号吧，方便我们联系您！</span></div>

                <div class="username">&nbsp;&nbsp;&nbsp;&nbsp;地&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;&nbsp;&nbsp;
                    <input  id="address" name="address" class="shurukuang" type="text" placeholder="请填写正确的地址"
                            style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>填写下地址吧，方便我们送货给您！</span></div>

            </div>

            <div class="regist_submit">
                    <input class="submit" type="submit" name="submit" value="立即注册" onclick="toMail()">
            </div>
        </div>
    </div>
<%--</form>--%>
</body>
</html>
