<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>404Error</title>
</head>
<body>
<center>
<a href = "home.jsp">HOME</a>
    <h2>
        Apologize, we could not find the page you were looking for:
    </h2>
    ${pageContext.errorData.requestURI}
</center>
</body>
</html>