
 <%@page import="java.util.ArrayList"%> <!-- 자바 arrayList 부분 임폴트  -->
<%@page import="model.domain.PlaceDTO"%>  <!-- 자바 모델 도메인 에서 dto 넣는 부분  이걸로 넣는 것 같다.  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>LocationAjax.jsp</title>
</head>
<body>
	<%
		ArrayList<PlaceDTO> data = (ArrayList<PlaceDTO>)session.getAttribute("typesearch"); //typesearch 를 세션 부분에 getAtttribute 한다. 
		System.out.println(data); // 이것을 data 에 넣는데 이 타입은 placetDTO 타입이다.
	%>
</body>
</html>