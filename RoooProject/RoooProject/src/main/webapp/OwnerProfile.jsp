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
    height: 87vh;
    text-align: center;
    box-shadow: 1px 1px 10px grey;
      background-color: rgb(232, 235, 237);
}

nav
{
    width:90%;
    height: 15vh;
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
         cursor: pointer;
}

nav h4 a{
position:relative;
        text-decoration: none;
        font-size: 23px;
        color: black;
        top:20px;
         cursor: pointer;
        }

        #profile
        {
            width: 600px;
            margin: 10px auto;
            padding: 20px;
            padding-top: 50px;
            height: 55vh;
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

        #register h5{
            font-size: 30px;
        }

        #register a{
        position:relative;
           top:15px;
            padding: 10px;
            color: black;
            background-color: #1e95a6;
            font-size: 20px;
            border: none;
            outline: none;
            border-radius: 15px;
            text-decoration:none;
             cursor: pointer;
        }


        #status
        {
            background-color: #1e95a6;
            padding: 10px;
            color: black;
            border-radius: 10px;
            border: none;
            outline: none;
            font-size: 20px;
            margin-top: 20px;
            cursor: pointer;
            font-weight: 600;
        }
        
        hr
        {
        margin:20px;
        }

        #roomData
        {
            position: absolute;
            top: 80px;
            right: 300px;
            font-size: 23px;
            color: black;
            background-color: transparent;
            border: none;
            outline: none;
            font-weight: 600;
        }

        nav h4 a:hover
        {
            color: green;
             cursor: pointer;
        }
        
        #roomData:hover
        {
            color: green;
             cursor: pointer;
        }
        
        h1 a:hover
        {
            color: green;
             cursor: pointer;
        }

        #updateProfileButton
        {
            padding: 10px;
            position: relative;
            top: -280px;
            font-size: 20px;
            background-color: #1e95a6;
            border-radius: 10px;
            font-weight: 600;
            border: none;
            outline: none;
             cursor: pointer;
        }
</style>
</head>
<body>

    <nav>
        <h1><a href="OwnerLanding.jsp">Roomwala</a></h1>

         <h4><a href="OwnerHome.jsp">Find Room</a></h4>
    </nav>
<header>
    <div id="profile">
        <img src="user1.png" alt="">
        
        <% 
        String name = (String)session.getAttribute("myname");
        String email = (String)session.getAttribute("myemail");
        String city = (String)session.getAttribute("mycity");
        String roomtype = (String)session.getAttribute("myroomtype");
        String phone = (String)session.getAttribute("myphone");
        String roomstatus = (String)session.getAttribute("myroomstatus");
        String area = (String)session.getAttribute("myarea");
        String roomrent = (String)session.getAttribute("myroomrent");
    %>
    <h1>Welcome, <%=name %></h1>
    <p><%= email %></p>
    <p><%= phone %></p>  
    <p><%=city %></p>  
    <p><%=roomtype %></p> 
     <p><%=roomrent %></p> 
      <p><%=roomstatus %></p>  
      <p><%=area %></p>       
    </div>
<hr>
<div id="register">
<h1>About Your Rooms</h1>
<form action="UpdateRoomStatusServlet" method="post">
        <!-- Hidden field to pass owner email -->
        <input type="hidden" name="email" value="<%=email%>">
        <input type="submit" name="updateStatus" value="Update Room Status" id="status">
        <hr>
        <h3><a href="logout">Logout</a></h3>
        
    </form> 

</div>
    <div id="updateProfile">
        <form action="UpdateProfile.jsp" method="get">
            <input type="submit" name="updateProfile" value="Update Profile" id="updateProfileButton">
        </form>
    </div>
       <form action="RoomDataServlet" method="post">
    <input type="hidden" name="email" value="<%=email%>">
    <input type="submit" name="roomData" value="View Room Data" id="roomData">
</form>
</header>


</body>

    <script>
        // JavaScript code to handle the button click event
        document.getElementById('status').addEventListener('click', function() {
            alert('Status Updated');
        });
    </script>
</html>