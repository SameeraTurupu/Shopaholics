package com.shopaholics.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDAO {
	Connection conn;
	public Connection getConnection() throws ClassNotFoundException
	{
		String url = "jdbc:postgresql://localhost:5432/shopaholics";
		String username = "postgres";
		String password = "13wh1a0507";
		Connection conn = null;
		try {
			//load Driver
			Class.forName("org.postgresql.Driver");
			System.out.println("driver loaded");
			//create connection
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("successfully connected");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
