package step01;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.awt.RepaintArea;

@WebServlet("/cont")
public class LoginCheckController extends HttpServlet {

	//get or post 모든 방식 처리하는 메소드 , 재정의

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//client 가 입력한 데이터 획득
		
		String id = request.getParameter("id");
		System.out.println(request.getRemoteAddr());
		System.out.println(request.getRemoteHost());
		
		//검증
		/* 유효한 경우
		 * 	-succ url과 매핑된 servlet 으로 이동
		 * 	-forward로 이동
		 * 무효한 경우
		 * 	-fail url 과 매핑된 servlet 으로 이동
		 * 	-redirect로 이동
		 */
		
		if(id.equals("admin")) {
			request.getRequestDispatcher("Succ").forward(request, response);
			// 이게 admin 이면 request  getRequestDispatcher해서 succ로 던져주고 forward로 request, response 보낸다.
			//요청
		}
		else {
			response.sendRedirect("fail"); //리 다이렉트 
			//응답
		}
	}

}
