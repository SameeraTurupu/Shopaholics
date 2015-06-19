package com.shopaholics.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.shopaholics.dao.ProductDAO;


public class DeleteLController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("contactId");		
		try {
			ProductDAO codao = new ProductDAO();
			//ContactBean cbean = new ContactBean(id, name, email, phone, nm);
			int result= codao.deleteProduct(id);
			if(result >= 1){
			response.sendRedirect("productslist.jsp?message=Record Deleted");
			}
			else{
				response.sendRedirect("productslist.jsp?message= Record not deleted");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}

