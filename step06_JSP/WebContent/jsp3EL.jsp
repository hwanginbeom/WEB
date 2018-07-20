<%@page import="com.sun.crypto.provider.HmacMD5"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page
	import="model.domain.customerDTO, java.util.ArrayList,java.util.HashMap"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>EL tag에서 자바 코드 활용하기</h3>

	step01: EL로 단순 문자열 출력하기
	<br>
	<%--test를 하기 위한 데이터 단순 셋팅 --%>

	<% 
	String data1 = "문자열";
	String []data2 = {"배열1","배열2"};
	
	request.setAttribute("data1", data1);
	session.setAttribute("data2",data2);

	%>
	<%--out.println(request.getAttribute("data1"); --%>
	${requestScope.data1}
	<br> ${sessionScope.data2[1]}
	<br>
	<br>
	<hr>
	<br> step02:DTO를 EL로 활용하기
	<%
		customerDTO c1 = new customerDTO("tester","11","신동엽");
		customerDTO c2 = new customerDTO("admin","22","이영자");
		request.setAttribute("data3", c1);
		
		customerDTO[] c3 = {c1,c2};
		request.setAttribute("data4",c3);

	%>
	<br> ${requestScope.data3.id }
	<br> ${requestScope.data4[1].name }

	<%--
		customerDTO data3 = (customerDTO)request.getAttribute("data3");
		out.println(data3.getId());
		//메소드 써서 가지고 나온다.
	 --%>
	<br>
	<br>
	<hr>
	<br> step03:데이터를 ArrayList에 저장해서 출력
	<br>
	<%
		customerDTO c4 = new customerDTO("tester","11","신동엽");
		customerDTO c5 = new customerDTO("admin","22","이영자");
		ArrayList<customerDTO>all =new ArrayList<customerDTO>();
		all.add(c4);
		all.add(c5);
		session.setAttribute("data5", all);
	%>
	${sessionScope.data5[1].name} ${sessionScope.data5[0].id}
	${sessionScope.data5[0]}
	<%--
		${sessionScope.data5[0].id}
		sessionScope -HttpSession
		sessionScope.data5 - ArrayList
		sessionScope.data5[0] - new customerDTO("tester","11","신동엽")
		sessionScope.data5[5].name -getName의 결과 신동엽 
	--%>

	<br><hr>	<br>
	
	 step04 : 데이터를 HashMap에 저장해서 출력
	<%
		customerDTO c7 = new customerDTO("tester","11","신동엽");
		customerDTO c8 = new customerDTO("admin","22","이영자");
		HashMap<String , customerDTO>mAll = new HashMap<String,customerDTO>();
		mAll.put(c7.getId(),c7);
		mAll.put(c8.getId(),c8);
		
		session.setAttribute("data6", mAll);
	%>
	<br>
	${sessionScope.data6.tester.name}
	
	<%--	${sessionScope.data6.tester.name}
	sessionScope.data6 - session에 저장된 HashMap
	sessionScope.data6.tester - HashMap에 tester라는 별칭으로 저장된 CustomerDTO
	sessionScope.data6.tester.name - customerDTO의 getName()
	
	 --%>


</body>
</html>