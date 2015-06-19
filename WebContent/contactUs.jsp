%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="Bootstrap/css/nav-custom2.css" rel="stylesheet"/>
    <script src = "Bootstrap/js/bootstrap.js"></script>
    <script src = "Bootstrap/js/bootstrap.min.js"></script>
    <script src = "Bootstrap/js/bootstrap.npm.js"></script>
    
    <link href="Bootstrap/css/nav-custom2.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("header2.jsp");
        dispatcher1.include(request, response );
%>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("Header.jsp");
        dispatcher.include(request, response );
%>
    <div class="container">
  <h2>FeedBack Form</h2>
  <form role="form">
    <div class="form-group">
      <label for="user">First Name</label>
      <input type="text" class="form-control" id="email" placeholder="Enter First Name">
    </div>
    <div class="form-group">
      <label for="user">Last Name</label>
      <input type="text" class="form-control" id="email" placeholder="Enter Last Name">
    </div>
    <div class="form-group">
      <label for="email">Email</label>
      <input type="email" class="form-control" id="pwd" placeholder="Enter Email">
    </div>
    <div class="form-group">
         <textarea rows="5" cols="50">Message :</textarea>
    </div>
    <button type="button" class="btn btn-warning">Submit</button>
  </form>
</div>
</body>
</html>