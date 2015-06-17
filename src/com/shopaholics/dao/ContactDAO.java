package com.shopaholics.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import com.shopaholics.beans.ContactBean;



public class ContactDAO {
	ConnectionDAO cdao;
	Connection conn = null;
	Statement st = null;
	PreparedStatement st1 =null;
	public ContactDAO()throws ClassNotFoundException{
		cdao = new ConnectionDAO();
		conn = cdao.getConnection();
	}
	public int addContact(ContactBean cbean)throws SQLException{
		int result;
		int id = cbean.getSeller_id();
		String name = cbean.getSellar_name();
		String city = cbean.getCity();
		String phone = cbean.getPhone();
		String state = cbean.getState();
		String password = cbean.getPassword();
		String company = cbean.getCompany();
		int zipcode = cbean.getZipcode();
		String query = "insert into seller values('"+id+"','"+name+"','"+password+"','"+company+"','"+city+"', '"+state+"','"+phone+"','"+zipcode+"')";
		st = conn.createStatement();
		result = st.executeUpdate(query);
		return result;
	}
}