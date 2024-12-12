<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap" rel="stylesheet">
    <title>Landing Page</title>

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

header 
{
    width: 90%;
    height: 92vh;
    margin: 10px auto;
    text-align: center;
    box-shadow: 1px 1px 10px grey;
    border-bottom-right-radius:10px;
    border-bottom-left-radius:10px;
     background-color: rgb(232, 235, 237);
     border-radius: 10px;
}

header h1{
    display: inline-block;
    margin: 0px 50px;
    position: absolute;
    top: 30px;
    left: 100px;
    color:white;
}

#head
{
    margin: 0;
    padding: 20px;
     background: linear-gradient(to right, #f2545b, #d95272);
     border-top-left-radius: 10px;
     border-top-right-radius: 10px;
     background: linear-gradient(to right, #f2545b, #d95272);
}

#head section
{
    display: inline-block;
     visibility: hidden;
}

#head a
{
position: absolute;
top: 35px;
right: 130px;
color: white;
text-decoration: none;
font-size: 20px;
            padding: 10px 20px;
            background: rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            transition: background 0.3s;
}

    #head a:hover {
            background: rgba(0, 0, 0, 0.3);
        }

#head section input
{
    width: 500px;
    padding: 10px;
    padding-left: 20px;
    color: black;
    border: 2px solid black;
    outline: none;
    font-size: 20px;
    border-radius: 20px;
}

nav{
    width: 100%;
    padding: 20px;
    text-align: right;
    background-color: #444;
}

nav a{
    margin: 20px;
    text-decoration: none;
    color: white;
    font-size: 20px;
}

#features
{
    width: 100%;
    padding: 20px;
    text-align: center;
}

#features h1
{
   position: relative;
   display: block;
   left: 0px;
   font-weight: 600;
   font-size: 40px;
   color:black;
   padding-bottom:70px;
}

.feature
{
    margin:10px;
    display: inline-block;
    width: 350px;
    height:350px;
    padding:20px;
    padding-top: 150px;
  border-radius: 50%;
  background-color: #1e95a6;
}

       .feature:hover {
            transform: scale(1.1);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
        }

       a:hover
        {
            color: #f2545b;
        }
        
                footer {
            background: #444;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            font-size: 14px;
        }
        
    </style>
</head>
<body>
    <header>
        <div id="head">
            <h1>Roomwala</h1>
           <section><input type="text" placeholder="Search"></section>
            <a href="RegLog.jsp">Login/Register</a>
        </div>
        <nav>
                <a href="">Home</a>
                <a href="Home.jsp">Explore</a>
                <a href="adminLogin.jsp">Administrator</a>
        </nav>
    <div id="features">
        <h1>Welcome to Roomwala</h1>
        <div class="feature">
            <h2>Find Perfect Room</h2>
            <p>Search through a wide range of available rooms to find the one that suits your needs.</p>
        </div>
        <div class="feature">
            <h2>List Your Property</h2>
            <p>Are you a property owner? List your rooms for rent and start earning today.</p>
        </div>
        <div class="feature">
            <h2>Secure Transactions</h2>
            <p>Our platform ensures secure transactions between tenants and property owners.</p>
        </div>
    </div>
    </header>
        <footer>
        &copy; 2024 Roomwala. All Rights Reserved.
    </footer>
</body>
</html>