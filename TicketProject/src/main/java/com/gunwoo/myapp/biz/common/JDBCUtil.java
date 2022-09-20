package com.gunwoo.myapp.biz.common;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

	public class JDBCUtil {
		public static Connection getConnection() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
				System.out.println("DB연결성공");
				return conn;
			}catch (ClassNotFoundException e) {
				System.out.println("DB연결실패");
				e.printStackTrace();
			}catch (SQLException e){
				System.out.println("sql오류");
				e.printStackTrace();
			}
			return null;
		}
		
		
		public static void close(Connection conn, PreparedStatement stmt, ResultSet rs) {
			
			try {
				if(!stmt.isClosed()) {
					stmt.close();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				stmt = null;
			}
			
			try {
				if(!conn.isClosed()) {
					conn.close();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				conn = null;
			}
			
			try {
				if(!rs.isClosed()) {
					rs.close();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				rs = null;
			}
		}
		public static void close(Connection conn, PreparedStatement stmt) {
			
			try {
				if(!stmt.isClosed()) {
					stmt.close();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				stmt = null;
			}
			
			try {
				if(!conn.isClosed()) {
					conn.close();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				conn = null;
			}
		}
}
