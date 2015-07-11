package com.shopaholics.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shopaholics.beans.SellerBean;

public class SellerDAO {
	Connection conn;
	  PreparedStatement st;
	  ConnectionDAO cd;
	  public SellerDAO() throws ClassNotFoundException, SQLException{
		  cd = new ConnectionDAO(); 
		  conn = cd.getConnection();
	  }
	public int createUser(SellerBean ubean) 	
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
	    public boolean validateUser(SellerBean ubean) 
	    		throws SQLException{
	    	String user = ubean.getUser();
		    String password = ubean.getPassword();
	    	boolean result = false;
	    	ResultSet rs;
	    	String query = 
	    	"SELECT * from seller WHERE seller_name=? and password=?";
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