<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

#Form1{
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

div{
    text-align: left;
    margin-top: 30px;
    margin-left: 60px;
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

#button{
    display: block;
    margin: 20px;
    width: 250px;
    background-color: #1e95a6;
    padding: 5px 10px 5px 10px;
    border-radius: 5px;
    border: none;
}

#button a{
    border: none;
    text-decoration: none;
    font-size: 17px;
    color: white;
    cursor: pointer;
}

p{
    margin-top: 15px;
    font-size: 20px;
    font-weight: 600;
}

h1{
    margin-bottom: 10px;
    color: grey;
}

h1 a
{
   text-decoration: none;
    color: grey;
}

</style>
</head>
<body>
<form action="loginForm" method="post" id="Form1">
    <h1><a href="Landing.jsp">Roomwala</a></h1>
        <img src="home.png" alt=""><br/>
        <p>Register/Login Panel</p>
    <div>
        <button id="button"><a href="OwnerLogin.jsp">Register/Login for Owner </a></button>
        <button id="button"><a href="login.jsp">Register/Login for Customer</a></button>
    </div>

</form>
</body>
</html>