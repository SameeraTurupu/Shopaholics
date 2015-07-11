package com.shopaholics.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.shopaholics.beans.UserBean;
import com.shopaholics.beans.UserSignupBean;
public class UserDAO {
	  Connection conn;
	  PreparedStatement st;
	  ConnectionDAO cd;
	  public UserDAO() throws ClassNotFoundException, SQLException{
		  cd = new ConnectionDAO(); 
		  conn = cd.getConnection();
	  }
	public int createUser(UserSignupBean ubean) 	
				throws SQLException{
		     String user = ubean.getUser(); 
		     String Lastname = ubean.getLastname();
		     String password = ubean.getPassword();
		     String email = ubean.getEmail();
		     String address = ubean.getAddress();
		     String city = ubean.getCity();
		     String state = ubean.getState();
		     String phone = ubean.getPhone();
		     int zipcode = ubean.getZipcode();
			 String query = "insert into users(firstname,lastname,email,password,address,phone,city,state,zipcode) values('"+user+"','"+Lastname+"','"+email+"','"+password+"','"+address+"','"+phone+"','"+city+"','"+state+"','"+zipcode+"')";
			 System.out.println(query);
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
	    	String email = null;
	    	ResultSet rs;
	    	String query = 
	    	"SELECT * from users WHERE email=? and password=?";
	   		 st = conn.prepareStatement(query);	
	   		 st.setString(1, user);
			 st.setString(2, password);	
	   		 rs = st.executeQuery();
	   		if(rs.next()) {
	   			result = true;
	   		}
	    	return result;		
	    }
	    public String getUserName(String Email) 
	    		throws SQLException{
	    	ResultSet rs;
	    	String query = 
	    	"SELECT firstname from users WHERE email=?";
	    	st.setString(1, Email);
	    	String name =null;
	    	rs = st.executeQuery();
	    	if(rs.next()) {
	   			name = rs.getString("firstname");
	    	
	    }
			return name; }
	    public int getUserId(String email) 
		    		throws SQLException{
	    	ResultSet rs;
	    	String query = 
	    	"SELECT user_id from users WHERE email=?";
	    	st.setString(1, email);
	    	int user_id = 0;
	    	rs = st.executeQuery();
	    	if(rs.next()) {
	   			user_id = rs.getInt("user_id");
	    	}
				//add name as session attribute
				
					return user_id;
	    	}
	    }
