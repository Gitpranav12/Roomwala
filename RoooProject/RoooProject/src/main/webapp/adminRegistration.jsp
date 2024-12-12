<!DOCTYPE html>
<html>
<head>
    <title>Admin Home Page</title>
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
    text-align: center;
    height: 90vh;
   background: linear-gradient(to bottom right, #f2d8d8, #cce7eb);
}

#Form{
    margin: 5% auto;
    width:50%;
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
    margin-left: 200px;
    width: 100px;
    cursor: pointer;
}

a{
    margin-left: 50px;
    background-color: #1e95a6;
    color: white;
    padding: 5px 10px 5px 10px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
   text-decoration: none;
   cursor: pointer;
}

p{
    margin-top: 15px;
    font-size: 20px;
    font-weight: 600;
}

h1 a{
    margin: 10px;
    color: grey;
    background-color: white;
    font-size: 30px;
}

.gender
{
    margin-left: 10px;
    width: 10px;
}

h3{
position:absolute;
left:525px;
    top:50px;
}

.imm
{
    width: 140px;
}
</style>
</head>
<body>
    <form action="adminRegForm" method="post" id="Form" enctype="multipart/form-data">
        <h1><a href="Landing.jsp">Roomwala</a></h1>
        <img src="home.png" alt=""><br/>
        <p>Owner Registration Panel</p>
        <div>
            Name : <input type="text" name="name1" required="required"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Phone No : <input type="number" name="phone1" required="required" maxlength="10"/> <br><br>
            Email : <input type="email" name="email1" required="required">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            City Name: <input type="text" name="city1" required="required"><br><br>
            Area : <input type="text" name="Area" required="required">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Room Rent : <input type="text" name="Roomrent" required="required">
            <br><br>
            Room Type : <select name="Roomtype" required="required">
                <option>Single Room</option>
                <option>1BHK</option>
                <option>2BHK</option>
                <option>3BHK</option>
                <option>House</option>
            </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Room Status : <select name="Roomstatus" required="required">
                <option>Available</option>
                <option>Not Available</option>
            </select>
            <br><br>
            Password : <input type="password" name="pass1" required="required"/><br><br>
            Upload Images: <input type="file" name="image1" accept="image/*" class="imm">
            <input type="file" name="image2" accept="image/*" class="imm">
            <input type="file" name="image3" accept="image/*" class="imm">
            <input type="file" name="image4" accept="image/*" class="imm">
   <br><br><br><br>
            <input type="submit" value="Register" id="Register">
            <a href="OwnerLogin.jsp"> Login</a>
        </div>
    </form>
</body>
</html>
