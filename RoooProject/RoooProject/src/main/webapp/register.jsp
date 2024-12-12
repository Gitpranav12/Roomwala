<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    margin-left: 40px;
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

h1{
margin:10px auto;
    margin-bottom: 10px;
    color: grey;
}

h1 a{
    color: grey;
    background-color: white;
    font-size: 32px;
    margin-left: 0px;
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

      a:hover
        {
            color: orange;
        }
</style>
</head>
<body>
    <form action="regForm" method="post" id="Form">
        <h1><a href="Landing.jsp">Roomwala</a></h1>
        <img src="home.png" alt=""><br/>
        <p>Customer Registration Panel</p>
        <div>
            Name : <input type="text" name="name1" required="required"/><br/><br/>
            Gender : <input type="radio" name="gender1" value="male" class="gender"/>&nbsp; Male<input type="radio" class="gender" name="gender1" value="Female"/>&nbsp;Female<br/><br/>
            Phone No : <input type="number" name="phone1" required="required" maxlength="10" id="phoneNumber"/><br/><br/>
            Email : <input type="email" name="email1" required="required"><br/><br/>
            Address : <input type="text" name="address1" required="required"><br/><br/>
            Work : <select name="work1" required="required">
                    <option>Student</option>
                    <option>Teacher</option>
                    <option>Job</option>
                    <option>Doctor</option>
                    <option>Other</option>
            </select><br/><br/>
            Password : <input type="password" name="pass1" required="required"/><br/><br/>
            <input type="submit" value="Register" id="Register" >
            <a href="login.jsp"> Login</a>
        </div>
        
        </form>
         <script type="text/javascript">
        function validatePhoneNumber() {
            var phoneNumber = document.getElementById("phoneNumber").value;
            var regex = /^\d{10}$/;
            
            if (regex.test(phoneNumber)) {
                alert("The phone number is valid.");
                return true;
            } else {
                alert("The phone number is invalid. It must contain exactly 10 digits.");
                return false;
            }
        }
    </script>
</body>
</html>