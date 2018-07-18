package step01.cookie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cont")
public class LoginCheckController extends HttpServlet {
//0x
	//get or post 모든 방식 처리하는 메소드 , 재정의

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		//밑에 이부분이 있어서 상관없다.
		
		if(id.equals("admin")) {
			//데이터로 쿠키 객체 생성
			Cookie c1 =new Cookie("data1",id);//data1이란 별칭으로 id값 저장
			Cookie c2 =new Cookie("data2",request.getParameter("pw"));//data1이란 별칭으로 id값 저장

			//life time 설정
			c1.setMaxAge(60*60*24*365);//초단위 설정 
			c2.setMaxAge(60*60*24);//초단위 설정 
			
			//client 시스템에 전송해서 저장
//			response.addCookie(c1);
//			response.addCookie(c2);
			

			request.setAttribute("newData","요청에 새로운 데이터 저장");
			request.getRequestDispatcher("succ").forward(request, response);
			//0x할 때 request가 넘어간다.

		}
		
		else {
			Cookie c1 =new Cookie("data1",id);//data1이란 별칭으로 id값 저장
			Cookie c2 =new Cookie("data2",request.getParameter("pw"));//data1이란 별칭으로 id값 저장

			response.addCookie(c1);
			response.addCookie(c2);
			response.sendRedirect("fail"); //리 다이렉트 

		}
		
	}

}

/*id가 유효 하다면 id 값이랑 pw를 client 시스템에 저장
 */
