package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DBUtil {
   static DataSource ds = null;
   
   static {
      try {
         // 서버의 설정파일 정보 활용 가능한 자바 객체
         // 설정 별칭으로 자원을 검색 및 받아서 활용
         // java:/comp/env - java component environment 
         Context initContext = new InitialContext();
         Context envContext  = (Context)initContext.lookup("java:/comp/env");
         ds = (DataSource)envContext.lookup("jdbc/myoracle");
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
   
   //etc.
   static {
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      }
   }
// Connection 객체 반환 메소드
   public static Connection getConnetion() throws SQLException {
      return ds.getConnection(); // 제대로 써도 실시간으로 접속이 안될 수 있음 >> 예외를 던져야함 
            // >> 하지만 try catch 로 처리하면 관리자만 문제 터진것을 안다, end user는 모른다 
   }
   
   // select 문 자원 반환 - Connection,Statement, ResultSet // 파라미터가 3개로 들어오면 이걸로 바로 실행되고 
   public static void close (Connection con, Statement stmt, ResultSet rs) {
         try {
            if (rs != null) {
               rs.close();
               rs = null;
            }
            if (stmt != null) { // else if 로 하게 되면 뒤에것을 무시하기 때문에 반드시 if 로만 해결해야 함
               stmt.close();
               stmt = null;
            }
            if (con != null) {
               con.close();
               con = null;
            }
         } catch (Exception e) {
            e.printStackTrace();
         }
      }

   
   // DML 자원 반환 - Connection, Statement,  // 반환만 해주는 거기 때문에 // 파라미터가 2개만 들어오면 이걸로 실행된다. 
   public static void close (Connection con, Statement stmt) { // static void 로 써서 close가 반환 되게 해야 한다 // statement가 prestatement의 부모! 라서 다형성 관계가 만들어진다. 
      try {
         if (stmt != null) { // else if 로 하게 되면 뒤에것을 무시하기 때문에 반드시 if 로만 해결해야 함
            stmt.close();
            stmt = null;
         }
         if (con != null) {
            con.close();
            con = null;
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
   }
