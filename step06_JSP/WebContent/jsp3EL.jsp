<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import = "model.domain.customerDTO, java.util.ArrayList,java.util.HashMap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>EL tag���� �ڹ� �ڵ� Ȱ���ϱ� </h3>
	<%--test�� �ϱ� ���� ������ �ܼ� ���� --%>
	<% 
	String data1 = "���ڿ�";
	String []data2 = {"�迭1","�迭2"};
	
	request.setAttribute("data1", data1);
	request.setAttribute("data2",data2);

	%>
	${requestScope.data1}<br>
</body>
</html>