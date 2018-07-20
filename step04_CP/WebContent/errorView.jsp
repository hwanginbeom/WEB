<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>errorView.jsp</title>
</head>
<body>
	<h2>발생된 예외 상황</h2>
	<img  src="img/error.jpg" width="30%" height="30%">
	<br><hr><br>
	${requestScope.msg }
</body>
</html>