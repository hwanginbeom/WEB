package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CompoHistoryDAO;
import model.CompoStateDAO;
import model.CustomerDAO;
import model.domain.CompoHistoryDTO;
import model.domain.CompoStateDTO;
import model.domain.CustomerDTO;

@WebServlet("/cont")
public class AllController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		
		String command = request.getParameter("command");	//login or rename
		
		System.out.println("++++++++++++++ " + command);
		if(command.equals("login")) {
			login(request, response);
		}else if(command.equals("register")) {
			register(request, response);
		}else if(command.equals("logout")){
			logout(request, response);
		}else if(command.equals("serialRegister")) {
			serialRegister(request,response);
		}else if(command.equals("myPage")) {
			myPage(request,response);
		}else if(command.equals("allCompoState")){
			allCompoState(request, response);
		}else if(command.equals("replaceCompo")) {
			replaceCompo(request, response);
		}else if(command.equals("allCompoHist")) {
			allCompoHist(request, response);
		}else {
			response.sendRedirect("login.html");
		}
	}
	
	
	//ȸ������
	protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cust_email = request.getParameter("cust_email");
		String cust_name = request.getParameter("cust_name");
		String cust_pw = request.getParameter("cust_pw");
		String serialno = request.getParameter("serialno");
		
		CustomerDTO newCustomer = null;
		if(cust_email != null && cust_name != null && cust_pw != null) {
			try {
				newCustomer = new CustomerDTO(cust_email, cust_name, cust_pw, serialno);
				boolean result = CustomerDAO.register(newCustomer);
				if(result == true) {//ȸ������ ����
					request.setAttribute("result", "ȸ������ ����!");
					request.setAttribute("registerInfo", newCustomer);
					response.sendRedirect("loginindex.html");
					//request.getRequestDispatcher("main.jsp").forward(request, response);
				}else {	//ȸ������ ����
					request.setAttribute("result", "ȸ������ ����");
					//request�� ������ ���� �����̷�Ʈ�� �ƴ� ���������� �����͸� ������ �� �ִ�.
					request.getRequestDispatcher("main.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			response.sendRedirect("login.html");
		}
	}
	
	//�α���
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cust_email = request.getParameter("cust_email");
		String cust_pw = request.getParameter("cust_pw");
		String cust_name = null;
	
		if(cust_email != null && cust_pw != null) {
			try {
				cust_name = CustomerDAO.login(cust_email,cust_pw);
				HttpSession session = request.getSession();
				if(cust_name != null) {//�α��� ����
					session.setAttribute("result", "�α��� ����!");
					session.setAttribute("cust_name", cust_name);
					session.setAttribute("cust_email", cust_email);
					response.sendRedirect("main.jsp");
				}else {	//�α��� ����
					session.setAttribute("result", "�α��� ����");
					response.sendRedirect("main.jsp");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			response.sendRedirect("index.html");
		}
	}

	
	//�α׾ƿ�
	protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	//�̹� ������ ��� ��ȯ
		session.invalidate();
		session = null;
		response.sendRedirect("index.html");
	}
	
	//�ø��� ���
	protected void serialRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String serialno = request.getParameter("serialno");
		String cust_email = null;
		HttpSession session = request.getSession();
		cust_email = (String) session.getAttribute("cust_email");
		
		if(cust_email != null && serialno != null) {
			try {
				boolean result = CustomerDAO.serialRegister(cust_email, serialno);
				if(result == true) {// �ø��� ��� ����
					
					session.setAttribute("result", "�ø����ȣ ��� ����!");
					session.setAttribute("serialno", serialno);
					if(CompoStateDAO.insertCompoInfo(cust_email) == true) {
						session.setAttribute("result2", "��ǰ���� �Է� ����!");
					}else {
						session.setAttribute("result2", "��ǰ���� �Է� ����");
					}
					
					response.sendRedirect("cont?command=myPage");
				}else {	//�ø��� ��� ����
					session.setAttribute("result", "�ø����ȣ ��� ����");
					response.sendRedirect("cont?command=myPage");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			response.sendRedirect("serialRegister.jsp");
		}
		
	}
	
	//��� ��ǰ���� ����
	protected void allCompoState(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cust_email = loginCheck(request, response);
		ArrayList<CompoStateDTO> myCompo = null;
		if(cust_email != null) {	//�α����Ѱ��
			try {
				myCompo = CompoStateDAO.allCompoState(cust_email);
				System.out.println(myCompo);
				if(myCompo.size() == 0) {// ��ǰ ���� ����
					request.setAttribute("result", "��� ��ǰ ���� ����!");
					request.getRequestDispatcher("tmsMain.jsp").forward(request, response);
				}else {	//��ǰ ���� ����
					request.setAttribute("result", "��� ��ǰ ���� ����");
					request.setAttribute("myCompo", myCompo);
					request.getRequestDispatcher("tmsMain.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			response.sendRedirect("index.html");
		}
	}
	
	
	//��ǰ��ü���� ��ȸ
	protected void allCompoHist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cust_email = loginCheck(request, response);
		ArrayList<CompoHistoryDTO> data = null;
		if(cust_email != null) { //�α��� �Ѱ��
			String compo_name = request.getParameter("compo_name");
			System.out.println("---------------- " + compo_name);
			try {
				data = CompoHistoryDAO.allCompoHist(cust_email, compo_name);
				if(data.size() != 0) {
					request.setAttribute("result", "��ǰ ��ü���� ��ȸ ����");
					request.setAttribute("data", data);
					request.getRequestDispatcher("dataView.jsp").forward(request, response);
				}else {
					request.setAttribute("result", "��ǰ ��ü���� �����Ͱ� �����ϴ�.");
					request.getRequestDispatcher("replace.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			response.sendRedirect("index.html");
		}
	}
	
	
	//��ǰ ��ü
	protected void replaceCompo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cust_email = loginCheck(request, response);
		if(cust_email != null) { //�α��� �Ѱ��
			String compo_name = request.getParameter("compo_name");
			String replacedate = request.getParameter("replacedate");
			System.out.println(compo_name+" "+replacedate);
			if(compo_name!=null && replacedate!=null) {
				try {
					boolean result = CompoStateDAO.replaceCompo(cust_email, compo_name, replacedate);
					boolean result2 = CompoHistoryDAO.insertCompoHist(cust_email, compo_name, replacedate);
					
					if(result == true && result2 == true) {
						request.setAttribute("result", "success");
						request.getRequestDispatcher("replace.jsp").forward(request, response);
					}else {
						request.setAttribute("result", "fail");
						request.getRequestDispatcher("replace.jsp").forward(request, response);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else {//�Է��� ���� ������
				request.setAttribute("result", "fail");
				request.getRequestDispatcher("replace.jsp").forward(request, response);
			}
			
		}else {
			response.sendRedirect("index.html");
		}
	}
	
	//���������� ����
	protected void myPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cust_email = loginCheck(request, response);
		CustomerDTO myInfo = null;
		if(cust_email != null) {	//�α����Ѱ��
			try {
				myInfo = CustomerDAO.myPage(cust_email);
				System.out.println(myInfo);
				if(myInfo != null) {// ���������� ���� ����
					request.setAttribute("result", "���������� ���� ����!");
					request.setAttribute("myInfo", myInfo);
					request.getRequestDispatcher("myPage.jsp").forward(request, response);
				}else {	//���������� ���� ����
					request.setAttribute("result", "���������� ���� ����");
					request.getRequestDispatcher("myPage.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			response.sendRedirect("index.html");
		}
	}
	
	//�α��� ���� üũ
	protected String loginCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cust_email = null;
		HttpSession session = request.getSession();
		cust_email = (String) session.getAttribute("cust_email");
		
		return cust_email;
	}
	
	
	
}
