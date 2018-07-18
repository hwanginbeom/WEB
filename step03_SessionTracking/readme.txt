학습내용

1.http 기본 특징
	-client의 정보를 기본적으로 저장 및 관리하지 않음
	-무상태 연결 유지(비연결 지향형)
	
2.로그인~로그아웃까지의 상태유지 기술
	-개발자가 직접 코드로 개발
	
3. 메카니즘
	1.client pc에 상태유지값 저장
		-문자열 만 저장 가능
		-쿠키 개발 기술
			:javax.servlet.http.Cookie
		-개발 단계
			1단계 : Cookie 객체를 저장 할 문자열 데이터 수만큼 생성
			2단계 : client 시스템에 잔존 시킬 시간 설정
			3단계 : client 시스템에 전송해서 쿠키 저장
			4단계 : servlet 이동
			5단계 : client로 부터 쿠키 정보에 저장된 데이터 획득
			6단계 : 삭제
		
	2.server에 상태 유지 값 저장
		-객체 타입으로 저장 가능
		-세션 개발 기술
			:javax.servlet.http.HttpSession
		-개발 단계
			1단계 : Session 객체를 하나만 생성 (모든 데이터 타입을 다 저장하기 때문에)
			2단계 : server 메모리에 저장 할 데이터 수만큼 세션에 데이터 저장을 함
					-setAttribute()
			3단계 : servlet 이동
			4단계 : HttpSession로 부터 쿠키 정보에 저장된 데이터 획득
					-getAttribute()
			5단계 : 삭제
					-HttpSession 세션 무효화
						-invalidate()
						-null 값으로 정리
					-생략시 문제되는 발생
					
4.웹 페이지 이동 방식에 따른 데이터 저장 및 활용 방식
	1.페이지 이동 방식 
		1.html
			-링크 / 버튼 ( 일반 버튼 or form의 submit)
		2.servlet api
			-forward / Redirect
	2.포워드
		-요청 응답 객체가 한번 생성되어 공유
	3.리다이렉트
		-이동 되는 page는 새로운 요청으로 인식 , 요청 ,응답 객체가 새롭게 생성
		-client의 새로운 정보를 요청 객체로 부터 획득 가능
		
	4.상태 유지를 위한 데이터 저장 방식
		1.Cookie
			-client 시스템에 문자열로만 저장
			생성 -> 잔존시간 설정 -> client에 전송 -> 이동된 servlet에서 Cookie 객체들 한번에 배열로 뺴옴
			-> getName() / getValue()로 쿠키 정보 활용 가능 
		
		2.HttpSession
			-server 시스템 메모리에 저장
			-page이동 방식과 무관하게 서버 메모리의 데이터를 저장 및 활용 가능 
			
	5. 최종 정리
		1.request.setAttribute(key , value)
			-이 요청 객체에 저장한 데이터를 활용 할 수 있는 page이동 방식?
			-답: forward
			리다이렉트는 request를 공유할수 없기 떄문에 request 로 가져다 쓸수가 없다.
		
		2.session.setAttribute() //세션객체는 저장되는 위치는 서버 이다 . 그래서 클라이언트 딴에서 페이지 이동 방식과 무관하다.
			-이 세션 객체에 저장한 데이터를 활용 할 수 있는 page 이동 방식?
			-답 : forward/redirect
			
			
			