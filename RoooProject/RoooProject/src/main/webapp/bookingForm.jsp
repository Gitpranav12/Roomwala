<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
String ownerEmail = (String) request.getAttribute("ownerEmail");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap" rel="stylesheet">

<style>
*
{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: "Roboto Slab", serif;
font-optical-sizing: auto;
}

body{
    text-align: center;
    height: 88vh;
    background: linear-gradient(to bottom right, #f2d8d8, #cce7eb);
}

h1{
    margin-bottom: 10px;
    color: grey;
}

h1 a{
   text-decoration:none;
   color: grey;
}

form{
    margin: 6% auto;
    width: 450px;
    padding: 30px;
    box-shadow: 1px 1px 10px gray;
    text-align: center;
    border-radius: 10px;
    background-color: white;
}
img{
    width: 130px;
    height: 80px;
}

p{
    margin-top: 15px;
    font-size: 20px;
    font-weight: 600;
}

div{
    text-align: left;
    margin-top: 30px;
    margin-left: 40px;
    
}

input{
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    width: 250px;
    background-color: transparent;
    padding-left: 10px;
}

#Login
{
    margin-top: 20px;
    background-color: #1e95a6;
    color: white;
    padding: 5px 10px 5px 10px;
    font-size: 17px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button{
    margin: 10px 30px;
    width: 250px;
    background-color: #1e95a6;
    padding: 5px 10px 5px 10px;
    border-radius: 5px;
    border: none;
    font-size: 17px;
}

button a{
   
    border: none;
    text-decoration: none;
    font-size: 17px;
    color: black;
    cursor: pointer;

}

</style>
</head>
<body>

    <form action="ConfirmationServlet" method="post">
        <h1><a href="Landing.jsp">Roomwala</a></h1>
        <img src="home.png" alt=""><br/>
        <p>Room Booking Form</p>
        <div>
        <input type="hidden" name="ownerEmail" value="<%= ownerEmail %>">
        <label for="customerName">Name:</label>
        <input type="text" id="customerName" name="customerName" required><br><br>
        <label for="customerEmail">Email:</label>
        <input type="email" id="customerEmail" name="customerEmail" required><br><br>
        <label for="customerPhone">Phone:</label>
        <input type="text" id="customerPhone" name="customerPhone" required><br><br>
        <button><a href="NewHome.jsp">Back</a></button>
        <button type="submit">Next</button>
    </div>
    </form>

</body>
</html>
