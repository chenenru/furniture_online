<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 恩友
  Date: 2019/4/3
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>用户反馈</title>
    <link href="<c:url value='/css'/>/style.css" rel='stylesheet' type='text/css' media="all"/>
    <link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
    <script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
    <script src="<c:url value='/js'/>/bootstrap.min.js"></script>
    <script src="<c:url value='/js'/>/index.js"></script>
    <style>
        .heading{
            margin-bottom:30px;
            margin-top: 100px;
        }

        .border-radius{
            margin-top: 50px;
        }

        .col-md-4{ padding-left: 100px }

        .contact-form .btn-form {
            background: #79b6c8;
            color: #fff;
            font-size: 12px;
            padding: 12px 30px;
            border: none;
        }
        .contact-form label, .cart-form label {
            font-weight: bold;
            margin-bottom: 10px;
            font-size: 16px;
        }
        .contact-form textarea.form-control {
            min-height: 130px;
            width: 100%;
            resize: none;
        }
        body {
            font-size: 16px;
            padding: 0;
            margin: 0;
            color: #201f1f;
            font-family: 'Lato', sans-serif;
            overflow-x: hidden;
        }
        .contact_detail .address h5 {
            margin-bottom: 10px;
        }
        .contact_detail .address h5{
            font-family: 'Montserrat', sans-serif;
            font-weight: bold;
        }
        .uppercase {
            text-transform: uppercase;
            margin-bottom: 30px;
        }
    </style>
    <%--<link rel="stylesheet" type="text/css" href="<c:url value="/css"/>/login.css">--%>
    <%--<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
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
    </script>--%>
    <script>
        function feedback() {
            var name = $("#exampleInputName2").val();
            var email = $("#exampleInputEmail2").val();
            var message = $("#exampleInputMessage2").val();
            var jsonUser = JSON.stringify({"fName":name,"fEmail":email,"fInfo":message});
            $.ajax({
                url : "${pageContext.request.contextPath }/client/feedback",
                type : "POST",
                dataType:"json",
                contentType : "application/json;charset=UTF-8",
                data:jsonUser,
                success:function (data) {
                    alert("亲，已收到您的反馈，祝您购物愉快");
                    <%--window.location("${pageContext.request.contextPath }/index");--%>
                    window.location.href = "${pageContext.request.contextPath }/index";
                }
            });

        }
    </script>
</head>
<body>
<div class="container-fluid">
    <!-- 顶部复用代码块 -->
    <%@include file="Header.jsp" %>
<!--Contact Us-->
<div class="regist">
    <div class="regist_center">
<section id="contact" class="padding_top">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h3 class="uppercase heading bottom30">您的反馈</h3>
                <form class="contact-form padding_bottom" <%--action="/feedback" method="post"--%>>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="exampleInputName2">昵称</label>
                            <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="exampleInputEmail2">邮箱</label>
                            <input type="email" class="form-control" id="exampleInputEmail2" placeholder="xxx@example.com">
                        </div>
                        <div class="col-md-12 form-group">
                            <label >信息</label>
                            <textarea class="form-control" placeholder="请填写您宝贵的意见" id="exampleInputMessage2"></textarea>
                            <input type="submit" class="btn-form uppercase border-radius margintop40" value="提交反馈信息" onclick="feedback()">
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-4">
                <div class="contact_detail padding_bottom">
                    <h3 class="uppercase heading bottom30">我们办公信息</h3>
                    <p class="bottom30">肇庆学院16软件1班 第六小组</p>
                    <div class="address bottom30">
                        <i class="fa fa-map-marker"></i>
                        <h5 class="uppercase" style="padding-top:20px;">我们的地址</h5>
                        <p>广东省肇庆市端州区肇庆学院主校区</p>
                    </div>
                    <div class="address bottom30">
                        <i class="fa  fa-phone"></i>
                        <h5 class="uppercase">电话号码</h5>
                        <p>135.....</p>
                    </div>
                    <div class="address">
                        <i class="fa fa-envelope-o"></i>
                        <h5 class="uppercase">邮箱地址</h5>
                        <p>Email: <a href="#.">Erentheme@qq.com</a>
                        </p>
                        <p>Email: <a href="#.">Erentheme@163.com</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
    </div>
</div>
    <footer class="mt20 center">
        <div>©由莫宽元、赖周浩、陈恩如、陈婉琳学习小组进行编写</div>
        <div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
    </footer>
</div>
</body>
</html>
<%--
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
此功能搞了2节课，实现同一个页面可以显示不同的内容
</body>

</html>--%>
