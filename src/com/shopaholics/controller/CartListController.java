package com.shopaholics.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopaholics.beans.ProductBean;
import com.shopaholics.dao.ProductDAO;


public class CartListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			HttpSession hs = request.getSession();
			String email = (String)hs.getAttribute("email");
			String id = request.getParameter("id");
			String product_name = request.getParameter("nm");
			String stock = request.getParameter("stock");
			int quantity = Integer.parseInt(stock);
			int price = Integer.parseInt(request.getParameter("price"));
			int offer = Integer.parseInt(request.getParameter("offer"));
			String desc = request.getParameter("desc");
			ProductDAO ud = new ProductDAO();
			ProductBean cbean = new ProductBean(id,product_name,desc,quantity, price, offer);
			HttpSession hs2 = request.getSession();
			hs2.setAttribute("uid",ud.addtocart(cbean,email));
			//result = ud.addtocart(cbean,usrname);
			HttpSession hs1 = request.getSession();   
		    int cart = (Integer)hs1.getAttribute("cartno");
		    int cartno = cart + 1;
		    hs.setAttribute("cartno", cartno);
			response.sendRedirect("itemslist.jsp");
			}
			catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
