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

/**
 * Servlet implementation class UpdateContactController
 */
public class UpdateLController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String desc = request.getParameter("desc");
		int stock = Integer.parseInt(request.getParameter("stock"));
		int price = Integer.parseInt(request.getParameter("price"));
		int offer = Integer.parseInt(request.getParameter("offer"));
		HttpSession hs = request.getSession();
		String nm = (String)hs.getAttribute("sunm");
		//String user = request.getParameter("nm");
		try {
			ProductDAO codao = new ProductDAO();
			ProductBean cbean = new ProductBean(id, name,desc,stock,price,offer);
			int result = codao.updateContact(cbean);
			if (result >= 1){
				response.sendRedirect("productslist.jsp?message=Record Updated");
			}
			else{
				response.sendRedirect("productslist.jsp?message=Record not updated");
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
