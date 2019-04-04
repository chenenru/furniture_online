<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <%--<link href="<c:url value='/css'/>/login.css" rel='stylesheet' type='text/css' media="all"/>--%>
    <link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
    <%--<script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>--%>
    <script src="<c:url value='/js'/>/bootstrap.min.js"></script>
    <script src="<c:url value='/js'/>/index.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css"/>/login.css">
    <script type="text/javascript" src="<c:url value='/js'/>/drag.js"></script>
    <script type="text/javascript">
        var str = "";//定义div里所有span的值组成的字符串
        var spans = new Array();//定义一个数组，用来存放每一个span的值
        $("#test span").each(function(i, obj){
            spans[i] = $(this).text();
        });//循环取出span的值放入数组中
        str = spans.join(",");//将数组中的值用逗号连接起来
        $.ajax({
            type: "POST",
            url: "some.php",
            data: "name=John&location=Boston",
            success: function(msg){
                alert( "Data Saved: " + msg );
            }
        });
    </script>
</head>
<body>
<form method="post" action="/" id="myform">
    <div class="regist">
        <div class="regist_center">
            <div class="regist_top">
                <div class="left fl">用户注册</div>
                <div class="right fr"><a href="/index" target="_self">网上家具商城</a></div>
                <div class="clear"></div>
                <div class="xian center"></div>
            </div>
            <div class="regist_main center">
                <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;
                    <input name="customer.userName" class="shurukuang" type="text" placeholder="请输入你的用户名"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;">
                    <span>请不要输入汉字</span></div>
                <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;
                    <input name="customer.userPsw" class="shurukuang" type="password" placeholder="请输入你的密码"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"/>
                    <span>请输入6位以上字符</span></div>

                <div class="username">确认密码:&nbsp;&nbsp;
                    <input name="customer.userRpsw" class="shurukuang" type="password" placeholder="请确认你的密码"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>两次密码要输入一致哦</span></div>
                <div class="username">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:&nbsp;&nbsp;
                    <input name="customer.userNickname" class="shurukuang" type="text" placeholder="请填写昵称"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>请写下昵称吧，爱填不填！</span></div>

                <div class="username">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;
                    <input type="radio" name="customer.usereSex" value="男" id="user-name-label1"/>男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="customer.userSex" value="女" id="user-name-label2"/>女
                    <span>&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男和女总得选一个吧！</span>
                </div>

                <div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;

                    <input name="customer.userPhone" class="shurukuang" type="text" placeholder="请填写正确的手机号"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>填写下手机号吧，方便我们联系您！</span></div>

                <div class="username">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;
                    <input name="customer.userEmail" class="shurukuang" type="text" placeholder="请填写正确的邮箱"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>填写下邮箱吧，方便我们联系您！</span></div>

                <div class="username">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;
                    <input name="customer.userAddress" class="shurukuang" type="text" placeholder="请填写正确的地址"
                           style="margin: 2px 0 0 0;height: 40px; width: 230px;"></input>
                    <span>填写下地址吧，方便我们送货给您！</span></div>

                <%--<div class="username" style="margin: 5% 2% 1% 1% ;">--%>
                    <%--<div class="drag">--%>
                        <%--<div class="bg"></div>--%>
                        <%--<div class="text" onselectstart="return false;">请拖动滑块解锁</div>--%>
                        <%--<div class="btn">&gt;&gt;</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="regist_submit">
                    <input class="submit" type="submit" name="submit" value="立即注册">
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
