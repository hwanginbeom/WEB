<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--jstl tag 사용을 위한 필수 선언구 : 외부에서 제공 받은 library를 사용하기 위한 설정 --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	1.step01 : EL의 null 값이 브라우저에 어떻게 출력되나?
	<br> &nbsp;&nbsp;&nbsp;1-1.${requestScope.name }
	<br> &nbsp;&nbsp;&nbsp;1-2.EL의 특징 - 브라우저에 blank로 출력
	<br> ㅇ
	<br>
	<hr>
	<br> 2.step02 : JSTL의 조건 tag, 반복 tag
	<br>
	<c:if test="${'a'=='a'}">
	조건식이 true인 경우 실행되는 블록 영역<br>
	</c:if>
	<br>
	<c:if test="${requestScope.name==null}">
	2-1 null 즉 화면상에 blank인 경우 실행되는 영역
</c:if>

	<br>
	<c:if test="${empty requestScope.name}">
	2-2 null 즉 화면상에 blank인 경우 실행되는 영역
</c:if>

	<br>
	<c:if test="${not empty requestScope.name}">
	2-2 null 즉 화면상에 blank인 경우 실행되는 영역
</c:if>

<br><hr><br>
step03 : 다중 조건식 관련된 tag 학습 <br>
<c:choose>
	<c:when test="${1!=1}">
	3-1. true 일 때 실행
	</c:when>
	<c:when test="${2!=2 }">
	3-2. true일 때 실행
	</c:when>
	<c:otherwise>
	3-3.when의 모든 조건식이 true가 아닐 때 실행
	</c:otherwise>
</c:choose>
	
</body>
</html>