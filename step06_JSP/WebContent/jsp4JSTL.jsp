<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--jstl tag ����� ���� �ʼ� ���� : �ܺο��� ���� ���� library�� ����ϱ� ���� ���� --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	1.step01 : EL�� null ���� �������� ��� ��µǳ�?
	<br> &nbsp;&nbsp;&nbsp;1-1.${requestScope.name }
	<br> &nbsp;&nbsp;&nbsp;1-2.EL�� Ư¡ - �������� blank�� ���
	<br> ��
	<br>
	<hr>
	<br> 2.step02 : JSTL�� ���� tag, �ݺ� tag
	<br>
	<c:if test="${'a'=='a'}">
	���ǽ��� true�� ��� ����Ǵ� ���� ����<br>
	</c:if>
	<br>
	<c:if test="${requestScope.name==null}">
	2-1 null �� ȭ��� blank�� ��� ����Ǵ� ����
</c:if>

	<br>
	<c:if test="${empty requestScope.name}">
	2-2 null �� ȭ��� blank�� ��� ����Ǵ� ����
</c:if>

	<br>
	<c:if test="${not empty requestScope.name}">
	2-2 null �� ȭ��� blank�� ��� ����Ǵ� ����
</c:if>

<br><hr><br>
step03 : ���� ���ǽ� ���õ� tag �н� <br>
<c:choose>
	<c:when test="${1!=1}">
	3-1. true �� �� ����
	</c:when>
	<c:when test="${2!=2 }">
	3-2. true�� �� ����
	</c:when>
	<c:otherwise>
	3-3.when�� ��� ���ǽ��� true�� �ƴ� �� ����
	</c:otherwise>
</c:choose>
	
</body>
</html>