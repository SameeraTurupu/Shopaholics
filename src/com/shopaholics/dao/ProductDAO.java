package com.shopaholics.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.shopaholics.beans.ProductBean;

public class ProductDAO {
	ConnectionDAO cdao;
	Connection conn = null;
	Statement st = null;
	PreparedStatement st1 =null;
	public ProductDAO()throws ClassNotFoundException{
		cdao = new ConnectionDAO();
		conn = cdao.getConnection();
	}
	public List<ProductBean> listContacts(String user)throws SQLException, ClassNotFoundException{
		List<ProductBean> clist = new ArrayList<ProductBean>();
		
		String query = "select prod_id, prod_name, description, stock, price, offers from product where prod_id= '"+user+"'";
		st = conn.createStatement();
		ResultSet rst = st.executeQuery(query);
		ProductBean cbean2;
		while(rst.next()){
			String prod_id = rst.getString("productid");
			String prod_name = rst.getString("productname");
			String description = rst.getString("email");
			int stock = Integer.parseInt(rst.getString("stock"));
			int price = Integer.parseInt(rst.getString("stock"));
			int offers = Integer.parseInt(rst.getString("stock"));
			cbean2 = new ProductBean(prod_id, prod_name, description, stock, price, offers);
			clist.add(cbean2);
		}
		System.out.println(clist.size());
		return clist;
	}
}
