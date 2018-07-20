<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>allView.jsp</title>
</head>
<body>
<%--items로 꺼내고 var로 이름을 지정해준다 --%>
	<h2>모든 고객 정보 보기</h2><
	<table border="1">
		<c:forEach items="${sessionScope.allData}" var="dto">
		<tr>
		<td>${dto.id }</td>
		<td>${dto.pw }</td>
		<td>${dto.name }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>