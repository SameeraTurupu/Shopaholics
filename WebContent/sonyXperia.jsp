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
      <a href="sonyxperia.jsp" class="thumbnail">
       <img src="./IMG/B4989275.jpg" alt="Pulpit Rock" style="width:120px;height:200px"><br>
      </a>
    </div><br>
    <div style="float: left;">
    <p><b>Sony Xperia C4 Dual SIM White</b></p>
        <p><b>Rs 28999</b></p>
    <p>BRAND--     SONY</p>
    <ul>
<li>See All SONY Products
<li>CATEGORY--     Sony
<li>GENERAL FEATURES     

<li>Sales Package
    Handset, Battery, Charger, Headset, USB Cable, User Manual 
<li>Model Name
    Sony Xperia C4 Dual Sim 
<li>Input Type
    Full Touch 
<li>Form Factor
    Bar 
<li>Handset Colour
    White 

<p>CAMERA</p>     

<li>Primary Camera
    Yes, 13 MP 
<li>Secondary Camera
    Yes, 5 MP 
<li>Flash
    Yes, LED Flash 
<li>Zoom
    4x Digital Zoom 
<li>Video Recording
    Yes 
<li>HD Recording
    Yes 
<li>Auto Focus
    Yes 
Other Camera Features
    Geotagging, Image capture, Image playback 

<p>MEMORY </p>    

<li>Phonebook
    Yes 
<li>Phonebook Entries
    Practically Unlimited 
<li>RAM
    2 GB 

<li>Dual Sim
    Yes, GSM + GSM
    </ul>
    </div>
      <button type="button" class="btn btn-warning">Buy</button>
</body>
</html>