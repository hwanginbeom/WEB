<%@page import="java.util.HashMap,model.domain.customerDTO"%>
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
	
	<br><hr><br>
	<%
	customerDTO c6 = new customerDTO("tester","11","�ŵ���");
	customerDTO c7 = new customerDTO("admin","22","�̿���");
	HashMap<String , customerDTO>mAll = new HashMap<String,customerDTO>();
	mAll.put(c6.getId(),c6);
	mAll.put(c7.getId(),c7);
	
	session.setAttribute("data6", mAll);
	%>
	<%--HashMap�� forEach���� ���� key,value �Ӽ����� ������ Ȱ�� 
	key �Ӽ� : HashMap�� key ��ȯ
	value �Ӽ� : HashMap�� ����� ������ �� --%>
	<c:forEach items = "${sessionScope.data6 }" var ="data">
	${data.key }-${data.value.name}<br>
	</c:forEach>
	
</body>
</html>