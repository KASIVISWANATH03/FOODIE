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
background-image:url("./img/tact.png");
background-size:cover;
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
<div style = "background-color:rgba(180,20,130,0.4); width:30%; margin:40px auto" align = "center">
<form >
<label>NAME</label>
<input type = "text" name = "name" required = "required"><br><br>
<label>MAIL</label>
<input type = "text" name = "mail" required = "required"><br><br>
<label>FEEDBACK</label>
<input type = "text" name = "feed" required = "required"><br><br>
<input type = "submit" value = "SEND">
</form>
</div>

</body>
</html>