package model;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DBUtil;

public class peopleDAO {
   
   ///////loginCheck////////////////////////////////////////////////////////////////////////////
   
   public static boolean loginCheck(String id, String pw) throws Exception {
      Connection con = null;
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      
      boolean result = false; 
      
      try {
         con = DBUtil.getConnection();
         pstmt = con.prepareStatement("select id from peopleDTO where id=? and password=?");
         
         pstmt.setString(1, id);
         pstmt.setString(2, pw);
         System.out.println("----- " + id + " " + pw);
         rset = pstmt.executeQuery();
         
         if(rset.next()) {
            return true;
         
         }
         
      }finally {
         DBUtil.close(con, pstmt, rset);
      }
      return false;
   }

   public static boolean loginSignup(String id, String pw, String email) throws Exception {
      Connection con = null;
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      String idCheck = null;
      try {
         con = DBUtil.getConnection();
         pstmt = con.prepareStatement("select id from peopleDTO"
               + "where id=?");
         
         pstmt.setString(1, id);
         
         
         rset = pstmt.executeQuery();
         
         if(rset.next()) {
            return false;
         }
         else {
               pstmt = con.prepareStatement("insert into peopleDTO values(?,?,?)");
               pstmt.setString(1, id);
               pstmt.setString(2, pw);
               pstmt.setString(3, email);
         }
            
         
      }finally {
         DBUtil.close(con, pstmt, rset);
      }
      return true;
   }
}


   
