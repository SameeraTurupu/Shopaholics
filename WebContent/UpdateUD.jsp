<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("header2.jsp");
        dispatcher.include(request, response );
%>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("Header.jsp");
        dispatcher1.include(request, response );	
%>
 <%
String firstname = request.getParameter("user");
String lastname = request.getParameter("lastname");
String email = request.getParameter("email");
String address = request.getParameter("address");
String city = request.getParameter("city");
String state = request.getParameter("state");
String phone = request.getParameter("phone");
int zipcode = Integer.parseInt(request.getParameter("zipcode"));
%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<div class = "container">
 <form class="form-horizontal" action ="UserUpdateController">
 <h1 align = "center"><b></b></h1>
  <div class="form-group">
    <label class="control-label col-sm-4"><b>First Name:</b></label><br>
    <div class="col-sm-4">
      <input type="text" name = "user" class="form-control" value = "<%=firstname %>" placeholder="Enter username" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Last Name:</b></label><br>
    <div class="col-sm-4">
      <input type="text" name = "lastname" class="form-control" value = "<%=lastname %>" placeholder="Enter lastname" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Email:</b></label><br>
    <div class="col-sm-4">
      <input type="text" name = "email" class="form-control" value = "<%=email %>" placeholder="Enter Email" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Password:</b></label><br>
    <div class="col-sm-4">
      <input type="password" name = "password" class="form-control"  placeholder="Enter password" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Address</b></label><br>
    <div class="col-sm-4">
      <textarea rows= "5" cols="5"  name = "address" class="form-control" placeholder="Enter Current address" required><%=address %></textarea>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>City:</b></label><br>
    <div class="col-sm-4">
      <input type="text" name = "city" class="form-control" value = "<%=city%>"  placeholder="Enter CityName " required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>State:</b></label><br>
    <div class="col-sm-4">
      <input type="text" name = "state" class="form-control" value = "<%=state%>" placeholder="Enter State " required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Phone</b></label><br>
    <div class="col-sm-4">
      <input type="phone"  name = "phone" class="form-control" value = "<%=phone %>"  placeholder="Enter Phone number" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-4" for="pwd"><b>Zipcode:</b></label><br>
    <div class="col-sm-4">
      <input type="text" name = "zipcode" class="form-control" value = "<%=zipcode %>"  placeholder="Enter Zipcode " required>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-5">
      <button type="submit" class="btn btn-default"><b> Save Changes </b></button>
    </div>
  </div>
</form>
</div>
&nbsp; &nbsp; &nbsp;
</body>
</html>