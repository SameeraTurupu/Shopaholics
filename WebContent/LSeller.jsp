<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Shopaholics</title>
</head>
<body>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("header2.jsp");
        dispatcher.include(request, response );
%>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("Header.jsp");
        dispatcher1.include(request, response );
%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<div class="row">

<div class = "container col-xs-6" style="float: left">

<h3>Login</h3>
 <form class="form-horizontal" action ="SellerLController">
 <h1 align = "center"><b></b></h1>
  <div class="form-group">  
    <label class="control-label col-sm-4"><b>User Name:</b></label>
    <div class="col-sm-4">
      <input type="text" name = "user" class="form-control" placeholder="Enter username" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Password:</b></label>
    <div class="col-sm-4">
      <input type="password" class="form-control" name = "password" placeholder="Enter password" required>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-5">
      <button type="submit" class="btn btn-default btn-lg">Login</button>
    </div>
  </div>
</form>
</div>
<div class = "container col-xs-6">
<h3>Sign Up</h3>
 <form class="form-horizontal" action ="seller">
 <h1 align = "center"><b></b></h1>
  <div class="form-group">
    <label class="control-label col-sm-4"><b>User</b></label><br>
    <div class="col-sm-4">
      <input type="text" name = "user" class="form-control" placeholder="Enter username" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Password:</b></label><br>
    <div class="col-sm-4">
      <input type="password" class="form-control" name = "password" placeholder="Enter password" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Company</b></label><br>
    <div class="col-sm-4">
      <input type="text" class="form-control" name = "company" placeholder="Enter Company" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>City</b></label><br>
    <div class="col-sm-4">
      <input type="text" class="form-control" name = "city" placeholder="Enter City" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>State</b></label><br>
    <div class="col-sm-4">
      <input type="text" class="form-control" name = "State" placeholder="Enter State" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Phone</b></label><br>
    <div class="col-sm-4">
      <input type="phone" class="form-control" name = "phone" placeholder="Enter Phone number" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Pincode</b></label><br>
    <div class="col-sm-4">
      <input type="text" class="form-control" name = "pincode" placeholder="Enter pincode" required>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-5">
      <button type="submit" class="btn btn-default"><b> Sign up </b></button>
    </div>
  </div>
</form>
</div>
&nbsp; &nbsp; &nbsp;<br><br>
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
</div>
</div>
</body>
</html>