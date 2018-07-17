package step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Step01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Step01() {
    	System.out.println("생성자");
    }

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		//브라우저에 한글 출력
		//한글 인코딩 설정
		response.setContentType("text/html;charset=utf-8");
//		이부분에서 연결을 하고
		//2byte 단위로 출력 가능한 객체 생성
		PrintWriter out = response.getWriter();
//		response로 받은걸 getWriter로 쓴것을 받고 이걸 out에 저장한다.
		//브라우저 출력
		out.println("<b>황인범<b>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
		}

}
