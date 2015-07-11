package com.shopaholics.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopaholics.beans.ProductBean;
import com.shopaholics.beans.UserSignupBean;
import com.shopaholics.dao.ProductDAO;


public class UserUpdateController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
		int result = 0;
		String firstname = request.getParameter("user");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String phone = request.getParameter("phone");
		int zipcode = Integer.parseInt(request.getParameter("zipcode"));
		ProductDAO codao = new ProductDAO();
		UserSignupBean cbean = new UserSignupBean(firstname, lastname, email, password, address, city, state, phone, zipcode);
		try {
			 result = codao.updateUser(cbean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result >= 1){
			response.sendRedirect("Myaccount.jsp?message=Your Changes are saved successfully");
		} else {
			response.sendRedirect("Myaccount.jsp?message= Problem in saving Changes");
		}
	}

}
