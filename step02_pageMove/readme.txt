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
			
			
3.주요 API
	1.javax.servlet.http.HttpServlet
		-pulic void doGet()
		-pulic void dopost()
		-pulic void service()

	2.javax.servlet.http.HttpServletRequest	
		-접속된 client만의 요청 정보 보유한 객체
		1.String getPasrameter()
			-web query string 구조로 전송되는 데이터 값 획득
			-String으로만 반환
		2.getRequestDispatcher()

		3.public void setAttribute(String key, Object value)
			-요청 객체에 데이터를 map 행태로 저장
		4.public Object getAttribute(String key)
			-요청 객체에 setAttribute()로 저장한 데이터만 반환
			
	3.javax.servlet.http.HttpServletResponse
		1.setContentType()
		2.getWriter()
		3.sendRedirect()	
		
		
		get post - 데이터 전송 방식
		
		
4.url의 변천사 -웹페이지 이동(화면이동)을 어떤 방식으로 할 것인지 (주소가 안바뀐다.) 경로를 보여준다 
	실행 process
	1. 유효 : forward 방식
		pageReq.html ->LoginCheckController -> Success
		http://localhost/step02_pageMove/cont
		//서블릿이 여러개라고 해도 하나로 간주해야 된다.
	2. 무효 : redirect 방식
		pageReq.html -> LoginCheckController -> Fail
		http://localhost/step02_pageMove/fail
		//cont가 끝나고 새로운 요청 응답이 하나 생긴다.
		
	1.
		
		
		