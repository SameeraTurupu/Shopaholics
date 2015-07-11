<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="com.shopaholics.beans.UserSignupBean" %>
    <%@page import ="com.shopaholics.dao.ProductDAO" %>
     <%@ page import = "java.util.*"%>
    <%  HttpSession hs = request.getSession();
    String email = (String)hs.getAttribute("email");
    System.out.println(email);
    ProductDAO contact = new ProductDAO();
    List<UserSignupBean> lst = contact.userDetails(email);
    ListIterator<UserSignupBean> lt = lst.listIterator();
    	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
  <div class="jumbotron">
    <h3><u><b>Saved Address</b></u></h3><br><br>      
    <p>
    <table>
    <% 
    while(lt.hasNext()){
    	UserSignupBean cb = lt.next();
	//out.print("<tbody class = searchable>");
//	out.print("<tr>");
	out.print("Firstname:  "+ cb.getUser());out.print("<tr>");
	out.print("<br><br>");
	out.print("Lastname:  "+cb.getLastname());
	out.print("<br><br>");
	out.print("Email:  "+cb.getEmail());
	out.print("<br><br>");
	out.print("Address:  "+cb.getAddress());
	out.print("<br><br>");
	out.print("City:  "+cb.getCity());
	out.print("<br><br>");
	out.print("State:"+cb.getState());
	out.print("<br><br>");
	out.print("Zipcode:"+cb.getZipcode());
	out.print("<br><br>");
	out.print("Phone:"+cb.getPhone());
	out.print("<br><br><br>");
	 out.println("<td>" + "<a href =UpdateUD.jsp?user="+cb.getUser()+
													"&lastname="+cb.getLastname()+
													"&email="+cb.getEmail()+
													"&address="+cb.getAddress()+
													"&city="+cb.getCity()+
													"&state="+cb.getState()+
													"&zipcode="+cb.getZipcode()+
													"&phone="+cb.getPhone()+
			" class=\"label label-warning\"><span class = \"glyphicon glyphicon-retweet\" style = color: \"red\"; fontsize: \"30px\";></span> Update </a></td>");
	
	 /* out.print("</tr>");
	out.print("</tbody>"); */
	
	
    } %></table></p>
  <!--  <a href="UpdateUD.jsp"><span class="glyphicon glyphicon-retweet"></span> Update</a> -->
    
	
    
  </div>
</div>
</body>
</html>