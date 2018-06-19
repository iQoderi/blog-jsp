package org.seven.utils;

import java.sql.*;

public class DBUtil {
	//
	public static String driver = "org.gjt.mm.mysql.Driver";
	//
	public static String url = "jdbc:mysql://localhost:3306/demo?useUnicode=true&characterEncoding=UTF-8";
	//
	public static String username = "root";
	//
	public static String password = "qwe123qwe";
	//
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName(driver);
			try {
				conn = DriverManager.getConnection(url,username,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	//释放数据库连接
	public static void release(Connection conn,Statement stat,ResultSet rs){
		try{
			if(conn!=null){
				conn.close();
				conn = null;
			}
			if(stat!=null){
				stat.close();
				stat = null;
			}
			if(rs!=null){
				rs.close();
				rs = null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
