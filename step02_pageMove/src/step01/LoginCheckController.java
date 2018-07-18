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
		String pw = request.getParameter("pw");

		//id값 뽑는 것
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
		
		if(id.equals("admin")&&pw.equals("ppp")) {
			request.setAttribute("newData","요청에 새로운 데이터 저장");
			//cont와 succ는 다른 servlet이긴 하나 하나의 servlet으로 간주 
			//요청,응답객체가 공유 그래서 여기서 담아놓은 객체를 succ 에서도 쓸 수 있다.
			request.getRequestDispatcher("succ").forward(request, response);
			
			// 이게 admin 이면 request  getRequestDispatcher해서 succ로 던져주고 forward로 request, response 보낸다.
			//요청
			//request를 유지하고 
		}
		else {
			request.setAttribute("newData","요청에 새로운 데이터 저장");
			//응답 완료 , 응답 시 새로 요청 한 fail url정보를 client 브라우저에 전송
			//fail로 새로운 요청을 브라우저가 자동 실행
			//fail에선 새로운 요청을 따라서 새로운 request , response를 새로 생성
			response.sendRedirect("fail"); //리 다이렉트 
			//응답
			//request를 유지하지 않고 새로 객체를 만든다.

		}
	}

}
