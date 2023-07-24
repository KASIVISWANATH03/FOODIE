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


*{
    margin:0;
    padding:0;
    box-sizing: border-box;
}


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

</style>
</head>
<body>
<div >
<form method = "post" action = "out" style = "padding:30px;color:white;text-align:right;margin:30px 30px 30px 100px">
<input type = "submit" value = "LOGOUT">
</form>
</div>
<% 
	List productList = DataFetcher.fetchproductinfo();
%>

	<h1 style = "background-color:black;color:white;text-align:center">ITEM'S INFO</h1><br>
<div class = "tab-active" id = "tab2" >
		
						<%
							for(int i=0;i<productList.size();i++){
								String[] productArr = ((String)productList.get(i)).split(":");
							
						%>
						
			<div class = "main" style = "float:left ;margin-right:50px;margin-left:20px;height:500px">
            
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
                <button class = "button">ORDER</button>
                <label></label>
               

            </div>
            
        </div>
						<% 
							}
						%>
							

			</div>
</body>
</html>