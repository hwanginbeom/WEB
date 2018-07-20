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
	<h3>EL tag에서 자바 코드 활용하기 </h3>
	<%--test를 하기 위한 데이터 단순 셋팅 --%>
	<% 
	String data1 = "문자열";
	String []data2 = {"배열1","배열2"};
	
	request.setAttribute("data1", data1);
	request.setAttribute("data2",data2);

	%>
	${requestScope.data1}<br>
</body>
</html>