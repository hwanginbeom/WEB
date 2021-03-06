package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.domain.movie1DTO;
import util.DBUtil;

public class movie1DAO {
//		//모든 고객 검색
//		public static ArrayList<movie1DTO> allSeach() throws Exception {
//			Connection con =null;
//			PreparedStatement pstmt= null;
//			ResultSet rset =null;
//			
//			ArrayList<movie1DTO> data = null;
//			
//			try {
//				con = DBUtil.getConnetion();
//				pstmt = con.prepareStatement("select * from MOVIE_DATA_PROFIT?");
//				
//				
//				rset = pstmt.executeQuery();
//				//하나만 있다면 if 아니면 while
//				data = new ArrayList<movie1DTO>();
//				while(rset.next()) {
//					data.add(new movie1DTO(rset.getString(1),
//							rset.getString(2),
//							rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6)
//							,rset.getString(7),rset.getString(8),rset.getString(9),rset.getString(10)
//							,rset.getString(11),rset.getString(12),rset.getString(13),rset.getString(14)
//							,rset.getString(15),rset.getString(16),rset.getString(17) ));
//								
//				
//				}
//			} 
//			finally {
//				DBUtil.close(con,pstmt,rset);
//			}
//			return data;
//		}
//		
		
		public static ArrayList<movie1DTO> getAll() throws Exception {
			Connection con = null; // 중괄호 부분이 끝나면 휘발되기 때문에 밖에서 선언해준다.
			Statement stmt = null;
			ResultSet rs = null;
			ArrayList<movie1DTO> datas = null;

			try {
				// Connection con =DBUtil.getConnection(); // 위에서 null값으로 초기화 try 문이 안될수도있어서.
				con = DBUtil.getConnetion(); // 연결 한다 !
				stmt = con.createStatement(); // sql문장을 실행 가능하게 하는 객체를 만드는 문장
				rs = stmt.executeQuery("select * from MOVIE_DATA_PROFIT"); // 넣어준다 !

				datas = new ArrayList<movie1DTO>();
				while (rs.next()) { // 다음꺼 있는지 확인
					datas.add(new movie1DTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)
							, rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)
							, rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)
							, rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17))); // 객체로 컬럼에 하나씩 넣어준다.
				}

			} catch (SQLException e) { // 코드가 복잡해지면 관리자가 알기 어렵기 떄문에 중간중간에 넣어준다.
				e.printStackTrace();
				throw e; // end쪽에서 도 보게한다. 이렇게 해야 클라이언트도 알수 있다.
			} finally {
				DBUtil.close(con, stmt, rs);
			}
			return datas;
		}
		
		public static ArrayList<movie1DTO> getDate(String date) throws Exception {
			Connection con = null; // 중괄호 부분이 끝나면 휘발되기 때문에 밖에서 선언해준다.
	         PreparedStatement stmt = null;
			ResultSet rs = null;
			ArrayList<movie1DTO> datas = null;

			try {
				// Connection con =DBUtil.getConnection(); // 위에서 null값으로 초기화 try 문이 안될수도있어서.
				con = DBUtil.getConnetion(); // 연결 한다 !
				stmt = con.prepareStatement("select * from MOVIE_DATA_PROFIT where date1= ?"); // sql문장을 실행 가능하게 하는 객체를 만드는 문장
//	            rs = stmt.executeQuery();
				   stmt.setString(1, date);
		            rs = stmt.executeQuery();
		            //System.out.println("----");
				
				
				datas = new ArrayList<movie1DTO>();
				while (rs.next()) { // 다음꺼 있는지 확인
					datas.add(new movie1DTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)
							, rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)
							, rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)
							, rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17))); // 객체로 컬럼에 하나씩 넣어준다.
				}

			} catch (SQLException e) { // 코드가 복잡해지면 관리자가 알기 어렵기 떄문에 중간중간에 넣어준다.
				e.printStackTrace();
				throw e; // end쪽에서 도 보게한다. 이렇게 해야 클라이언트도 알수 있다.
			} finally {
				DBUtil.close(con, stmt, rs);
			}
			return datas;
		}
		
		
}
