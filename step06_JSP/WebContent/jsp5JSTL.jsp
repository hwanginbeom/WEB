<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL�� �ٽ� ����</h3>
	1.�ݺ� tag �н�<br>
	2.ArrayList or HashMap �����͵� ��� <br>
	
	<hr>
	<%
	ArrayList<String> a = new ArrayList<String>();
	a.add("data1");
	a.add("data2");
	a.add("data3");
	request.setAttribute("d1", a);
	%>
	<c:forEach items="${requestScope.d1}" var="data">
		${data}<br>
	</c:forEach>
	
	<br>
	<table border="1"> <!-- ������ ����ŭ ���ư��� �Ѵ�. var�� data�� ������  -->
		<c:forEach items="${requestScope.d1}" var="data">
		<tr><td>${data}</td>></tr>>
		</c:forEach>
	</table>
	
	
</body>
</html>