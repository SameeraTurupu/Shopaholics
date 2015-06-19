package com.shopaholics.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;








import javax.servlet.http.HttpSession;

import com.shopaholics.beans.CartsBean;
import com.shopaholics.beans.ProductBean;

public class ProductDAO {
	ConnectionDAO cdao;
	Connection conn = null;
	Statement st = null;
	Statement st1 = null;
	//PreparedStatement st2 =null;
	public ProductDAO()throws ClassNotFoundException{
		cdao = new ConnectionDAO();
		conn = cdao.getConnection();
	}
	/*HttpSession hs = request.getSession();
	//add name as session attribute
	 String phone = (String)hs.getAttribute("phone");*/
	public List<ProductBean> listContacts(String name)throws SQLException, ClassNotFoundException{
		List<ProductBean> clist = new ArrayList<ProductBean>();
		System.out.println(name);
		String query1 ="select seller_id from seller where seller_name = '"+name+"'";
		st1 = conn.createStatement();
		System.out.println("after st1 ");
		ResultSet rst1 = st1.executeQuery(query1);
		System.out.println("after rst1");
		int seller_id = 0;
		while(rst1.next()){
			seller_id = rst1.getInt("seller_id");
			System.out.println(seller_id);
		}
		
		String query = "select prod_id, prod_name, description, stock, price, offers from product where seller_id= '"+seller_id+"'";
		st = conn.createStatement();
		ResultSet rst = st.executeQuery(query);
		ProductBean cbean2;
		while(rst.next()){
			String prod_id = rst.getString("prod_id");
			String prod_name = rst.getString("prod_name");
			String description = rst.getString("description");
			int stock = rst.getInt("stock");
			int price = rst.getInt("price");
			int offers = rst.getInt("offers");
			cbean2 = new ProductBean(prod_id, prod_name, description, stock, price, offers);
			clist.add(cbean2);
		}
		System.out.println(clist.size());
		return clist;
	}
    public int updateContact(ProductBean cbean)throws SQLException{
		int result;
		
		String query = "UPDATE product SET prod_name = '" + cbean.getProd_name()+ "', description = '"+cbean.getDescription()+ "',stock = '"+cbean.getStock()+ "', price = '"+cbean.getPrice()+ "',offers ='"+cbean.getOffers()+ "' WHERE prod_id = '"+cbean.getProd_id()+ "'";
		System.out.println(query);
		st = conn.createStatement();
		result = st.executeUpdate(query);
		System.out.println("update contact"+result);
		return result;
	}
	public int deleteProduct(String id)throws SQLException{
		int result = 0;
		
		String query = "delete from product where prod_id ='"+id+"'";
		st1 = conn.prepareStatement(query);
		result = st1.executeUpdate(query);
		System.out.println(result);
		return result;
	}
	public List<ProductBean> itemsdisplay(String category)throws SQLException, ClassNotFoundException{
		List<ProductBean> clist = new ArrayList<ProductBean>();
		String query = "select prod_id, prod_name, description, stock, price, offers from product where main_cat= '"+category+"'";
		st = conn.createStatement();
		ResultSet rst = st.executeQuery(query);
		ProductBean cbean2;
		while(rst.next()){
			String prod_id = rst.getString("prod_id");
			String prod_name = rst.getString("prod_name");
			String description = rst.getString("description");
			int stock = rst.getInt("stock");
			int price = rst.getInt("price");
			int offers = rst.getInt("offers");
			cbean2 = new ProductBean(prod_id, prod_name, description, stock, price, offers);
			clist.add(cbean2);
		}
		System.out.println(clist.size());
		return clist;
	}
	public int addtocart(ProductBean cbean,String usrnme) throws SQLException{
		int value = 1;
		String prod_id= cbean.getProd_id();
		String name = cbean.getProd_name();
		int price = cbean.getPrice();
		
		String query1 ="select user_id from users where firstname = '"+usrnme+"'";
		st1 = conn.createStatement();
		System.out.println("after st1 ");
		ResultSet rst1 = st1.executeQuery(query1);
		System.out.println("after rst1");
		int user_id = 0;
		while(rst1.next()){
			user_id = rst1.getInt("user_id");
		}
		//String phone = cbean.getPhone(); 
		String query = "insert into carts(user_id,product_id,quantity,price, prod_name) values('"+user_id+"','"+prod_id+"','"+value+"','"+price+"','"+name+"')";
		int result = 0;
		st = conn.prepareStatement(query);
		/*st.setString(1,cbean.getId());
		st.setString(2,cbean.getName());
		st.setString(3,cbean.getEmail());
		st.setString(4,cbean.getPhone());
		st.setString(5,cbean.getNm());*/
		result = st.executeUpdate(query);
		return user_id;
		}
	public List<CartsBean> cartdisp(int usrid)throws SQLException,ClassNotFoundException{
		//user = "1";
		List<CartsBean> conCollection = new ArrayList<CartsBean>();
		String query = "select * from carts where user_id = '"+usrid+"'";
		st = conn.prepareStatement(query);
		//System.out.println(user);
		ResultSet result = st.executeQuery(query);
		CartsBean contactBean2;
		while(result.next()){
			String pId = result.getString("product_id");
			String pname = result.getString("prod_name");
			int order_id = result.getInt("order_id");
			//String desc = result.getString("description");
			//String cid = result.getString("catid");
			int price = result.getInt("price");
			//int offer = result.getInt("offer");
			int stock = result.getInt("quantity");
			contactBean2 = new CartsBean(pId,pname,order_id,stock,price);
			conCollection.add(contactBean2);
		}
		System.out.println(conCollection.size());
		return conCollection;
	}
 public List<ProductBean> addcart(String pid) throws SQLException,ClassNotFoundException{
	 List<ProductBean> conCollection = new ArrayList<ProductBean>();
		String query = "select * from product WHERE prod_id = '"+pid+"';";
		st = conn.prepareStatement(query);
		//System.out.println(user);
		ResultSet result = st.executeQuery(query);
		ProductBean contactBean2;
		while(result.next()){
			String pId = result.getString("pid");
			String pname = result.getString("pname");
			String desc = result.getString("description");
			int price = result.getInt("price");
			int offer = result.getInt("offer");
			int stock = result.getInt("stock");
			contactBean2 = new ProductBean(pId,pname,desc,price,offer,stock);
			conCollection.add(contactBean2);
 }
		return conCollection;
 }
 public int deletecart(int id,String usrname) 
			throws SQLException {
	 System.out.println(id);
		int result = 0;
		String query1 ="select user_id from carts where order_id = '"+id+"'";
		st1 = conn.createStatement();
		ResultSet rst1 = st1.executeQuery(query1);
		int user_id = 0;
		while(rst1.next()){
			user_id = rst1.getInt("user_id");
		}
		String query = "delete from carts where order_id='"+id+"'";
		System.out.println("excecuting delete");
		st = conn.prepareStatement(query);
		System.out.println("excecuted delete");
		result = st.executeUpdate(query);
		System.out.println(result);
	    return user_id;	
	}
}
