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
	<h3>JSTL의 핵심 내용</h3>
	1.반복 tag 학습<br>
	2.ArrayList or HashMap 데이터들 출력 <br>
	
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
	<table border="1"> <!-- 데이터 수만큼 돌아가게 한다. var는 data가 나오고  -->
		<c:forEach items="${requestScope.d1}" var="data">
		<tr><td>${data}</td>></tr>>
		</c:forEach>
	</table>
	
	<br><hr><br>
	<%
	customerDTO c6 = new customerDTO("tester","11","신동엽");
	customerDTO c7 = new customerDTO("admin","22","이영자");
	HashMap<String , customerDTO>mAll = new HashMap<String,customerDTO>();
	mAll.put(c6.getId(),c6);
	mAll.put(c7.getId(),c7);
	
	session.setAttribute("data6", mAll);
	%>
	<%--HashMap을 forEach에서 사용시 key,value 속성으로 데이터 활용 
	key 속성 : HashMap의 key 반환
	value 속성 : HashMap에 저장된 데이터 값 --%>
	<c:forEach items = "${sessionScope.data6 }" var ="data">
	${data.key }-${data.value.name}<br>
	</c:forEach>
	
</body>
</html>