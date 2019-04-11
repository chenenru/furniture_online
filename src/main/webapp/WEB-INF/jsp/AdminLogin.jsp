<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LonelySeven
  Date: 2019/4/11
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>学生选课管理系统</title>
    <link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
    <script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
    <script src="<c:url value='/js'/>/bootstrap.js"></script>
    <link href="<c:url value='/css'/>/Admin.css" rel='stylesheet' type='text/css' media="all"/>

    <style type="text/css">
        .container{
            margin: 10% auto;
            width: 400px;
            background-color: rgba(255, 255, 255, 0.6);
            border: 1px solid rgba(118, 113, 107, 0.51);
            box-shadow: 10px 10px 5px #888888;

        }

    </style>
</head>
<body class="AdminBody" style="">


<div class="container">

    <h2 class="page-header">风之商城后台登陆页面</h2>
    <form action="${pageContext.request.contextPath}/admin/login" method="post" id="myform">
        <div class="form-group" id="form_username">
            <label class="control-label" for="">用户名</label><span class="glyphicon glyphicon-user"></span>
            <input type="text" class="form-control" placeholder="username" id="username" name="username"/>
            <%--<p class="help-block" id="tips_username">用户名的长度不能少于6个字符且不多于9个字符</p>--%>
        </div>

        <div class="form-group" id="form_password">
            <label class="control-label" for="">密码</label><span class="glyphicon glyphicon-pencil"></span>
            <input type="password" class="form-control" placeholder="password" id="password" name="password"/>
            <%--<p class="help-block" id="tips_password">密码的长度不能少于5个字符且不多于20个字符</p>--%>
        </div>

        <br>
        <div class="form-group">
            <button type="button" class="btn btn-default" onclick="check()">登录</button>
            <input type="reset" class="btn btn-default" value="重置"/>
        </div>
    </form>

</div>




</body>

<script type="text/javascript">
    $("#tips_username").css('visibility','hidden');
    $("#tips_password").css('visibility','hidden');

    $("#username").focus(function(){
        $("#tips_username").css('visibility','visible');
    });

    $("#password").focus(function(){
        $("#tips_password").css('visibility','visible');
    });





    function check(){
            myform.submit();


    }



</script>

</html>
