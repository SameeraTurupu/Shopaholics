package com.shopaholics.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopaholics.beans.UserBean;
import com.shopaholics.dao.UserDAO;


//import com.bvrit.address.model.BussinessUtility;


public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		//read user and password	
		String name = request.getParameter("user");
		String pwd = request.getParameter("password");
		//creating UserBean object with parameterized constructor
		UserBean uBean = new UserBean(name, pwd);
		//creating ContactDAO object
		UserDAO ud = new UserDAO();
		//calling createUser() method
		int result = ud.createUser(uBean);
		if(result > 0)
		{
			//get http Session reference
			HttpSession hs = request.getSession();
			//add name as session attribute
			hs.setAttribute("sunm", name);
			response.sendRedirect("login.jsp?msg=succesfully registered! u can login now");									
			
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