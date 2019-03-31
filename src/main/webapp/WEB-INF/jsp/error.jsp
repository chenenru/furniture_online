<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <script src="${pageContext.request.contextPath}/content/js/jquery-3.3.1.min.js"></script>
<title>错误界面</title>
</head>
<body>

</body>
<script type="text/javascript">
	$(document).ready(function(){
		alert("操作失败！请返回重试");
		history.go(-1);
	});
</script>
</html>