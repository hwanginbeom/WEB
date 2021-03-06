package step02.session;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cont2")
public class LoginCheckController extends HttpServlet {
	// 0x
	// get or post 모든 방식 처리하는 메소드 , 재정의

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");

		if (id.equals("admin")) {//코난
			//새로 세션 객체 생성 - 이 user에게 id 값으로 비교해서 id가 동일한  세션 객체 없었다라면 생성.
			HttpSession session = request.getSession();
			//세션에 이름 저장
			session.setAttribute("name","코난");
			request.setAttribute("newData", "요청에 새로운 데이터 저장");
			request.getRequestDispatcher("succ2").forward(request, response);
		} else {
			HttpSession session = request.getSession();

			session.setAttribute("name","코난");

			response.sendRedirect("fail2"); // 리 다이렉트
		}
	}

}

/*
 * id가 유효 하다면 id 값이랑 pw를 client 시스템에 저장
 */
