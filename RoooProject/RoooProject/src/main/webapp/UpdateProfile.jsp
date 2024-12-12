<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
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
    
    body{
        text-align: center;
        height: 90vh;
    }
    
    #Form{
        margin: 5% auto;
        width: 500px;
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
    
    input{
        border-top: none;
        border-left: none;
        border-right: none;
        outline: none;
        width: 250px;
        background-color: transparent;
    }
    
    #Register
    {
        background-color: #1e95a6;
        color: white;
        padding: 5px 10px 5px 10px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        margin-left: 60px;
        width: 100px;
        cursor: pointer;
    }
    
    a{
        color: grey;
        padding: 5px 10px 5px 10px;
        font-size: 36px;
        border: none;
        border-radius: 5px;
       text-decoration: none;
       cursor: pointer;
    }
    
    p{
        margin-top: 15px;
        font-size: 16px;
        font-weight: 600;
    }
    
    h1{
        margin-bottom: 10px;
        color: grey;
    }
    
    h3{
    position:absolute;
    left:525px;
        top:50px;
    }

    #updateProfileButton
    {
    margin:20px;
        margin-left: 40px;
        padding: 5px;
        font-size: 20px;
        border-radius: 10px;
        border: none;
        outline: none;
        background-color: #1e95a6;
        color: aliceblue;
        font-weight: 600;
    }
    </style>
</head>
<body>
<header>
   
        <form action="UpdateProfileServlet" method="post" id="Form">
            <h1><a href="Landing.jsp">Roomwala</a></h1>
            <img src="home.png" alt=""><br/><br/>
            <h2>Update Profile</h2>
            <div id="profile">
            <input type="hidden" name="email" value="<%= session.getAttribute("myemail") %>">
            <p>Name: <input type="text" name="name" value="<%= session.getAttribute("myname") %>"></p>
            <p>Phone No: <input type="text" name="phone" value="<%= session.getAttribute("myphone") %>"></p>
            <p>City: <input type="text" name="city" value="<%= session.getAttribute("mycity") %>"></p>
            <p>Room Address: <input type="text" name="area" value="<%= session.getAttribute("myarea") %>"></p>
            <p>Room Type: <input type="text" name="roomtype" value="<%= session.getAttribute("myroomtype") %>"></p>
            <p>Room Rent: <input type="text" name="roomrent" value="<%= session.getAttribute("myroomrent") %>"></p>
            <p>Room Status: <input type="text" name="roomstatus" value="<%= session.getAttribute("myroomstatus") %>"></p>
            <input type="submit" value="Update Profile" id="updateProfileButton">
        </div>
        </form>
</header>
    <script>
        // JavaScript code to handle the button click event
        document.getElementById('updateProfileButton').addEventListener('click', function() {
            alert('Profile Updated');
        });
    </script>
</body>
</html>
