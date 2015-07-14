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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
   <script src="https://code.jquery.com/jquery.min.js"></script>
   <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
   <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script  type="text/javascript" src="../js/typeahead.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.9.3/typeahead.min.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <!--  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="js/jquery.tablesorter.min.js"></script> 
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script>
</script>   
   <script>/* $(document).ready(function () {
		(function($) {
			$('#filter').keyup(function () {
				var rex = new RegExp($(this).val(), 'i');
				$('.searchable tr').hide();
				$('.searchable tr').filter(function () {
					return rex.test($(this).text());
				}).show();
			})
		}(jQuery));
	}); */
   $(document).ready(function(){
	    $('#myTable').dataTable();
	});
   
   </script>	
    <!-- <script>$(function() {

	   $("table").searchable({ theme : 'blue' });

	   $("#ajax-append").click(function() {

	     $.get("assets/ajax-content.html", function(html) {

	       // append the "ajax'd" data to the table body
	       $("table tbody").append(html);

	       // let the plugin know that we made a update
	       // the resort flag set to anything BUT false (no quotes) will trigger an automatic
	       // table resort using the current sort
	       var resort = true;
	       $("table").trigger("update", [resort]);

	       // triggering the "update" function will resort the table using the current sort; since version 2.0.14
	       // use the following code to change the sort; set sorting column and direction, this will sort on the first and third column
	       // var sorting = [[2,1],[0,0]];
	       // $("table").trigger("sorton", [sorting]);
	     });

	     return false;
	   });

	 }); 
	 </script>-->


<title>Shopaholics</title>
</head>
<style>body{
    margin-left: 80px;
    margin-right: 80px;
}</style>
<body>
<% HttpSession hs1 = request.getSession();   
String name = (String)hs1.getAttribute("sunm");
if(name != null) {
RequestDispatcher dispatcher = request.getRequestDispatcher("header3.jsp");
        dispatcher.include(request, response);}
else {
	RequestDispatcher dispatcher = request.getRequestDispatcher("header2.jsp");
    dispatcher.include(request, response);
}
%>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("Header.jsp");
        dispatcher1.include(request, response );
%>
<div class="list">
<div class="container">
<form>
<center><b><h2 class = "list" style = "color:orange">Featured Products</h2></b></center>
<!-- <div class = "input-group"> <span class="input-group-addon">Filter</span>
<input id = "filter" type="text" class = "form-control" placeholder="Type here">
</div> --><br><br>
<div class="table-responsive">
<table  id = "myTable" class = "table table-hover" border="0">
<thead>
<tr>
<td>Image</td>
<td>Product ID</td>
<td>Product Name</td>
<td>Price</td>
<td>Stock</td>
<td>Description</td>
<td>Offers</td>
<td>Add to cart</td>
</tr>
</thead>
<tbody class = "searchable">
<% while(lt.hasNext()){
	ProductBean cb = lt.next();
	//out.print("<tbody>");
	out.print("<tr>");
 out.print("<td>");
     
	 out.print("<a href=# id=myBtn><img src =" + cb.getImage() + "></a>");

    //out.print(cb.getImage()); 
    out.print("</td>");
    out.print("<div class=modal fade id=myModal role=dialog>");
    out.print("<div class=modal-dialog>");
    
      //<!-- Modal content-->
      out.print("<div class=modal-content>");
        out.print("<div class=modal-header>");
          out.print("<button type=button class=close data-dismiss=modal>&times;</button>");
          out.print("<h4 class=modal-title>"+ cb.getProd_name()+"</h4>");
        out.print("</div>");
        out.print("<div class=modal-body>");
          out.print("<p>"+cb.getDescription()+"</p>");
         out.print("<img src =" + cb.getImage() + " width=300 height=400>");
        out.print("</div>");
        out.print("<div class=modal-footer>");
          out.print("<button type=button class=btn btn-default data-dismiss=modal>Close</button>");
        out.print("</div>");
      out.print("</div>");
      
    out.print("</div>");
  out.print("</div>");
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
	//out.print("</tbody>");
	
	}
	%>
	</tbody>
</table>
</div>
</form>
</div><br><br>
<%-- <div class="container">
  <h2>Activate Modal with JavaScript</h2>
  <!-- Trigger the modal with a button -->
  <!-- <button type="button" class="btn btn-info btn-lg" id="myBtn">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
          <% out.print("<img src =" + cb.getImage() + ">");%>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
 --%>
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>

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
</body>
</html>