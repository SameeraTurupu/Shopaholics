<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("header3.jsp");
        dispatcher.include(request, response );
%>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("Header.jsp");
        dispatcher1.include(request, response );
%>
<%
String id = request.getParameter("id");
String name = request.getParameter("nm");
String desc = request.getParameter("desc");
int stock = Integer.parseInt(request.getParameter("stock"));
int price = Integer.parseInt(request.getParameter("price"));
int offer = Integer.parseInt(request.getParameter("offer"));

%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopaholics</title>
</head>

<body>
<form action="UpdateLController">
Product id:<input type = "text" name = "id" value = "<%=id%>" readonly><br>
Product Name:<input type = "text" name = "name" value = "<%=name %>"><br>
Description:<input type = "textarea" name = "desc" value = "<%=desc %>"><br>
Stock:<input type = "text" name = "stock" value = "<%=stock %>">pieces<br>
Price:<input type = "text" name = "price" value = "<%=price %>">Rs<br>
Offer:<input type = "text" name = "offer" value = "<%=offer %>">%<br>
<input type = "submit" value = "UpdateContact">
</form>
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