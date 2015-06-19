<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
    <%@page import ="com.shopaholics.beans.ProductBean" %>
    <%@page import ="com.shopaholics.dao.ProductDAO" %>
     <%@ page import = "java.util.*"%>
     <% 
   // HttpSession hs = request.getSession();
   // String user = (String)hs.getAttribute("sunm");
    String cat1 = request.getParameter("cat");
    ProductDAO contact = new ProductDAO();
    List<ProductBean> lst = contact.itemsdisplay(cat1);
    ListIterator<ProductBean> lt = lst.listIterator();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="list">
<form>
<h2 class = "list">List Of Products</h2>
<table class = "table table-hover" border="0">
<tr>
<td>Product ID</td>
<td>Product Name</td>
<td>Price</td>
<td>Stock</td>
<td>Description</td>
<td>Offers</td>
<td>Add to cart</td>
<td>Delete</td>
</tr>
<% while(lt.hasNext()){
	ProductBean cb = lt.next();
	out.print("<tr>");
	out.print("<td>" + cb.getProd_id());
	out.print("<td>" + cb.getProd_name());
	out.print("<td>" + cb.getPrice());
	out.print("<td>" + cb.getStock());
	out.print("<td>" + cb.getDescription());
	out.print("<td>" + cb.getOffers());
	out.print("<td>" + "<a href = CartListController?id="+cb.getProd_id()+
													"&stock="+cb.getStock()+
													"&price="+cb.getPrice()+
													"&offer="+cb.getOffers()+
													"&desc="+cb.getDescription()+
													"&nm="+cb.getProd_name()+
			"><span class = \"glyphicon glyphicon-shopping-cart\" style = color: \"red\"; fontsize: \"30px\";></span> </a></td>");
	out.print("</tr>");
	}
	%>
</table>
</form>
</div>
</body>
</html>