<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="com.shopaholics.beans.ProductBean" %>
    <%@page import ="com.shopaholics.dao.ProductDAO" %>
     <%@ page import = "java.util.*"%>
     
    <%
    String message = request.getParameter("message");
    if(message != null){
    	out.print("<h2><font color = green>"+message+"</font></h2>");
    }
    HttpSession hs = request.getSession();
    String user = (String)hs.getAttribute("sunm");
    ProductDAO cont = new ProductDAO();
    List<ProductBean> lst = cont.listContacts(user);
    ListIterator<ProductBean> lt = lst.listIterator();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<tr>
<td>PROD_ID</td>
<td>NAME</td>
<td>DESCRIPTION</td>
<td>STOCK</td>
<td>PRICE</td>
<td>OFFER</td>
<td>DELETE</td>
</tr>
 <%  while(lt.hasNext()) 
 {
	 ProductBean cb = lt.next();
	 out.print("<tr>");
	 out.print("<td>"+cb.getProd_id());
	 out.print("<td>"+cb.getProd_name());
	 out.print("<td>"+cb.getDescription());
	 out.print("<td>"+cb.getStock());
	 out.print("<td>"+cb.getPrice());
	 out.print("<td>"+cb.getOffers());
	 out.print("<td><a href =deletecontact?contactId="+ cb.getProd_id()+"><img src = ./IMG/delete_icon.png></img></a></td>");
	/*  out.print("<td><a href =updateContact.jsp?id="+cb.getId()+"&nm="+cb.getName()+"&email="+cb.getEmail()+"&phone="+cb.getPhone()+"><img src = ./IMG/icon-update.png></img></a></td>"); */
		
	 out.print("</tr>");
 }
 %>
</table>
</body>
</html>