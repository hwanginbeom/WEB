package step01;

import java.io.IOException;
import java.io.PipedWriter;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.beans.finder.PrimitiveWrapperMap;

@WebServlet("/fail")
public class FailView extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글로 무효 합니다 출력
		//한글 인코딩 , 응답 포맷 설정
		
		//출력
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("무효~~~<br>");
		out.println(request.getAttribute("newData"));
		

	}

}
