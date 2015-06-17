package com.shopaholics.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import com.shopaholics.beans.UserBean;
public class UserDAO {
	  Connection conn;
	  PreparedStatement st;
	  ConnectionDAO cd;
	  public UserDAO() throws ClassNotFoundException{
		  cd = new ConnectionDAO(); 
		  conn = cd.getConnection();
	  }
	public int createUser(UserBean ubean) 	
				throws SQLException{
		     String user = ubean.getUser();
		     String password = ubean.getPassword();
			 String query = "insert into Users(firstname, password) values('"+user+"','"+password+"')";
			 int result = 0;
		
			 st = conn.prepareStatement(query);
			// st.setString(1, user);
			// st.setString(2, password);	
		     result = st.executeUpdate();
			 		return result;
	    }
	    public boolean validateUser(UserBean ubean) 
	    		throws SQLException{
	    	String user = ubean.getUser();
		    String password = ubean.getPassword();
	    	boolean result = false;
	    	ResultSet rs;
	    	String query = 
	    	"SELECT * from Users WHERE firstname=? and password=?";
	   		 st = conn.prepareStatement(query);	
	   		 st.setString(1, user);
			 st.setString(2, password);	
	   		 rs = st.executeQuery();
	   		if(rs.next()) {
	   			result = true;
	   		}
	    	return result;		
	    }
	}