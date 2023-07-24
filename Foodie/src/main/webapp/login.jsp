<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  type = "text/css" href = " style.css">
<style>
body{
background-image:url("./img/log.png");
background-size:cover;
background-repeat:no-repeat;
 background-size: 1500px 900px;
}
</style>
</head>
<body>
<ul>
	<li><a href = "contact.jsp">CONTACT</a></li>
	<li><a href = "about.jsp">ABOUT</a></li>
	<li><a href = "login.jsp">LOGIN</a></li>
	<li><a href = "register.jsp">REGISTER</a></li>
	
	<li><a href = "home.jsp">HOME</a></li>
	
</ul>
<div style = "background-color:rgba(180,180,180,0.7); width :30%;margin:50px auto" >
<form  method = "post" action = "log" align = "center" >
<label>EMAIL</label>
<input type = "text" name = "mail" required = "required"><br/><br>
<label>PASSWORD</label>
<input type = "password" name = "pass" required = "required"><br><br>

<input type = "submit" value = "LOGIN" style = "background-color:rgba(162, 209, 178,0.5); width:20%">

</form>
</div>
</body>
</html>