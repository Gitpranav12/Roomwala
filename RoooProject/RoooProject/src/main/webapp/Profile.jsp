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
            background: linear-gradient(to bottom right, #f2d8d8, #cce7eb);
}

header{
    margin: 10px auto;
    width: 90%;
    height: 80vh;
    text-align: center;
    box-shadow: 1px 1px 10px black;
}

nav
{
    width:90%;
    margin: 10px auto;
    padding: 30px;
    background-color: rgb(242 84 91);
    text-align: justify;
    box-shadow: 1px 1px 10px grey;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    background: linear-gradient(to right, #f2545b, #d95272);
}

nav h4{
position: absolute;
right: 150px;
top: 60px;
}

nav h1{
    margin-left: 60px;
    font-size: 33px;
    color: aliceblue;
    }
    
nav h1 a
{
  text-decoration: none;
      color: aliceblue;
}

nav h4 a{
        text-decoration: none;
        font-size: 23px;
        color: aliceblue;
        }

        #profile
        {
            width: 600px;
            margin: 10px auto;
            padding: 20px;
            padding-top: 50px;
        }

        #profile img{
            width: 150px;
            height: 150px;
            border: 5px solid white;
            box-shadow: 1px 1px 10px gray;
            border-radius: 50%;
        }

        #register{
            margin: 20px auto;
            
        }

        #register h4{
            font-size: 30px;
        }

        #register a{
        position:relative;
            top: 50px;
            padding: 15px;
            color: white;
            background-color: #1e95a6;
            font-size: 20px;
            border: none;
            outline: none;
            border-radius: 20px;
            text-decoration:none;
        }
        
              a:hover
        {
            color:green;
        }
</style>
</head>
<body>

    <nav>
        <h1><a href="LandingTwo.jsp">Roomwala</a></h1>
        <h4><a href="NewHome.jsp">Find Room</a></h4>
    </nav>
<header>
    <div id="profile">
        <img src="user1.png" alt="">
        
        <% 
        String name = (String)session.getAttribute("myname");
        String email = (String)session.getAttribute("myemail");
        String gender = (String)session.getAttribute("mygender");
        String address = (String)session.getAttribute("myaddress");
        String phone = (String)session.getAttribute("myphone");
        String work = (String)session.getAttribute("mywork");
    %>
    <h1>Welcome, <%=name %></h1>
    <p><%= email %></p>
    <p><%= phone %></p>  
    <p><%=address %></p>  
    <p><%=gender %></p> 
    <p><%=work %></p>     
    </div>
<hr>
   
</div>
   <div id="register">
    <h4><a href="logout">Logout</a></h4>
    </div>
</header>
</body>
</html>