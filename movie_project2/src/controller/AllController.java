package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cont")

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


}
