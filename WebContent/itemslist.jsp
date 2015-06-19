<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<%@page import ="com.shopaholics.beans.CartsBean" %>
    <%@page import ="com.shopaholics.dao.ProductDAO" %>
     <%@ page import = "java.util.*"%>
<%
ProductDAO cont = new ProductDAO();
int uid = Integer.parseInt(request.getParameter("uid"));
List<CartsBean> lst = cont.cartdisp(uid);
ListIterator<CartsBean> lt = lst.listIterator();
%>
<title>Shopaholics</title>
</head>
<body>
<table border = 0>
	
 <%  while(lt.hasNext()) 
 {
	 CartsBean cb = lt.next();	 
	 out.print("<tr>");
	 out.print("<td>"+ cb.getOrder_id());
	 out.print("<td>"+cb.getPid());
	 out.print("<td>"+cb.getPname());
	 out.print("<td>"+cb.getStock());
	 out.print("<td>"+cb.getPrice());
	 out.print("<td><a href =CartListDelController?id="+ cb.getOrder_id()+"><span class = \"glyphicon glyphicon-trash\" style = color: \"red\"; fontsize: \"30px\";></span> </a></td>");	
	 out.print("</tr>");
 }
 %>
</table>
</body>
</html>