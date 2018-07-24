package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DBUtil;

public class peopleDAO {
	
	///////loginCheck////////////////////////////////////////////////////////////////////////////
	
	public static String loginCheck(String id, String pw) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String name = null;
		try {
			con = DBUtil.getConnetion();
			pstmt = con.prepareStatement("select name from"
					+ " customer where id=? and pw=?");
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				name = rset.getString(1);
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		return name;
	}
	
	////////////////////////////////////////////////////////////////////////////////////
	
	
	
	///////loginSigu////////////////////////////////////////////////////////////////////////////
	
	public static String loginSigu(String id, String pw, String email) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String nameCheck = null;
		try {
			con = DBUtil.getConnetion();
			pstmt = con.prepareStatement("select id from"
					+ " customer where id=? ");
			
			pstmt.setString(1, id);
			
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				nameCheck = rset.getString(1); //아이디가 있습니다.
			}
			else {
		         pstmt = con.prepareStatement("insert into customer values(?,?,?)");
					pstmt.setString(1, id);
					pstmt.setString(1, pw);
					pstmt.setString(1, email);

				
			}
				
			
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		return email;
	}
	
	////////////////////////////////////////////////////////////////////////////////////
}
