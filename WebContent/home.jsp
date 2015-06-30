<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="com.shopaholics.beans.ProductBean" %>
    <%@page import ="com.shopaholics.dao.ProductDAO" %>
     <%@ page import = "java.util.*"%>
<%@page import = "javax.servlet.RequestDispatcher"%>
<%
    String message = request.getParameter("message");
    if(message != null){
    	out.print("<h2><font color = green>"+message+"</font></h2>");
    }
  //HttpSession hs = request.getSession();
    //String cat = (String)hs.getAttribute("category");
    String cat1 = request.getParameter("cat");
    ProductDAO cont = new ProductDAO();
    List<ProductBean> lst = cont.itemsdisplay(cat1);
    ListIterator<ProductBean> lt = lst.listIterator();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>Shopaholics</title>
</head>
<body>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("header2.jsp");
        dispatcher1.include(request, response );
%>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("Header.jsp");
        dispatcher.include(request, response );
%>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="2000">
  
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
 
  
  <div class="carousel-inner">
    <div class="item active">
      <img src="./IMG/HEELS_COL.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="./IMG/Sydney.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="./IMG/7.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
  </div>
 
  
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div> <br>
<div class="container">
  <h2>Latest</h2>
          
  <div class="row">
    <div class="col-md-3">
      <a href="nokialumia.jsp" class="thumbnail">
       <img src="./IMG/nokia-lumia-830-orange-.jpg" alt="Pulpit Rock" style="width:120px;height:200px"><br>
        <p>Nokia Lumia 830 Orange</p>
        <p>Rs 20700</p>    
      </a>
    </div>
    <div class="col-md-3">
      <a href="sonyXperia.jsp" class="thumbnail">
        <img src="./IMG/B4989277.jpg" alt="Moustiers Sainte Marie" style="width:120px;height:200px">
        <br>
        <p>Sony Xperia C4 Dual SIM Black</p>
        <p>Rs 25499</p>
      </a>
    </div>
    <div class="col-md-3">
      <a href="cinqueterre.jpg" class="thumbnail">
       <img src="./IMG/B3658853.jpg" alt="Cinque Terre" style="width:120px;height:200px"><br>
        <p>Nokia Lumia 930 Green</p>
        <p>Rs 37391</p>      
      </a>
    </div>
    <div class="col-md-3">
      <a href="sonyXperia.jsp" class="thumbnail">
       <img src="./IMG/B4989275.jpg" alt="Cinque Terre" style="width:120px;height:200px"><br>
        <p>Sony Xperia C4 Dual SIM White</p>
        <p>Rs 28999</p>      
      </a>
    </div>
  </div>
</div>

<div class="container">
  <h2>Discounts</h2>
          
  <div class="row">
    <div class="col-md-3">
      <a href="pulpitrock.jpg" class="thumbnail">
       <img src="./IMG/banner_long_new.jpg" alt="Pulpit Rock" style="width:120px;height:200px"><br>
        <p>70 % Off</p>   
      </a>
    </div>
    <div class="col-md-3">
      <a href="moustiers-sainte-marie.jpg" class="thumbnail">
        <img src="./IMG/banner_long_new2.jpg" alt="Moustiers Sainte Marie" style="width:120px;height:200px">
        <br>
        <p>70% Off</p>
      </a>
    </div>
    <div class="col-md-3">
      <a href="cinqueterre.jpg" class="thumbnail">
       <img src="./IMG/urban-style-combo-of-2-double-bed-sheets-usbc09.jpg" alt="Cinque Terre" style="width:120px;height:200px"><br>
        <p>20% Off</p>     
      </a>
    </div>
    <div class="col-md-3">
      <a href="cinqueterre.jpg" class="thumbnail">
       <img src="./IMG/d-vogue-combo-of-men-t-shirt-shoes-and-bagpack-combo-3.jpg" alt="Cinque Terre" style="width:120px;height:200px"><br>
        <p>Rs 749 20% Off</p>      
      </a>
    </div>
  </div>
</div>
 
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
