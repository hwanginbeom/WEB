
package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.peopleDAO;
public class AllController extends HttpServlet {
   protected void service(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");

      //login or rename or logout or all(모든 검색 요청)........?
      String command = request.getParameter("command");

      if(command.equals("login")) {
         login(request, response);
      }else if(command.equals("logout")) {
         logout(request, response);
      }else {
         response.sendRedirect("login.html");
      }
   }
   
   // 모든 검색 결과인 ArrayList를 획득 -> request에 저장
   // -> forward 방식으로 모두 보기 화면으로 이동
   // -> 로그인 안한 경우 결과보기는 불가
   /* 로그인 전 - login.html로 화면 이동
    * 로그인 후 - 모든 검색
    * 로그인 여부 확인 - session에 name 별칭 존재 여부 확인
    *     검증은 controller?
    *     모든 검색 결과 출력 view?
    *  - getSession()
    *     1. blank or true 인 경우 - 없으면 세션 생성, 있으면 유지
    *     2. false 인 경우 - 없어도  생성 불가, 있어야만 받아옴
    *  HttpSession session = request.getSession(false);
    *  */
   
//   protected void all(HttpServletRequest request,
//                          HttpServletResponse response)
//                          throws ServletException, IOException {
//      //null or 세션 객체 반환
//      //null 반환시는 이전에 세션 객체가 없을경우
//      //객체 반환시는 이미 세션 객체가 존재하는 상태로 호출된 경우
//      HttpSession session = request.getSession(false);
//      if(session != null) {//이미 로그인 되어 있음을 의미
//         try {
//            ArrayList<peopleDTO> all = peopleDAO.allSearch();
//
//            if(all.size() == 0) {
//               request.setAttribute("msg", "고객 정보가 없습니다.");
//               request.getRequestDispatcher("msgView.jsp").forward(request, response);
//            }else {
//               session.setAttribute("allData", all);
//               response.sendRedirect("allView.jsp");
//            }
//         } catch (Exception e) {
//            e.printStackTrace();
//            request.setAttribute("msg", "검색 실패..재 시도하세요");
//            request.getRequestDispatcher("errorView.jsp").forward(request, response);
//         }
//      }else {//로그인 로직 skip
//         response.sendRedirect("login.html");
//      }
//   }




   //로그인 처리 메소드
   protected void login(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      System.out.println("id: "+id);
      if(id != null && pw != null) {
         try {
            Boolean result = peopleDAO.loginCheck(id, pw);
            if(result==true) {//회원인 경우
               HttpSession session = request.getSession();
               session.setAttribute("id", id);
               response.sendRedirect("jsp/loginSucc.jsp");
            }else { //미회원인 경우
               response.sendRedirect("jsp/msgView.jsp");
            }
         } catch (Exception e) {
            e.printStackTrace();
         }
      }else {
         response.sendRedirect("login.html");
      }
   }

   protected void rename(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {

      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
   }

   //로그아웃 처리 메소드
   protected void logout(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      //이미 존재할 경우 반환
      HttpSession session = request.getSession();
      session.invalidate();
      session = null;
      response.sendRedirect("jsp/logout.jsp");
   }

}
//http://ip:port/project명/login.html
//http://ip:port/project명
//http://ip:port/project명/cont
//http://ip:port/project명/byView.jsp
//http://ip:port/project명/msgView.jsp


