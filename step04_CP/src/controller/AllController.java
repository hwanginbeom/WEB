/*학습내용 
 * 1.command pattern 반영한 controller
 * 2.여러개의 요청을 하나의 controller가 받아서 구분 후 각 요청 별 로직 처리
 * 3.필요 로직 
 * 	1.요청 구분을 분기분(조건식)
 * 	2.각 로직을 처리하는 별도의 사용자 정의 메소드 구현
 * 	3.요청 별 사용자 정의 메소드 호출 
 * 4.실제 처리 로직 관점
 * 	1.로그인 개발 단계
 * 		1.로그인 요청인지 구분
 * 		2.id/pw 값 획득
 * 		3.ip/pw값의 존재 여부 체크
 * 			-null 여부,null이 아니면 DAO 의 로그인 로직 처리 메소드 호출
 * 		4.실행 되는 경우의 수
 *		   정상실행
 * 			1.존재한다 - name 값 반환
 * 				-세션 생성
 * 				-세션 이름 값 저장
 * 				-SuccessView로 이름값 출력 위임(redirect)
 * 				-
 * 			2.미 존재한다 -null 값 반환
 * 		   비정상 실행
 * 			예외 발생
 * 
 * 	2.이름 변경
 */

package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerDAO;

public class AllController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		
		if(command.equals("login")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			if(id!=null && pw!= null) {
				try {
					String name = CustomerDAO.loginCheck(id, pw); //db 부분에 id랑 pw 를 넣고 거기서 이름 값을 가져온다 그래서 name으로 보기좋게만들고
					if(name != null) {//회원 일 경우
						HttpSession session = request.getSession();
						session.setAttribute("name",name); // 세션에다가 name부분에  우리가 받아온 이름 값을 넣는다 .  매개체가 세션 ! 
														//세션을 쓰는 이유는 화면 전환을 하더라도 계속 쓰기 위함이다. 
						response.sendRedirect("LoginSuccess"); // 이제 redirect 방식으로  loginsucc로 보낸다 .(화면 전환)
					}else {//비회원 일 경우
						//요청 객체에 "당신은 회원이 아니십니다."
						request.setAttribute("msg","당신은 회원이 아니십니다.");  //request 방식으로 저장한 것은 포워드 방시이고 일회성으로 한다.
						request.getRequestDispatcher("msgView").forward(request, response);;
					}
				} catch (Exception e) {
					e.printStackTrace();
				} 
			}else {
				response.sendRedirect("login.html"); // null이면 로그인 화면으로 화면 전환 
			}

		}else if(command.equals("rename")) {
			
		}
		else {
			
		}
		
	}

}

//http://ip:port/project명/login.html 
//http://ip:port/project명
//http://ip:port/project명/cont