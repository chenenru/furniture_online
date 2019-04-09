<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<title>错误界面</title>
</head>
<body>

</body>

<c:choose>
    <c:when test="${error == 1}">
        <script type="text/javascript">
            $(document).ready(function(){
                alert("请尽快通过你的邮箱激活！");
                history.go(-1);
            });
        </script>
    </c:when>
    <c:when test="${error == 2}">
        <script type="text/javascript">
            $(document).ready(function(){
                alert("用户名或密码错误！");
                history.go(-1);
            });
        </script>
    </c:when>
    <c:otherwise>
        <script type="text/javascript">
            $(document).ready(function(){
                alert("操作失败！请返回重试");
                history.go(-1);
            });
        </script>
    </c:otherwise>
</c:choose>

</html>