package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AccidentDAO;
import model.CustomerDAO;
import model.PlaceDAO;
import model.domain.AccidentDTO;
import model.domain.CustomerDTO;
import model.domain.PlaceDTO;


public class AllController extends HttpServlet {
       
    public AllController() {
        super();
    }
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String command = request.getParameter("command");
      if(command.equals("login")) {
         login(request,response);
      }else if(command.equals("signup")) {
         signup(request,response);
      }else if(command.equals("logout")){
         logout(request,response);
      }else if(command.equals("all")){
         all(request,response);
      }else if(command.equals("avgRoute")){
         avgRoute(request,response);
      }else if(command.equals("allAvgRoute")){
         allAvgRoute(request,response);
      }else {
         response.sendRedirect("login.html");
      }
   }

   private void avgRoute(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
      request.setCharacterEncoding("UTF-8");
      String namestring = request.getParameter("namestring");
      String startlat = request.getParameter("startlat");
      String startlng = request.getParameter("startlng");
      String endlat = request.getParameter("endlat");
      String endlng = request.getParameter("endlng");
      String start = request.getParameter("start");
      String end = request.getParameter("end");
      String searchoption = request.getParameter("searchoption");
      String tdistance = request.getParameter("tdistance");
      String ttime = request.getParameter("ttime");
      String tfare = request.getParameter("tfare");
      String taxifare  = request.getParameter("taxifare");
      
      //System.out.println(namestring);
      String[] namelist = namestring.split("q");
      for(int i=0;i<namelist.length;i++) {
         System.out.println(namelist[i]);
      }
      try {
         
         AccidentDTO avglist = AccidentDAO.avgRoute(namelist);
         System.out.println(avglist.toString());
         
         if (avglist == null) {
            request.setAttribute("msg", "No Result");
            request.getRequestDispatcher("msgView.jsp").forward(request, response);
         } else {
            request.setAttribute("msg", "Success Result");
            request.setAttribute("RiskRatio",String.valueOf(avglist.getRiskRatio()));
            request.setAttribute("RiskGrade",String.valueOf(avglist.getRiskGrade()));
            request.setAttribute("AccidentNum",String.valueOf(avglist.getAccidentNum()));
            request.setAttribute("DeadNum",String.valueOf(avglist.getDeadNum()));
            request.setAttribute("CriticalNum",String.valueOf(avglist.getCriticalNum()));
            request.setAttribute("StableNum",String.valueOf(avglist.getStableNum()));
            request.setAttribute("ClaimantNum", String.valueOf(avglist.getClaimantNum()));
            request.setAttribute("Start", start);
            request.setAttribute("End", end);
            request.setAttribute("StartLat",startlat);
            request.setAttribute("StartLng", startlng);
            request.setAttribute("EndLat",endlat);
            request.setAttribute("EndLng",endlng);
            request.setAttribute("SearchOption", searchoption);
             request.setAttribute("TDistance",tdistance );
              request.setAttribute("TTime", ttime);
              request.setAttribute("TFare", tfare);
              request.setAttribute("TaxiFare", taxifare );

            request.getRequestDispatcher("main.jsp").forward(request, response);;
         }

      } catch (SQLException e) {
         e.printStackTrace();
         request.setAttribute("msg", "Error");
         request.getRequestDispatcher("msgView.jsp").forward(request, response);
      }
   }
   private void allAvgRoute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      request.setCharacterEncoding("UTF-8");
      String totalnamestring = request.getParameter("totalnamestring");
      System.out.println(totalnamestring);
      String[] tmpnamelist = totalnamestring.split("w");
      System.out.println(tmpnamelist[0]);
      String[] namelist0 = tmpnamelist[0].split("q");
      String[] namelist1 = tmpnamelist[1].split("q");
      String[] namelist2 = tmpnamelist[2].split("q");
      String[] namelist3 = tmpnamelist[3].split("q");
      String[] namelist4 = tmpnamelist[4].split("q");
      String[] namelist10 = tmpnamelist[5].split("q");
      String[] namelist12 = tmpnamelist[6].split("q");
      String startlat = request.getParameter("startlat");
      String startlng = request.getParameter("startlng");
      String endlat = request.getParameter("endlat");
      String endlng = request.getParameter("endlng");
      String start = request.getParameter("start");
      String end = request.getParameter("end");
      
      /*for(int i=0;i<namelist0.length;i++) {
         System.out.println(namelist0[i]);
      }
      for(int i=0;i<namelist1.length;i++) {
         System.out.println(namelist1[i]);
      }
      for(int i=0;i<namelist2.length;i++) {
         System.out.println(namelist2[i]);
      }
      for(int i=0;i<namelist3.length;i++) {
         System.out.println(namelist3[i]);
      }
      for(int i=0;i<namelist4.length;i++) {
         System.out.println(namelist4[i]);
      }
      for(int i=0;i<namelist10.length;i++) {
         System.out.println(namelist10[i]);
      }
      for(int i=0;i<namelist12.length;i++) {
         System.out.println(namelist12[i]);
      }*/
      
      try {

         AccidentDTO avglist0 = AccidentDAO.avgRoute(namelist0);
         AccidentDTO avglist1 = AccidentDAO.avgRoute(namelist1);
         AccidentDTO avglist2 = AccidentDAO.avgRoute(namelist2);
         AccidentDTO avglist3 = AccidentDAO.avgRoute(namelist3);
         AccidentDTO avglist4 = AccidentDAO.avgRoute(namelist4);
         AccidentDTO avglist10 = AccidentDAO.avgRoute(namelist10);
         AccidentDTO avglist12 = AccidentDAO.avgRoute(namelist12);
         System.out.println(avglist0.toString());
         System.out.println(avglist1.toString());
         System.out.println(avglist2.toString());
         System.out.println(avglist3.toString());
         System.out.println(avglist4.toString());
         System.out.println(avglist10.toString());
         System.out.println(avglist12.toString());

         if (avglist0 == null) {
            request.setAttribute("msg", "No Result");
            request.getRequestDispatcher("msgView.jsp").forward(request, response);
         } else {
            request.setAttribute("msg", "Success Result");
            request.setAttribute("AccidentNum0",String.valueOf(avglist0.getAccidentNum()));
            request.setAttribute("DeadNum0",String.valueOf(avglist0.getDeadNum()));
            request.setAttribute("CriticalNum0",String.valueOf(avglist0.getCriticalNum()));
            request.setAttribute("StableNum0",String.valueOf(avglist0.getStableNum()));
            request.setAttribute("ClaimantNum0", String.valueOf(avglist0.getClaimantNum()));
            request.setAttribute("AccidentNum1",String.valueOf(avglist1.getAccidentNum()));
            request.setAttribute("DeadNum1",String.valueOf(avglist1.getDeadNum()));
            request.setAttribute("CriticalNum1",String.valueOf(avglist1.getCriticalNum()));
            request.setAttribute("StableNum1",String.valueOf(avglist1.getStableNum()));
            request.setAttribute("ClaimantNum1", String.valueOf(avglist1.getClaimantNum()));
            request.setAttribute("AccidentNum2",String.valueOf(avglist2.getAccidentNum()));
            request.setAttribute("DeadNum2",String.valueOf(avglist2.getDeadNum()));
            request.setAttribute("CriticalNum2",String.valueOf(avglist2.getCriticalNum()));
            request.setAttribute("StableNum2",String.valueOf(avglist2.getStableNum()));
            request.setAttribute("ClaimantNum2", String.valueOf(avglist2.getClaimantNum()));
            request.setAttribute("AccidentNum3",String.valueOf(avglist3.getAccidentNum()));
            request.setAttribute("DeadNum3",String.valueOf(avglist3.getDeadNum()));
            request.setAttribute("CriticalNum3",String.valueOf(avglist3.getCriticalNum()));
            request.setAttribute("StableNum3",String.valueOf(avglist3.getStableNum()));
            request.setAttribute("ClaimantNum3", String.valueOf(avglist3.getClaimantNum()));
            request.setAttribute("AccidentNum4",String.valueOf(avglist4.getAccidentNum()));
            request.setAttribute("DeadNum4",String.valueOf(avglist4.getDeadNum()));
            request.setAttribute("CriticalNum4",String.valueOf(avglist4.getCriticalNum()));
            request.setAttribute("StableNum4",String.valueOf(avglist4.getStableNum()));
            request.setAttribute("ClaimantNum4", String.valueOf(avglist4.getClaimantNum()));
            request.setAttribute("AccidentNum10",String.valueOf(avglist10.getAccidentNum()));
            request.setAttribute("DeadNum10",String.valueOf(avglist10.getDeadNum()));
            request.setAttribute("CriticalNum10",String.valueOf(avglist10.getCriticalNum()));
            request.setAttribute("StableNum10",String.valueOf(avglist10.getStableNum()));
            request.setAttribute("ClaimantNum10", String.valueOf(avglist10.getClaimantNum()));
            request.setAttribute("AccidentNum12",String.valueOf(avglist12.getAccidentNum()));
            request.setAttribute("DeadNum12",String.valueOf(avglist12.getDeadNum()));
            request.setAttribute("CriticalNum12",String.valueOf(avglist12.getCriticalNum()));
            request.setAttribute("StableNum12",String.valueOf(avglist12.getStableNum()));
            request.setAttribute("ClaimantNum12", String.valueOf(avglist12.getClaimantNum()));
            request.setAttribute("Start", start);
            request.setAttribute("End", end);
            request.setAttribute("StartLat",startlat);
            request.setAttribute("StartLng", startlng);
            request.setAttribute("EndLat",endlat);
            request.setAttribute("EndLng",endlng);
            request.getRequestDispatcher("main.jsp").forward(request, response);
         }

      } catch (SQLException e) {
         e.printStackTrace();
         request.setAttribute("msg", "Error");
         request.getRequestDispatcher("msgView.jsp").forward(request, response);
      }   
      
   }
   private void signup(HttpServletRequest request, HttpServletResponse response) throws IOException {
      request.setCharacterEncoding("UTF-8");
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String name = request.getParameter("name");
      System.out.println("----- " + name);
      if (id != null && pw!=null&&name != null) {
         try {
            if (CustomerDAO.signup(id, pw,name)) {
               System.out.println("Complete SignUp");
               response.sendRedirect("main.jsp");
            } else {
               request.setAttribute("msg", "Error SignUp");
               try {
                  request.getRequestDispatcher("main2.jsp").forward(request, response);
               } catch (ServletException e) {
                  // TODO Auto-generated catch block
                  e.printStackTrace();
               }
            }
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      } else {
         System.out.println("Error");
         response.sendRedirect("main2.jsp");
      }      
   }
   //로그인
   protected void login(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String type = "restaurant";
      if (id != null && pw != null) {
         try {
            String name = CustomerDAO.loginCheck(id, pw);
            System.out.println(name);
            if (name != null) { 
               HttpSession session = request.getSession();
              // session.setAttribute("dataAll", PlaceDAO.typeSearchAll());
               session.setAttribute("name", name);
               session.setAttribute("type", type);
               response.sendRedirect("main.jsp");
            } else { 
               request.setAttribute("msg", "Error");
               request.getRequestDispatcher("main2.jsp").forward(request, response);
            }
         } catch (SQLException e) {
            e.printStackTrace();
         }
      } else {
         response.sendRedirect("main2.jsp");
      }

   }
   

   //로그아웃
   protected void logout(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      HttpSession session = request.getSession();
      session.invalidate();
      session = null;
      //response.sendRedirect("byView.jsp");
      response.sendRedirect("main2.jsp");

   }
   
   protected void update(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      String id = request.getParameter("id");
      String newName = request.getParameter("newName");
      System.out.println("----- " + newName);
      if (id != null && newName != null) {
         try {
            if (CustomerDAO.update(id, newName)) {
               CustomerDAO.update(id, newName);
               HttpSession session = request.getSession();
               session.setAttribute("newName", newName);
               response.sendRedirect("updateSucc");
            } else {
               request.setAttribute("msg", "Error");
               request.getRequestDispatcher("msgView.jsp").forward(request, response);
            }
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      } else {
         response.sendRedirect("login.html");
      }

   }

   /*
    * 紐⑤뱺 寃��깋 寃곌낵�씤 ArrayList瑜� �쉷�뱷 -> request�뿉 ���옣 -> forward 諛⑹떇�쑝濡� 紐⑤몢 蹂닿린 �솕硫댁쑝濡� �씠�룞 濡쒓렇�씤 �븞�븳
    * 寃쎌슦 寃곌낵 蹂닿린�뒗 遺덇� 濡쒓렇�씤 �쟾 - login.html濡� �솕硫� �씠�룞 濡쒓렇�씤 �썑 - 紐⑤뱺 寃��깋 濡쒓렇�씤 �뿬遺� �솗�씤 - session�뿉
    * "name" 蹂꾩묶 議댁옱 �뿬遺� �솗�씤 寃�利앹� controller? 紐⑤뱺 寃��깋 寃곌낵 異쒕젰�빐二쇰뒗 view�뿉�꽌? -getSession()
    * 1.blank or ture �씤 寃쎌슦 , �뾾�쑝硫� �꽭�뀡 �깮�꽦, �엳�쑝硫� �쑀吏� 2. false�씤 寃쎌슦, �뾾�뼱�룄 �깮�꽦 遺덇�, �엳�뼱�빞留� 諛쏆븘�샂.
    * HttpSession session = request.getSession(false);
    */
   protected void all(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      HttpSession session = request.getSession();
         try {
            ArrayList<CustomerDTO> all = CustomerDAO.allSearch();
            if (all.size() == 0) {
               request.setAttribute("msg", "No Result");
               request.getRequestDispatcher("msgView.jsp").forward(request, response);
            } else {
               session.setAttribute("all", all);
               response.sendRedirect("allView.jsp");
            }

         } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("msg", "Error");
            request.getRequestDispatcher("errorView.jsp").forward(request, response);
         }
      

   }

}
