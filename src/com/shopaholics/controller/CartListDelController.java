package com.shopaholics.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopaholics.dao.ProductDAO;


public class CartListDelController extends HttpServlet {
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
			String usrname = (String)hs.getAttribute("sunm");
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println("in contoller" + id);
			ProductDAO ud = new ProductDAO();
			//calling delete() method
			int result = ud.deletecart(id,usrname);
			//calling addContact() method
			HttpSession hs1 = request.getSession();   
		    int cart = (Integer)hs1.getAttribute("cartno");
		    int cartno = cart - 1;
		    hs.setAttribute("cartno", cartno);
				response.sendRedirect("itemslist.jsp?uid=" + result);}
			catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
		}

	}


