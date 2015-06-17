<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<link href="Bootstrap/css/nav-custom2.css" rel="stylesheet"/>
	<script src = "Bootstrap/js/bootstrap.js"></script>
	<script src = "Bootstrap/js/bootstrap.min.js"></script>
	<script src = "Bootstrap/js/bootstrap.npm.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("header3.jsp");
        dispatcher.include(request, response );
%>
<div class = "container col-xs-6">
<h3>Add Product</h3>
 <form method="post" action="upload" enctype="multipart/form-data">
 <table>
 <tr><td>Product ID</td><td><input type = "text" name = "productid"/></td></tr>
 <tr><td>Product Name</td><td><input type = "text" name = "productname"/></td></tr>
 <tr><td>Price</td><td><input type = "text" name = "price"/></td></tr>
 <tr><td>Description</td><td><input type = "text" name = "description"/></td></tr>
 <tr><td>Image</td><td><input type = "file" name = "photo"/></td></tr>
 <tr><td>Offers</td><td><input type = "text" name = "offers"/></td></tr>
 
 <tr><td>Stock</td><td><input type = "text" name = "stock"/></td></tr>
 </table>
 <button type="submit" class="btn btn-default btn-lg">Add</button>
 
</form>
</div>
&nbsp; &nbsp; &nbsp;<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div>
<% RequestDispatcher dispatcher2 = request.getRequestDispatcher("footer.jsp");
        dispatcher2.include(request, response );
%>
</body>
</html>