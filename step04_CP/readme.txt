학습내용 

1.DB 시스템의 동시 접속자 수 제어하는 기술 
2.필요한 실습 환경
	1.RDBMS
		-oracle
			:customer table - id/pw/name
	2.Java 개발
	3.Server
	
	
3.설정 정보의 부연 설명
	1.context.xml(서버에 있는 거 가져와서 붙이고 톰캣 사이트에 들어가서 Doucument tomcat8.5에 들어가서  Oracle 8i, 9i & 10g 이부분을 복사하고 수정한다.)
	//디비에 접속 할 수 있는 수를 제한해준다.
	
	<?xml version="1.0" encoding="UTF-8"?>

<Context>
	<Resource 
	 // 1. 설정된 자원의 별칭
	name="jdbc/myoracle" 
	
	// 2. 이 자원 관리자는 Container
	auth="Container"	
	
	// 3. 자바 소스와 이 설정의 중간 매니저
	소스에서 DataSource를 받아서 Connection을 제공 받게 됨
	type="javax.sql.DataSource" 	
	
	//4.접속하고자 하는 DB의 dirver 명
	driverClassName="oracle.jdbc.OracleDriver" 
	
	//5.접속하는 DB의 url명
	url="jdbc:oracle:thin:@127.0.0.1:1523:xe"	
	
	6. ID
	username="SCOTT"	
	
	7.pw
	password="TIGER" 	
	
	8.동시접속자수(Connection 최대 개수)
	maxTotal="20" 		
	
	9.접속자가 없다 하더라도 생성해서 대기하는 유휴 개수
	maxIdle="10"
	
	10.20개 사용되는 시점에 초과 되는 인원이 접속을 요할 떄 대기하는 시간을 무한대 .. client가 알아서 재 접속 하겠지
	maxWaitMillis="-1" />
	
	//int read = -1 은 존재 하지 않는다는 말 과 같다.

</Context>