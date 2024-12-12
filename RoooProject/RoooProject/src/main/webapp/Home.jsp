<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Owner Listings</title>
<link rel="stylesheet" type="text/css" href="style.css">
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
            background: linear-gradient(to bottom right, #f2d8d8, #cce7eb);
}

nav{
    width: 90%;
    margin: 10px auto;
    padding: 20px;
    box-shadow: 1px 1px 10px gray;
    background-color: rgb(242 84 91);
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    background: linear-gradient(to right, #f2545b, #d95272);
    
}

nav h1{
    display: inline-block;
    margin:20px;
    margin-left: 80px;
color: whitesmoke;
font-size: 33px;
}

nav h1 a
{
color: whitesmoke;
text-decoration: none;
}

#find
{
    display: inline-block;
    position: relative;
    top: 20px;
    color: white;
    font-weight: 600;
}

#userprofile
{
    display: inline-block;
    position: relative;
    left: 220px;
    top: 20px;
    text-align: center;
    font-size: 23px;
}

#userprofile a
{
    text-decoration: none;
    color: black;
}

#userprofile img{
    width: 30px;
    height: 30px;
    border-radius: 50%;
    box-shadow: 1px 1px 10px black;
}

#find h1
{
    width: 400px;
    margin-left: 290px;
    padding: 10px;
    border: none;
    outline: none;
    color: #000;
}

#find button
{
    margin-left: 20px;
    padding: 10px;
    font-size: 20px;
    background-color: #1e95a6;
    border: none;
    outline: none;
    border-radius: 5px;
    color: #fff;
}

header
{
    width: 90%;
    margin: 10px auto;
    padding: 20px;
    padding-top:100px;
    box-shadow: 1px 1px 10px gray;
    text-align: center;
    background-color: rgb(232, 235, 237);
}


#data
{
    padding: 20px;
    width: 45%;
    height: 500px;
    margin: 20px;
    margin-top:-60px;
    text-align: left;
    display: inline-block;
      box-shadow: 1px 1px 10px gray;
      background-color: #fff;
}

form{
    position: relative;
    top: -200px;
}


#data img
{
    text-align: center;
margin: 0;
padding: 0;
width: 300px;
height: 300px;
}

#data button
{
    position: relative;
    background-color: #1e95a6;
    color: #fff;
    padding: 10px;
    border-radius: 10px;
    font-size: 18px;
    top: 60px;
    left: 360px;
    width: 250px;
    border: none;
            outline: none;
            cursor: pointer;
}

     form #Booking
        {
            background-color: orange;
        }
</style>
</head>

<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "roomwala";
String userId = "root";
String password = "admin@123";

try {
    Class.forName(driverName);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<nav>
    <h1><a href="Landing.jsp">Roomwala</a></h1>
    <section id="find">
        <h1>Find the Best Room </h1>
    </section>
</nav>
<header>
<%
try { 
    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
    statement = connection.createStatement();
    String sql = "SELECT * FROM owner where roomstatus='Available'";
    resultSet = statement.executeQuery(sql);

    while (resultSet.next()) {
%>
<div id="data">
    <!--
  
                    <img  alt="Image 3" src="<%= resultSet.getString("image3") %>">
                    <img  alt="Image 4" src="<%= resultSet.getString("image4") %>">
    -->
    <img alt="Image 1" src="<%= resultSet.getString("image1") %>" >
                    <img  alt="Image 2" src="<%= resultSet.getString("image2") %>">
                 
                <h2>Name : <%= resultSet.getString("ownerName") %></h2>
                <p>City : <%= resultSet.getString("ownerCity") %> <br>
                   Phone No : <%= resultSet.getString("ownerPhone_no") %><br>
                   Email: <%= resultSet.getString("ownerEmail") %> <br>
                   Room Type : <%= resultSet.getString("roomtype") %> <br>
                   Room Rent: <%= resultSet.getString("roomrent") %> <br>
                   Room Area: <%= resultSet.getString("area") %>
                </p>
                   <form action="login.jsp" method="post" style="display:inline;">
                    <Button><%= resultSet.getString("roomstatus") %></Button> <br><br>
                       <input type="hidden" name="ownerEmail" value="<%= resultSet.getString("ownerEmail") %>">
                       <button id="Booking" type="submit">Book Now</button>
                   </form>
               
</div>
<% 
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>

</header>
</body>
</html>
