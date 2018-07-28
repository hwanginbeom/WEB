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
			-데이터 손실 없음 //request를 해도 같은 하나의 servlet으로 놀기 때문에 데이터 손실이 없다는 것임 
			-서로 다른 servlet이라 하더라도 하나의 servlet처럼 간주
		
		2.redirect 방식
			-servlet간에 redirect가 발생시 무조건 새로운 요청으로 간주 //하나의 servlet이 끝나고 다른 servlet을 호출한다.
			
			
3.주요 API
	1.javax.servlet.http.HttpServlet
		-pulic void doGet() //get방식 일경우 get으로간다
		-pulic void dopost()  // post 방식일 경우 post를 호출한다.
		-pulic void service()  //get 과 post 방식 둘다 가능하게 한다.

	2.javax.servlet.http.HttpServletRequest	
		-접속된 client만의 요청 정보 보유한 객체
		1.String getPasrameter()
			-web query string 구조로 전송되는 데이터 값 획득
			-String으로만 반환
	
		2.getRequestDispatcher() //이걸로 던져서 보낸다. 
		//			request.getRequestDispatcher("succ").forward(request, response);
		//이런식으로 어디로 보낼지 정해주고 request를 담아서 보내는데 forward 방식으로 던진다.
		

		3.public void setAttribute(String key, Object value)
			-요청 객체에 데이터를 map 행태로 저장
		//이거는 forward 방식만 가능하다 . 그 이유는 forward 방식 일 경우에만 
		다른 servlet을 보낼때 하나의 servlet으로 대하기 때문에 request를 공유하고 있기 때문에 
		보내는 것이 가능하다 
		// redriect 형태는 servlet이 각각 하나의 servlet으로 취급된다. 그래서 다른 
		servlet으로 보낼 때 해당하는 servlet은 종료되고 다음 servlet을 실행한다 . 
		그래서 쿠키가 남는다.
		
		4.public Object getAttribute(String key)
			-요청 객체에 setAttribute()로 저장한 데이터만 반환
		set과 반대로 get으로 set에서 넣어줬던 key 값을 꺼내어 해당하는 key 값의 value값을 
		꺼내어 온다.
			
	3.javax.servlet.http.HttpServletResponse
		1.setContentType() 
		
		//response.setContentType("text/html;charset=utf-8");
		// utf-8의 형식으로 인코딩해줌으로써 한글을 가능 케한다.
		// html의 표준 MIME 타입인 "text/html"  이것이다.
		
		2.getWriter()
		//PrintWriter out = response.getWriter();
		//응답에서 문자로 받게끔 하고 . 
		//out.println("무효~~~<br>");
		//출력하는 부분
		
		
		3.sendRedirect()	
		//redirect로 보낸다는 것 
		//화면페이지 이동 방식은 두가지로  forward 방식과 redirect 방식이있따. 
		
		
		
		get post - 데이터 전송 방식
		//get 방식은 input에서 입력 받은 값을 url상에서 뜨게 해서 보내고 
		 post방식은 데이터를 감춰서 보낸다.
		
		
4.url의 변천사 -웹페이지 이동(화면이동)을 어떤 방식으로 할 것인지 (주소가 안바뀐다.) 경로를 보여준다 
	실행 process
	1. 유효 : forward 방식
		pageReq.html ->LoginCheckController -> Success
		http://localhost/step02_pageMove/cont
		//서블릿이 여러개라고 해도 하나로 간주해야 된다.
		//그래서 request를 공유 할 수있다.
	
	2. 무효 : redirect 방식
		pageReq.html -> LoginCheckController -> Fail
		http://localhost/step02_pageMove/fail
		//cont가 끝나고 새로운 요청 응답이 하나 생긴다.
		//하나의 servlet이 끝날 때 요청응답이 끝나서 공유가 안된다 
		//servlet이 연결되어 있더라도 servlet이 끝나지거나 보내질 떄
		//종료된다.
		
	
		
		
		