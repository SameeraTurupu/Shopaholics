<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="com.shopaholics.beans.ProductBean" %>
    <%@page import ="com.shopaholics.dao.ProductDAO" %>
     <%@ page import = "java.util.*"%>
     
    <%
    String message = request.getParameter("message");
    if(message != null){
    	out.print("<h2><font color = green>"+message+"</font></h2>");
    }
    HttpSession hs = request.getSession();
    String name = (String)hs.getAttribute("sunm");
    System.out.print(name);
    ProductDAO cont = new ProductDAO();
    List<ProductBean> lst = cont.listContacts(name);
    ListIterator<ProductBean> lt = lst.listIterator();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">      
	<link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="Bootstrap/css/bootstrap-theme.min.css.map" rel="stylesheet">
	<link href="Bootstrap/css/bootstrap.css" rel="stylesheet"/>
	<link href="Bootstrap/css/navbar-custom.css" rel="stylesheet"/>
	<link href="Bootstrap/css/sample.css" rel="stylesheet"/>
	<script src = "Bootstrap/js/jquery.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<link href="Bootstrap/css/nav-custom2.css" rel="stylesheet"/>
	<script src = "Bootstrap/js/bootstrap.js"></script>
	<script src = "Bootstrap/js/bootstrap.min.js"></script>
	<script src = "Bootstrap/js/bootstrap.npm.js"></script>
	
	<link href="Bootstrap/css/nav-custom2.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("header3.jsp");
        dispatcher.include(request, response );
%><br><br>

<h2>Add a product</h2><a href ="seller.jsp?username=" +name><span class="glyphicon glyphicon-plus"></span></a>
<table class = "table table-hover" border="0">
<tr>
<td>PROD_ID</td>
<td>NAME</td>
<td>DESCRIPTION</td>
<td>STOCK</td>
<td>PRICE</td>
<td>OFFER</td>
<td>DELETE</td>
<td>UPDATE</td>
</tr>
 <%  while(lt.hasNext()) 
 {
	 ProductBean cb = lt.next();	 
	 out.print("<tr>");
	 out.print("<td>"+cb.getProd_id());
	 out.print("<td>"+cb.getProd_name());
	 out.print("<td>"+cb.getDescription());
	 out.print("<td>"+cb.getStock());
	 out.print("<td>"+cb.getPrice());
	 out.print("<td>"+cb.getOffers());
	 out.print("<td><a href =DeleteLController?contactId="+ cb.getProd_id()+"><span class = \"glyphicon glyphicon-trash\" style = color: \"red\"; fontsize: \"30px\";></span> </a></td>");
	 out.print("<td><a href =updateproductlist.jsp?id="+cb.getProd_id()+"&nm="+cb.getProd_name()+"&desc="+cb.getDescription()+"&stock="+cb.getStock()+"&price="+cb.getPrice()+"&offer="+cb.getOffers()+"><span class=\"glyphicon glyphicon-refresh\"></span></a></td>"); 
		
	 out.print("</tr>");
 }
 %>
</table><br><br>
<div>
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