<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.lang.String" %>
<%@ page import = "java.util.List" %>
<%@ page import = "FoodiePackage.DataFetcher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url("./img/admin.png");
background-size:cover;
background-repeat:no-repeat;
 background-size: 1500px 900px;
 background-attachment:fixed;
}
.d{
	color:white;
}

*{
    margin:0;
    padding:0;
    box-sizing: border-box;
}
input
{
	color:black;
	border:2px solid black;
	
	
}
p{
    font-size: 40px;
    align-items: center;
    color: #452e45;
    text-align: center;

}
.main{
    display:flex;
    flex-direction: column;
    align-items: center;
    background-color: blanchedalmond;
    border-radius: 25px;
    width: 300px;
    margin: auto;
    margin-top: 50px;
    border: 2px double black;
}
.main:hover{
	background-color:#ADD8E6;
}
.main .card .photo{
    width:150px;
    align-items: center;
    border:2px solid black;
    border-radius: 50%;
    margin-top: 30px;
}
.photo{
    align-items: center;
}
.main .data{
    display:flex;
    flex-direction: column;
    align-items: center;
    color: blue;
}
.data .name{
    font-size: 20px;
    font-weight: 700;
}
.data .domain{
    font-size: 30px;
}
.main .icon{
    margin-top: 15px;
    display: flex;
}
.icon .icons{
    display: flex;
    align-items: center;
    border-radius: 50%;
    justify-content: center;
    color:rgb(9, 16, 27);
    width:20px;
    height:20px;
    margin: 0 8px;
    background-color: rgb(158, 233, 233);
    
}
.main .buttons{
    display: flex;
    margin-top: 15px;
    align-items: center;
}
.buttons .button{
    background-color: rgb(235, 167, 104);
    margin-top: 60px;
    margin:0 10px;
    color: black;
    font-weight: bold;
    border-radius: 23%;
    padding: 5px;
    cursor:pointer;
}
.buttons .button:hover{
    background-color:red;
}
.btn
{
	background-color:yellow;
}
.btn:hover
{
	background-color:orange;
}

</style>
</head>
<body>
<h1>THIS IS ADMIN PAGE</h1>
<% 
	List UserList = DataFetcher.UserInfo();
	List productList = DataFetcher.fetchproductinfo();
%>
<div class = "panel">
		<div class = "button-container" align = "center">
			<!-- <button class = "active" >View customers info</button> -->
			<a  href = "#tab1"><button class = "active"  >View customers</button></a>
			<a  href = "#tab2"><button class = "active" >View Products</button></a>
			<a  href = "#tab3"><button class = "active" >Add Products</button></a>
		</div>
		<div class = "content-container">
	<!-- tab1 -->
	<div class = "tab-active" id = "tab1" align="center" >
			<h1 style = "background-color:black;color:white">CUSTOMER'S INFO</h1>
				<table  border = "1" cellspacing = "10" >
					<thead>
						<tr>
							<th class = "d">UserName</th>
							<th class = "d">Phone</th>
							<th class = "d">Email</th>
							
						</tr>
					</thead>
					<tbody>
						<%
							for(int i=0;i<UserList.size();i++){
								String[] custArr = ((String)UserList.get(i)).split(":");
							
						%>
						<tr>
							
							<td class = "d"><%=custArr[0] %></td>
							<td class = "d"><%=custArr[1] %></td>
							<td class = "d"><%=custArr[2] %></td>
		
						</tr>
						<% 
							}
						%>
							
					
					</tbody>
				</table>
			</div>
		<!-- tab2 -->
	
	
		<div class = "tab-active" id = "tab2" align = "center" >
			<h1 style = "background-color:black;color:white">ITEM'S INFO</h1>
						<%
							for(int i=0;i<productList.size();i++){
								String[] productArr = ((String)productList.get(i)).split(":");
							
						%>
						
			<div class = "main"style = "float:left ;margin-right:50px;margin-left:20px;height:500px">
            
            <div class="card">
                <img src = "img/<%=productArr[4]%>" alt="item photo" class = "photo">
            </div>

            <div class = "data">
                <span class = "name">PID : <%=productArr[0] %></span>
                <span class = "domain">PNAME : <%=productArr[1] %></span>
                <span class = "domain">PDESC : <%=productArr[2] %></span>
                <span class = "domain">PRICE : <%=productArr[3] %></span>

            </div>
            
            <div class = "buttons">
                <button class = "submit">ORDER</button>
               

            </div>
        </div>
						<% 
							}
						%>
							
					
			</div>
			</div>
	<!-- tab3 -->	
	<div style = "color:white;" id = tab3>
	
	<br><br>
		<h1>
		ADD PRODUCTS
		</h1>
		<form method = "post" action = "prod">
		ProductID<input type = "text" name = "pid" required = required><br><br>
		ProductName<input type = "text" name = "pname" required = required><br><br>
		ProductDesc<input type = "text" name = "pdesc" required = required><br><br>
		ProductPrice<input type = "text" name = "pprice" required = required><br><br>
		Product-Img<input type = "text" name = "pimg" required = required><br><br>
		<input type = submit value = "submit" class = "btn" style ="color:black;padding:8px;text-align:center">
		</form>
	</div>
</div>
</body>
</html>