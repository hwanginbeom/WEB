package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.domain.customerDTO;
import util.DBUtil;

public class CustomerDAO {
	//모든 고객 검색
	public static ArrayList<customerDTO> allSeach() throws Exception {
		Connection con =null;
		PreparedStatement pstmt= null;
		ResultSet rset =null;
		
		ArrayList<customerDTO> data = null;
		
		try {
			con = DBUtil.getConnetion();
			pstmt = con.prepareStatement("select * from customer?");
			
			
			rset = pstmt.executeQuery();
			//하나만 있다면 if 아니면 while
			data = new ArrayList<customerDTO>();
			while(rset.next()) {
				data.add(new customerDTO(rset.getString(1),
						rset.getString(2),
						rset.getString(3)));
							
			
			}
		} 
		finally {
			DBUtil.close(con,pstmt,rset);
		}
		return data;
	}
	
	
	
	
	//login 검증 - ip/pw 값으로 name 반환
	//select : query
	public static String loginCheck(String id,String pw) throws Exception {
		Connection con =null;
		PreparedStatement pstmt= null;
		ResultSet rset =null;
		String name =null;
		
		try {
			con = DBUtil.getConnetion();
			pstmt = con.prepareStatement("select name from customer where id=? and pw = ?");
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rset = pstmt.executeQuery();
			//하나만 있다면 if 아니면 while
			if(rset.next()) {
				name = rset.getString(1);
			}
		} 
		finally {
			DBUtil.close(con,pstmt,rset);
		}
		return name;
	}
	
	//해당 고객만의 정보 수정(id 값으로 이름 수정)
	//update : DML
	
	
	public static boolean update(String id,String newName) throws Exception {
		Connection con =null;
		PreparedStatement pstmt= null;
		
		boolean result = false;
		try {
			con = DBUtil.getConnetion();
			pstmt = con.prepareStatement("update customer set name =? where id=?");
			
			pstmt.setString(1, newName);
			pstmt.setString(2, id);

			int r =pstmt.executeUpdate();
			//하나만 있다면 if 아니면 while
			if(r != 0) {
				return true;
			}
		} 
		finally {
			DBUtil.close(con,pstmt);
		}
		return result;
	}
	
}
