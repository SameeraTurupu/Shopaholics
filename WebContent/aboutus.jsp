<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopaholics</title>
</head>
<body>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("header3.jsp");
        dispatcher.include(request, response );
%>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("Header.jsp");
        dispatcher1.include(request, response );
%><br><br>
	<div class="container">
  
          
  <div class="row">
    <div class="col-md-4">
      <a href="#" class="thumbnail">
       <img src="./IMG/Sabhitha.jpg" alt="Pulpit Rock" style="width:200px;height:200px"><br>
        <p>Nokia Lumia 830 Orange</p>
        <p>Rs 20700</p>    
      </a>
    </div>
    <div class="col-md-4">
      <a href="#" class="thumbnail">
        <img src="./IMG/Neelima.jpg" alt="Moustiers Sainte Marie" style="width:200px;height:200px">
        <br>
        <p>Sony Xperia C4 Dual SIM Black</p>
        <p>Rs 25499</p>
      </a>
    </div>
    <div class="col-md-4">
      <a href="#" class="thumbnail">
       <img src="./IMG/B3658853.jpg" alt="Cinque Terre" style="width:200px;height:200px"><br>
        <p>Nokia Lumia 930 Green</p>
        <p>Rs 37391</p>      
      </a>
    </div>
    
  </div>
</div>
<div><br><br><br><br><br><br><br><br>
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