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
<style>body{
margin-left: 100px;}</style>
<body>
<% RequestDispatcher dispatcher1 = request.getRequestDispatcher("header2.jsp");
        dispatcher1.include(request, response );
%>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("Header.jsp");
        dispatcher.include(request, response );
%>
<div class="row">
    <div class="col-md-3">
      <a href="nokialumia.jsp" class="thumbnail">
       <img src="./IMG/nokia-lumia-830-orange-.jpg" alt="Pulpit Rock" style="width:120px;height:200px"><br>
      </a>
    </div><br>
    <div>
    <p>Nokia Lumia 830 Orange</p>
        <p>Rs 20700</p><br>
     <p>CATEGORY--     Nokia Lumia</p>
<p>GENERAL FEATURES</p>     
<ul>
<li>Sales Package
    Handset, Battery, Headset, Charger, User Guide 
<li>Model Name
    Nokia Lumia 830 
<li>Input Type
    Full Touch 
<li>Form Factor
    Bar 
<li>Handset Colour
    Orange 

<p>CAMERA</p>     

<li>Primary Camera
    Yes, 10 MP 
<li>Secondary Camera
    Yes, 0.9 MP 
<li>Flash
    Yes, LED Flash 
<li>Zoom
    4x Digital Zoom 
<li>Video Recording
    Yes, 30 fps 
<li>Auto Focus
    Yes 

<li>MEMORY     

<li>Phonebook
    Yes 
<li>Internal Memory
    Yes, 16 GB 
<li>Card Slot
    Yes, microSD 
<li>Expandable Memory
    Yes, 128 GB 

</ul>
WARRANTY     

    1 Year Manufacturer Warranty
    </div>
    <button type="button" class="btn btn-warning">Warning</button>
</body>
</html>