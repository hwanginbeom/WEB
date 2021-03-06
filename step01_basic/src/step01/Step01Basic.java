package step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Step01Basic
 */
public class Step01Basic extends HttpServlet {
    
	//재정의 -get 방식 처리   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("doGet()");
	process(request,response);
	}
	
	//재정의 -post방식 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dopost()");
		process(request,response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		request.setCharacterEncoding("utf-8");      한글로 요청
		//한글 인코딩 설정
		response.setContentType("text/html;charset=utf-8");
		//2byte 출력 가능한 객체 생성
		PrintWriter out = response.getWriter();
		
		//clien가 html form에 입력한 데이터를 획득 - id/pw
//		<input type="text" name = "id" placeholder="id입력">
		String id =request.getParameter("id");
//		<input type="password" name = "pw" placeholder="pw 입력">
		String pw =request.getParameter("pw");

		System.out.println(id+" "+pw);
	
		//비교 로직 
		if(id !=null && id.equals("master")) {
			out.println("<font color ='blue'> 안녕하세요 master 님 </font>");
			//html부분에서 실행되는 부분
		}
		else {
			out.println("<font color ='red'> 넌 누구니? </font>");
		}
		//출력 - blue 색으로 처리하기
	}
	//사용자 정의 - process
}
