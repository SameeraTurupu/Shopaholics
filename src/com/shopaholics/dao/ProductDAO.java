package com.shopaholics.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;













import javax.naming.NamingException;
import javax.servlet.http.HttpSession;

import com.shopaholics.beans.CartsBean;
import com.shopaholics.beans.Product;
import com.shopaholics.beans.ProductBean;
import com.shopaholics.beans.UserSignupBean;

public class ProductDAO {
	ConnectionDAO cdao;
	Connection conn = null;
	Statement st = null;
	Statement st1 = null;
	private int noOfRecords;
	//PreparedStatement st2 =null;
	public ProductDAO()throws ClassNotFoundException, NamingException, SQLException{
		cdao = new ConnectionDAO();
		conn = cdao.getConnection();
	}
	/*HttpSession hs = request.getSession();
	//add name as session attribute
	 String phone = (String)hs.getAttribute("phone");*/
	public List<UserSignupBean> userDetails(String pid) throws SQLException,ClassNotFoundException{
		List<UserSignupBean> conCollection = new ArrayList<UserSignupBean>();
		String query = "select * from users WHERE email = '"+pid+"';";
		st = conn.prepareStatement(query);
		//System.out.println(user);
		ResultSet result = st.executeQuery(query);
		UserSignupBean contactBean2;
		while(result.next()){
			String user = result.getString("firstname");
			
		    String Lastname = result.getString("lastname");
		    String email = result.getString("email");
		    String password = result.getString("password");
		    String address = result.getString("address");
		    String city = result.getString("city");
		    String state = result.getString("state");
		    String phone = result.getString("phone");
		    int zipcode = result.getInt("zipcode");
		    contactBean2 = new UserSignupBean(user, Lastname, email, password, address, city, state, phone, zipcode);
			conCollection.add(contactBean2);
		}
		return conCollection;
	}
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

		String query = "select prod_id, prod_name, description, stock, price, offers,image from product where seller_id= '"+seller_id+"'";
		st = conn.createStatement();
		ResultSet rst = st.executeQuery(query);
		ProductBean cbean2;
		while(rst.next()){
			String prod_id = rst.getString("prod_id");
			String prod_name = rst.getString("prod_name");
			String description = rst.getString("description");
			int stock = rst.getInt("stock");
			int price = rst.getInt("price");
			String image=rst.getString("image");
			int offers = rst.getInt("offers");
			cbean2 = new ProductBean(prod_id, prod_name, description, stock, price, offers,image);
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
	public int updateUser(UserSignupBean cbean)throws SQLException{
		int result;
		int user_id = 0;
		String query1 = "select user_id from users WHERE email = '"+cbean.getEmail()+ "'";
		st = conn.createStatement();
	ResultSet rst = st.executeQuery(query1);
		while(rst.next()){
			user_id = rst.getInt("user_id");
			System.out.println(user_id);
		}
		String query = "UPDATE users SET firstname = '" + cbean.getUser()+ "', lastname = '"+cbean.getLastname()+ "',email = '"+cbean.getEmail()+ "', password = '"+cbean.getPassword()+ "',address ='"+cbean.getAddress()+ "', city = '"+cbean.getCity()+"', state = '"+cbean.getState()+"',phone = '"+cbean.getPhone()+"', zipcode = '"+cbean.getZipcode()+"' WHERE user_id = '"+user_id+ "'";
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
		String query = "select * from product where main_cat= '"+category+"' and stock > 0";
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
			String image=rst.getString("image");
			cbean2 = new ProductBean(prod_id, prod_name, description, stock, price, offers,image);
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
		String status = "yes";
		int user_id = 0;
		while(rst1.next()){
			user_id = rst1.getInt("user_id");
		}
		//String phone = cbean.getPhone(); 
		System.out.println("before insertion in cart");
		String query = "insert into carts(user_id,product_id,quantity,price, prod_name,status) values('"+user_id+"','"+prod_id+"','"+value+"','"+price+"','"+name+"','"+status+"')";
		System.out.println(query);
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
			String image = getimage(pId);
			String pname = result.getString("prod_name");
			int order_id = result.getInt("order_id");
			//String desc = result.getString("description");
			//String cid = result.getString("catid");
			int price = result.getInt("price");
			//int offer = result.getInt("offer");
			int stock = result.getInt("quantity");
			String status = result.getString("status");
			contactBean2 = new CartsBean(pId,pname,order_id,stock,price,status,image);
			conCollection.add(contactBean2);
		}
		return conCollection;
	}
	public String getimage(String pid) throws SQLException,ClassNotFoundException{
		String image = null;
		String query = "select image from product where prod_id = '"+pid+"'";
		st = conn.createStatement();
		ResultSet rst = st.executeQuery(query);
		while(rst.next()){
			 image=rst.getString("image");
		}
		return image;
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
			String image=result.getString("image");
			contactBean2 = new ProductBean(pId,pname,desc,price,offer,stock,image);
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
	public void Status(int oid) 
			throws SQLException {
    	String name = null;
    	String query1 ="select status from carts where order_id = '"+oid+"'";
		st1 = conn.createStatement();
		ResultSet rst1 = st1.executeQuery(query1);
        String stats = null;
        String stats1 = null;
		while(rst1.next()){
			stats = rst1.getString("status");
		}
    	int result;
    	System.out.println("hi"+stats+"sam");
        if(stats.equals("yes")) {
        	System.out.println("hi sam in if1");
        	stats1 = "no";
        	String query = "UPDATE carts SET status = '" + stats1 + "' where order_id = '" + oid + "' ";
        	st = conn.createStatement();
    		result = st.executeUpdate(query);
    		name = "yes";
    	}
        if(stats.equals("no")) {
        	System.out.println("hi in if 2");
        	stats1 = "yes";
        	String query = "UPDATE carts SET status = '" + stats1 + "' where order_id = '" + oid + "' ";
        	st = conn.createStatement();
    		result = st.executeUpdate(query);
    		name = "no";
    		System.out.println("name in dao in if" + name);
        }       	
       }
    public List<CartsBean> Finalbuy()throws SQLException,ClassNotFoundException{
    	String status = "no";
		//user = "1";
		List<CartsBean> conCollection = new ArrayList<CartsBean>();
		String query = "select * from carts where status = '"+status+"'";
		st = conn.prepareStatement(query);
		//System.out.println(user);
		ResultSet result = st.executeQuery(query);
		CartsBean contactBean2;
		while(result.next()){
			String pId = result.getString("product_id");
			String image = getimage(pId);
			decrStock(pId);
			String pname = result.getString("prod_name");
			int order_id = result.getInt("order_id");
			//String desc = result.getString("description");
			//String cid = result.getString("catid");
			int price = result.getInt("price");
			//int offer = result.getInt("offer");
			int qty = result.getInt("quantity");
			int user_id = result.getInt("user_id");
			String status1 = result.getString("status");
			contactBean2 = new CartsBean(pId,pname,order_id,qty,price,status1,image);
			conCollection.add(contactBean2);
		}
		return conCollection;
	} 
    
    public int totalprice()throws SQLException,ClassNotFoundException{ 
    	int totalprice = 0;
    	String status = "no";
    	String query = "select sum(quantity *price) from carts where status = '"+status+"'";
    	st = conn.prepareStatement(query);
		//System.out.println(user);
		ResultSet result = st.executeQuery(query);
		while(result.next()){
			totalprice = result.getInt(1);
    }
		return totalprice;
    }
    public void SoldCart() 
			throws SQLException {
		int result = 0;
		String status = "no";
		String query = "delete from carts where status='"+status+"'";
		System.out.println("excecuting delete");
		st = conn.prepareStatement(query);
		System.out.println("excecuted delete");
		result = st.executeUpdate(query);
		System.out.println(result);
		return;	
	}
    public void decrStock(String pid) 
			throws SQLException {
    	int result;
    	String query = "UPDATE product SET stock = stock - 1 where prod_id = '" + pid + "' and stock > 0";
    	System.out.println(query);
    	st = conn.createStatement();
		result = st.executeUpdate(query);
    }
    public List<ProductBean> featured()throws SQLException, ClassNotFoundException{
		List<ProductBean> clist = new ArrayList<ProductBean>();
		String query = "select * from product where stock > 0 and stock < 5";
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
			String image=rst.getString("image");
			cbean2 = new ProductBean(prod_id, prod_name, description, stock, price, offers,image);
			clist.add(cbean2);
		}
		System.out.println(clist.size());
		return clist;
	}
    public List<ProductBean> offers()throws SQLException, ClassNotFoundException{
		List<ProductBean> clist = new ArrayList<ProductBean>();
		String query = "select * from product where stock > 0 and offers > 50";
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
			String image=rst.getString("image");
			cbean2 = new ProductBean(prod_id, prod_name, description, stock, price, offers,image);
			clist.add(cbean2);
		}
		System.out.println(clist.size());
		return clist;
	}
    	
    	
}

