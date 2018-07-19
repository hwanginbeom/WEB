package step02.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/fail2")
public class FailView extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글로 무효 합니다 출력
		//한글 인코딩 , 응답 포맷 설정
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		//출력
		out.print(session.getAttribute("name") + "<br>"); //key값을 호출 하면 value가 출력된다.
		response.setContentType("text/html;charset=utf-8");
		out.println("무효~~~<br>");
		out.println(request.getAttribute("newData"));
		

	}

}
