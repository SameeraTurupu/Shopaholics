<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopaholics</title>
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
	
	<script src = "Bootstrap/js/bootstrap.js"></script>
	<script src = "Bootstrap/js/bootstrap.min.js"></script>
	<script src = "Bootstrap/js/bootstrap.npm.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  		<div class="container-fluid">
    		<div class="navbar-header">
    		<ul class = "nav navbar-nav navbar-custom">
        		<li><a class="navbar-brand" href="home.jsp">Home</a></li>
   						 <li class="dropdown">
      						<div class="dropdown">
            <a id="dLabel" class="dropdown-toggle navbar-brand" data-toggle="dropdown" class="btn btn-primary" data-target="#" href="#">
                Categories<span class="caret"></span>
            </a>
    		<ul class="dropdown-menu" >
              <li class="dropdown-submenu" name = "category">
                <a tabindex="-1" href="cartlist.jsp?cat=Electronics">Electronics</a>
       
                <li class="dropdown-submenu">
                <a tabindex="-1" href="cartlist.jsp?cat=Home and kitchen">Home and kitchen</a>
              </li>
              <li class="dropdown-submenu">
                <a tabindex="-1" href="cartlist.jsp?cat=Clothing and accessories">Clothing and accessories</a>
              </li>
               <li class="dropdown-submenu">
                <a tabindex="-1" href="cartlist.jsp?cat=Health">Health</a>
              </li>
               <li class="dropdown-submenu">
                <a tabindex="-1" href="cartlist.jsp?cat=Sports">Sports</a>
              </li>
              <li class="dropdown-submenu">
                <a tabindex="-1" href="cartlist.jsp?cat=Entertainment">Entertainment</a>
              </li>
              <li class="dropdown-submenu">
                <a tabindex="-1" href="cartlist.jsp?cat=Kids">Kids</a>
              </li>
            </ul>
        </div>
      	</li>	
        <li><a class="navbar-brand" href="#">Featured</a></li>
        <li><a class="navbar-brand" href="#">Offers</a></li>
       	</ul>
    	</div>
    </div>
   </nav>
</body>
</html>