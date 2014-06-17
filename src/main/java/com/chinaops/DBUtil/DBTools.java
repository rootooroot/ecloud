package com.chinaops.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBTools {
	static String driver = "com.mysql.jdbc.Driver";   
    static String url = "jdbc:mysql://127.0.0.1:3306/chinaops?useUnicode=true&characterEncoding=utf-8";   
    static String user = "root";   
    static String password = "root";
    static Connection conn = null;
    Statement statement = null;
    ResultSet rs = null;
    
    static {
    	try {
			Class.forName(driver).newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
    
    public static synchronized Connection getConnection(){
    	try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return conn;
    }
    
	
}
