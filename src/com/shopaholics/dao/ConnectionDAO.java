package com.shopaholics.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.log4j.Logger;

public class ConnectionDAO {
	Connection conn;
	Logger log = Logger.getLogger(ConnectionDAO.class);
	public Connection getConnection() throws ClassNotFoundException, SQLException
	{
		/*String url = "jdbc:mysql://localhost:3306/shopaholics";
		String username = "root";
		String password = "13wh1a0507";
		Connection conn = null;
		try {
			//load Driver
			Class.forName("com.mysql.jdbc.Driver");
			log.info("driver loaded");
			//create connection
			conn = DriverManager.getConnection(url, username, password);
			log.info("driver loaded");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;*/
		try{
			//Class.forName("com.mysql.jdbc.Driver");
						Context initContext = new InitialContext();
						Context envContext = (Context) initContext.lookup("java:comp/env");
						DataSource ds = (DataSource) envContext.lookup("jdbc/shopaholics");
						Connection conn = ds.getConnection();
						System.out.println("MySql driver loaded");
						//con = DriverManager.getConnection(URL,USER,PASSWORD);
						System.out.println(conn);
						return conn;
					}
					catch(NamingException c){
						System.out.println("Driver not found");
						return null;
				}
					
				}
}
