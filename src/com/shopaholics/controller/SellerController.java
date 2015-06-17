package com.shopaholics.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopaholics.beans.ContactBean;
import com.shopaholics.beans.UserBean;
import com.shopaholics.dao.ContactDAO;
import com.shopaholics.dao.UserDAO;

/**
 * Servlet implementation class SellerController
 */
public class SellerController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//read user and password	
			int id = 3;
			String name = request.getParameter("user");
			String password = request.getParameter("password");
			String company = request.getParameter("company");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String phone = request.getParameter("phone");
			int zipcode = Integer.parseInt(request.getParameter("pincode"));
			
			//creating UserBean object with parameterized constructor
			ContactBean cBean = new ContactBean(id, name, password,company, city, state, phone, zipcode);
			//creating ContactDAO object
			ContactDAO ud = new ContactDAO();
			//calling createUser() method
			int result = ud.addContact(cBean);
			if(result > 0)
			{
				//get http Session reference
				HttpSession hs = request.getSession();
				//add name as session attribute
				hs.setAttribute("sunm", name);
				response.sendRedirect("LSeller.jsp?msg=succesfully registered! u can login now");									
				
			}
			else
			{
				response.sendRedirect("signup.jsp?msg=" + name + " already exits! sign up with different account");
				
			}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
	}

}