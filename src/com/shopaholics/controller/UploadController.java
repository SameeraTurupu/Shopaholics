package com.shopaholics.controller;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 












import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/uploadController")
 
public class UploadController extends HttpServlet {
	 private static final String SAVE_DIR="images";
	String url ="jdbc:mysql://localhost:3306/shopaholics";
	//String url ="jdbc:postgresql://localhost:5432/sample";
	String user ="root";
	//String user ="postgres";
	String password ="13wh1a0507";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
		
	}

	PreparedStatement st1 = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// gets values of text fields
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String apppath = "C:/Users/sabhitha/workspace/ShopaholicsPluto/WebContent";
            String savePath = apppath + File.separator + SAVE_DIR;
                File fileSaveDir=new File(savePath);
                if(!fileSaveDir.exists()){
                    fileSaveDir.mkdir();
                }
        String productname = request.getParameter("productname");
        String description = request.getParameter("description");
        String selected = null;
       /* if(request.getParameter("points") != null) {
        	selected = request.getParameter("points");
        	 System.out.println("in if"+selected);
        }*/
        selected = request.getParameter("category");
               System.out.println("selected"+selected);
        String img_id = request.getParameter("productid");
      //  System.out.println("after");
        //String img = request.getParameter("photo");
        Part part=request.getPart("file");
        String fileName=extractFileName(part);
        part.write(savePath + File.separator + fileName);
        int  price = Integer.parseInt(request.getParameter("price"));
        int  stock = Integer.parseInt(request.getParameter("stock"));
        int  offer = Integer.parseInt(request.getParameter("offers"));
        //InputStream inputStream = null; // input stream of the upload file
       // System.out.println(firstName);
      //  System.out.println(img_id);
        // System.out.println(img);
        // obtains the upload file part in this multipart request
        /*Part filePart = request.getPart("photo");
        System.out.println(filePart);
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }*/
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
		
        try {
            // connects to the database
        	Class.forName("com.mysql.jdbc.Driver");
        	//Class.forName("org.postgresql.Driver");
        	System.out.println("mysql driver is loaded");
            conn = DriverManager.getConnection(url, user, password);
            HttpSession hs = request.getSession();
			//add name as session attribute
			String name=(String)hs.getAttribute("sunm");
            String query1 ="select seller_id from seller where seller_name = '"+name+"'";
            System.out.println("after seller query");
            System.out.println(query1);
    		st1 = conn.prepareStatement(query1);
    		System.out.println("after st1 ");
    		ResultSet rst1 = st1.executeQuery();
    		System.out.println("after rst1");
    		int seller_id = 0;
    		while(rst1.next()){
    			seller_id = rst1.getInt("seller_id");
    			System.out.println(seller_id);
    		}
    		
            // constructs SQL statement
            String sql = "insert into product(prod_id, prod_name,description,stock,price, offers,seller_id,main_cat,file) values (?,?,?,?,?,?,?,?,?)";
            System.out.println(sql);
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, img_id);
            statement.setString(2, productname);
            statement.setString(3, description);
            statement.setInt(4, stock);
            statement.setInt(5, price);
            
             
            /*if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
            	System.out.println(inputStream);
                statement.setBlob(6, inputStream);
            }*/
            statement.setInt(6, offer);
            statement.setInt(7, seller_id);
            statement.setString(8, selected);
            String filePath= savePath + File.separator + fileName ;
            System.out.println("file path " + filePath);
            statement.setString(9,filePath);
            
            // sends the statement to the database server
             statement.executeUpdate();
           /* if (row > 0) {
                message = "File uploaded and saved into database";
            }*/
    		
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            /*request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/productslist.jsp").forward(request, response);*/
        }
    }
	 private String extractFileName(Part part) {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
	    }
	}

