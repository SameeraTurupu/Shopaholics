<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="com.shopaholics.beans.CartsBean" %>
    <%@page import ="com.shopaholics.dao.ProductDAO" %>
     <%@ page import = "java.util.*"%>
    <%
ProductDAO cont = new ProductDAO();
//int uid = Integer.parseInt(request.getParameter("uid"));
List<CartsBean> lst = cont.Finalbuy();
int total = cont.totalprice();
ListIterator<CartsBean> lt = lst.listIterator();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("header3.jsp");
        dispatcher.include(request, response );
%>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("Header.jsp");
        dispatcher1.include(request, response );
%>
<h2>Your Cart</h2>

<table class = "table table-hover" border = 0>
<tr>
<td>Product ID</td>
<td>Image</td>
<td>Product Name</td>
<td>Quantity</td>
<td>Price</td>
<td>Total</td>
</tr>	
 <%  while(lt.hasNext()) 
 {
	 CartsBean cb = lt.next();	 
	 out.print("<tr>");
	 out.print("<td>"+cb.getPid());
     out.print("<td>");
     
	 out.print("<img src =" + cb.getImage() + ">");

    //out.print(cb.getImage()); 
    out.print("</td>");
	 out.print("<td>"+cb.getPname());
	 out.print("<td>"+cb.getStock());
	 out.print("<td>"+cb.getPrice());
	 out.print("<td>"+cb.getPrice() * cb.getStock());
	 out.print("</tr>");
	 HttpSession hs1 = request.getSession();   
	 int cart = (Integer)hs1.getAttribute("cartno");
	 int cartno = cart - 1;
	 hs1.setAttribute("cartno", cartno);
 }
 out.print("<tr>");
 out.print("<td align=left></td>");
 out.print("<td align=left></td>");
 out.print("<td align=left></td>");
 out.print("<td align=left>total</td>");
 out.print("<td align=left>"+total);
 out.print("</tr>");	
 %>
</table>
<div>
<a href="myorders.jsp"><button type="button" class="btn btn-warning">myorders</button></a><br><br>

<div class="container text-center navbar" style = "background-color:#333;">
    <hr/>
  <div class="row">
    <div class="col-lg-12">
      <div class="col-md-3">
        <ul class="nav nav-pills nav-stacked nav-custom2" >
          <li><a href="#" class=nav-custom2>Home</a></li>
          <li><a href="#" class=nav-custom2>About Us</a></li>
        </ul>
      </div>
      <div class="col-md-3">
        <ul class="nav nav-pills nav-stacked">
          <li><a href="#" class=nav-custom2>Contact us</a></li>
          <li><a href="#" class=nav-custom2>Login</a></li>
        </ul>
      </div>
      <div class="col-md-3">
        <ul class="nav nav-pills nav-stacked">
          <li><a href="#" class=nav-custom2>Complaints</a></li>
          <li><a href="#" class=nav-custom2>My Account</a></li>          
        </ul>
      </div>
      <div class="col-md-3">
        <ul class="nav nav-pills nav-stacked">
          <li><a href="#" class=nav-custom2>Orders</a></li>
          <li><a href="#" class=nav-custom2>Your Cart</a></li>
        </ul>
      </div>  
    </div>
  </div>
  <hr>
    <div class="row">
        <div class="col-lg-12">
            <ul class="nav nav-pills nav-justified">
                <li><a href="/" class=nav-custom2>@ shopaholics.com</a></li>
                <li><a href="#" class=nav-custom2>Terms of Service</a></li>
                <li><a href="#" class=nav-custom2>Privacy</a></li>
            </ul>
        </div>
    </div>
</div>
</div>
</body>
</html>