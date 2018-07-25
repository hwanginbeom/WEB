package view;

import java.sql.SQLException;

import model.movie1DAO;

public class start {

	public static void main(String[] args) throws Exception {
//		System.out.println(movie1DAO.getAll());
		System.out.println(movie1DAO.getDate("20180710"));
		System.out.println(movie1DAO.getDate("20180709"));

			}
	

}
