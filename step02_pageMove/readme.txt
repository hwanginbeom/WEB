학습 내용

1.web page 이동 개발 기술
	-html/jsp/servlet간의 이동
	-절대 일반 자바 처럼 단순 메소드 호출과 무관
	
2.이동 기술 종류
	1.html tag를 이용한 방식
		1.링크 tag : <a> 
		2.form의 submit
		3.일반 button의 onclick
		
	2.Servlet api를 이용한 방식 
		1.forward 방식
			-데이터 손실 없음
			-서로 다른 servlet이라 하더라도 하나의 servlet처럼 간주
		
		2.redirect 방식
			-servlet간에 redirect가 발생시 무조건 새로운 요청으로 간주
			
		