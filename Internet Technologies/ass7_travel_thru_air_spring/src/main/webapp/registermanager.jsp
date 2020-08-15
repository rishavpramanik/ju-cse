<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.user.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Management Portal</title>
</head>
<body>
<% 
User user = (User) session.getAttribute("user");
if(user != null) {
	if(user.getUsertype() == "customer") response.sendRedirect("welcomecustomer.jsp");
	else if(user.getUsertype() == "manager") response.sendRedirect("welcomemanager.jsp");
	return;
} 
%>
<h1>Welcome to Travel Thru Air</h1>
<h2>Management Portal</h2>

Already registered? <a href="http://localhost:8080/ass7_travel_thru_air_spring/loginmanager.jsp">Management Login</a>
<br>
<h3>Register here!</h3>
<form action="registermanager" method="post" >
<pre>
    Username: <input type="text" name="username" placeholder="Enter username here" required/>
    
    Password: <input type="text" name="password" placeholder="Enter password here" required/>
    
    Name:     <input type="text" name="name" placeholder="Enter name here" required/>
	
              <input type="submit" value="REGISTER"/>
</pre>
</form>
</body>
</html>