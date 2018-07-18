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
			
			
			