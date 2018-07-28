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
import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerDAO;
import model.domain.customerDTO;

public class AllController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");// 한글 인코딩 하는부분
		// login or rename or logout or all(모든 검색 요청)
		String command = request.getParameter("command");

		if (command.equals("login")) {
			login(request, response);

		} else if (command.equals("rename")) {
			rename(request, response);

		} else if (command.equals("logout")) {
			// 이미 존재할 경우 반환 rename(request,response);

			logout(request, response);
		} else if (command.equals("all")) {
			all(request, response);
		} else {
			response.sendRedirect("login.html");
		}
	}

	// 모든 검색 결과인 ArrayList를 획득 -> request 에 저장
	// forward 방식으로 모두 보기면 화면 으로 리동
	// -? 로그인 안한 겨우 결과보기는 불가능함
	// 로그인 전 - login.html 로 화면이동
	// 로그인 후 - 로그인 모든 검색
	// 로그인 여부 확인 -session에 name 별칭 존재 여부확인
	// 검증은 controller?
	// 모든 검색 결과 출력 view ?
	// -getSession()
	// 1.blank or ture 인 경우 - 없으면 세션 생성 , 있으면 유지
	// 2.falser 인 경우 - 없어도 생상 불가 있어야만 밤음
	// HttpSession session = request.getSession(false);
	protected void all(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//null or 세션 객체 반환
		// null반환시는 이전에 세션 객체가 없을 경우
		//객체 반환시는 이미 세션 객체가 존재하는 상태로 호출 된 경우
		HttpSession session = request.getSession(false); //있는거에 한해서 받아온다. //false를 줘서 get을 안주고 이상태에서 sessoion이 null이 아니면 기존에 로그인이 되있는 상태이다. 
		if(session != null) {
			try {
				ArrayList<customerDTO> all = CustomerDAO.allSeach(); // 커스터머 dao를 해서 all.seach 한것을 가져오고 all 에 넣는다.
				
				if(all.size()==0) { //만약 데이터가 없으면 
				request.setAttribute("msg", "고객 정보가 없습니다."); // request 방식으로 저장한 것은 포워드 방시이고 일회성으로 한다. //고객정보가 없다는 것을 msg에 넣는다. // request로 넣어서 
				request.getRequestDispatcher("msgView.jsp").forward(request, response); // getRequestDispatcher 식으로 넣는다.
				}else {
					session.setAttribute("allData", all); // all 한것을 alldata에 넣는다. 이것을 session으로 받고 
					response.sendRedirect("allView.jsp"); // redirect로 보낸다  각자의 servlet라고 생각하면 된다.
				}
			} catch (Exception e) {
				e.printStackTrace(); //문제가 생겼을 때 관리자가 볼 수 있는 부분 
				request.setAttribute("msg", "검색 실패 .. 재 시도하세요"); // request 방식으로 저장한 것은 포워드 방시이고 일회성으로 한다.
				request.getRequestDispatcher("errorView.jsp").forward(request, response);
			}
		} else {// 로그인 로직 skip
			response.sendRedirect("login.html");
		}

	}

	// 로그인 처리 메소드
	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if (id != null && pw != null) {
			try {
				String name = CustomerDAO.loginCheck(id, pw); // db 부분에 id랑 pw 를 넣고 거기서 이름 값을 가져온다 그래서 name으로 보기좋게만들고
				if (name != null) {// 회원 일 경우(고유한 데이터를 만들어야 될 경우에는 session으로한다.
					HttpSession session = request.getSession();
					session.setAttribute("name", name); // 세션에다가 name부분에 우리가 받아온 이름 값을 넣는다 . 매개체가 세션 !
														// 세션을 쓰는 이유는 화면 전환을 하더라도 계속 쓰기 위함이다.
					response.sendRedirect("LoginSucc.jsp"); // 이제 redirect 방식으로 loginsucc로 보낸다 .(화면 전환)
				} else {// 비회원 일 경우
						// 요청 객체에 "당신은 회원이 아니십니다."
					request.setAttribute("msg", "당신은 회원이 아니십니다."); // request 방식으로 저장한 것은 포워드 방시이고 일회성으로 한다.
					request.getRequestDispatcher("msgView.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			response.sendRedirect("login.html"); // null이면 로그인 화면으로 화면 전환
		}
	}

	// rename 메소드

	protected void rename(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String newName = request.getParameter("newName");
		if (id != null && newName != null) {
			try {
				boolean result = CustomerDAO.update(id, newName); // db 부분에 id랑 pw 를 넣고 거기서 이름 값을 가져온다 그래서 name으로
																	// 보기좋게만들고
				if (result == true) {// 회원 일 경우
					HttpSession session = request.getSession();
					session.setAttribute("name", newName); // 세션에다가 name부분에 우리가 받아온 이름 값을 넣는다 . 매개체가 세션 !
					// 세션을 쓰는 이유는 화면 전환을 하더라도 계속 쓰기 위함이다.
					response.sendRedirect("LoginRename"); // 이제 redirect 방식으로 loginsucc로 보낸다 .(화면 전환)
				} else {// 비회원 일 경우
						// 요청 객체에 "당신은 회원이 아니십니다."
					request.setAttribute("msg", "이름 수정에 실패하였습니다."); // request 방식으로 저장한 것은 포워드 방시이고 일회성으로 한다.
					request.getRequestDispatcher("msgView.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			response.sendRedirect("login.html"); // null이면 로그인 화면으로 화면 전환
		}
	}

	// 로그아웃 처리 메소드
	protected void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		session = null;
		response.sendRedirect("byView.jsp");
	}
}
// http://ip:port/project명/login.html
// http://ip:port/project명
// http://ip:port/project명/cont
// http://ip:port/project명/byView.jsp
// http://ip:port/project명/msgView.jsp