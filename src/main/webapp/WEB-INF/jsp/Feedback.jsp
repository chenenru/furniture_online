<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 恩友
  Date: 2019/4/3
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>用户反馈</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css"/>/login.css">

</head>
<body>
<div class="container-fluid">
    <!-- 顶部复用代码块 -->
    <%@include file="Header.jsp" %>
    <!-- self_info -->
    <div class="grzxbj">
        <div class="selfinfo center">
            <div class="lfnav fl">
                <div class="ddzx">订单中心</div>
                <div class="subddzx">
                    <ul>
                        <li><a href="#" >我的订单</a></li>
                    </ul>
                </div>
                <div class="ddzx">个人中心</div>
                <div class="subddzx">
                    <ul>
                        <li><a href="#" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
                    </ul>
                </div>
            </div>
            <div class="rtcont fr">
                <form  method="post" action="./regist.php">
                    <div class="regist">
                        <div class="regist_center">
                            &lt;%&ndash;            <div class="regist_top">
                                            <div class="left fl">反馈列表</div>
                                            <div class="right fr"><a href="/index" target="_self">网上家具</a></div>
                                            <div class="clear"></div>
                                            <div class="xian center"></div>
                                        </div>&ndash;%&gt;
                            <div class="regist_main center">
                                <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;
                                    <input class="shurukuang" type="text" name="username" placeholder="请输入你的用户名"/>
                                    <span>请不要输入汉字</span>
                                </div>
                                <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;
                                    <input class="shurukuang" type="password" name="password" placeholder="请输入你的密码"/>
                                    <span>请输入6位以上字符</span>
                                </div>

                                <div class="username">确认密码:&nbsp;&nbsp;
                                    <input class="shurukuang" type="password" name="repassword" placeholder="请确认你的密码"/>
                                    <span>两次密码要输入一致哦</span>
                                </div>
                                <div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;
                                    <input class="shurukuang" type="text" name="tel" placeholder="请填写正确的手机号"/>
                                    <span>填写下手机号吧，方便我们联系您！</span>
                                </div>
                            </div>
                            <div class="regist_submit">
                                <input class="submit" type="submit" name="submit" value="提交反馈" >
                            </div>
                        </div>
                    </div>
                </form>

            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
</body>
</html>
--%>
<!DOCTYPE html>
<html lang="zh-CN">
<meta charset="utf-8">
<head>
    <title>div hide or show</title>
</head>
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script>
    $(function(){
        var click=1;
        if (click==0) {
            $(".divBox2").toggle("slow");
        }else{
            $(".divBox").toggle("slow");
        }
        $(".spanBox").click(function(){
            $(".divBox").toggle("slow");
            $(".divBox2").toggle("slow");
        });
        alert(click);
    });
</script>
<style>
    .divBox{
        width:50px;
        height:50px;
        border:1px;
        background:blue;
    }
    .divBox2{
        width:50px;
        height:50px;
        border:1px;
        background:red;
    }
    .spanBox{
        cursor:pointer;
    }
</style>
<body>
<span class="spanBox">点击</span>
<div class="divBox"></div>
<div class="divBox2"></div>
</body>

</html>