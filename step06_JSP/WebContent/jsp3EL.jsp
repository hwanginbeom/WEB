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
	<h3>EL tag���� �ڹ� �ڵ� Ȱ���ϱ�</h3>

	step01: EL�� �ܼ� ���ڿ� ����ϱ�
	<br>
	<%--test�� �ϱ� ���� ������ �ܼ� ���� --%>

	<% 
	String data1 = "���ڿ�";
	String []data2 = {"�迭1","�迭2"};
	
	request.setAttribute("data1", data1);
	session.setAttribute("data2",data2);

	%>
	<%--out.println(request.getAttribute("data1"); --%>
	${requestScope.data1}
	<br> ${sessionScope.data2[1]}
	<br>
	<br>
	<hr>
	<br> step02:DTO�� EL�� Ȱ���ϱ�
	<%
		customerDTO c1 = new customerDTO("tester","11","�ŵ���");
		customerDTO c2 = new customerDTO("admin","22","�̿���");
		request.setAttribute("data3", c1);
		
		customerDTO[] c3 = {c1,c2};
		request.setAttribute("data4",c3);

	%>
	<br> ${requestScope.data3.id }
	<br> ${requestScope.data4[1].name }

	<%--
		customerDTO data3 = (customerDTO)request.getAttribute("data3");
		out.println(data3.getId());
		//�޼ҵ� �Ἥ ������ ���´�.
	 --%>
	<br>
	<br>
	<hr>
	<br> step03:�����͸� ArrayList�� �����ؼ� ���
	<br>
	<%
		customerDTO c4 = new customerDTO("tester","11","�ŵ���");
		customerDTO c5 = new customerDTO("admin","22","�̿���");
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
		sessionScope.data5[0] - new customerDTO("tester","11","�ŵ���")
		sessionScope.data5[5].name -getName�� ��� �ŵ��� 
	--%>

	<br><hr>	<br>
	
	 step04 : �����͸� HashMap�� �����ؼ� ���
	<%
		customerDTO c7 = new customerDTO("tester","11","�ŵ���");
		customerDTO c8 = new customerDTO("admin","22","�̿���");
		HashMap<String , customerDTO>mAll = new HashMap<String,customerDTO>();
		mAll.put(c7.getId(),c7);
		mAll.put(c8.getId(),c8);
		
		session.setAttribute("data6", mAll);
	%>
	<br>
	${sessionScope.data6.tester.name}
	
	<%--	${sessionScope.data6.tester.name}
	sessionScope.data6 - session�� ����� HashMap
	sessionScope.data6.tester - HashMap�� tester��� ��Ī���� ����� CustomerDTO
	sessionScope.data6.tester.name - customerDTO�� getName()
	
	 --%>


</body>
</html>