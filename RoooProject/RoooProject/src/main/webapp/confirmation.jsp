<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
String ownerEmail = (String) request.getAttribute("ownerEmail");
String customerName = (String) request.getAttribute("customerName");
String customerEmail = (String) request.getAttribute("customerEmail");
String customerPhone = (String) request.getAttribute("customerPhone");
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

div{
    text-align: left;
    margin-top: 30px;
    margin-left: 60px;
}


button{
    width: 250px;
    background-color: #1e95a6;
    padding: 5px 10px 5px 10px;
    border-radius: 5px;
    border: none;
    font-size: 20px;
}


p{
    margin-top: 15px;
    font-size: 16px;
}

h1{
    margin-bottom: 10px;
    color: grey;
}

h1 a{
   text-decoration:none;
   color: grey;
}

h2{
    margin: 10px;
    margin-top: 20px;
}

#qr
{
width: 150px;
height: 150px;
}

</style>
</head>
<body>
    <form action="SubmitBookingServlet" method="post">
        <h1><a href="Landing.jsp">Roomwala</a></h1>
        <img src="home.png" alt=""><br/>
        <h2>Payment Details</h2>
        <p>Scan the QR code below</p>
        <img src="qr.avif" alt="QR Code" id="qr">
        <p>or use the UPI ID to make the payment.</p>
        <h3>UPI ID: example@upi</h3>
        <div>
        <input type="hidden" name="ownerEmail" value="<%= ownerEmail %>">
        <input type="hidden" name="customerName" value="<%= customerName %>">
        <input type="hidden" name="customerEmail" value="<%= customerEmail %>">
        <input type="hidden" name="customerPhone" maxlength="10" value="<%= customerPhone %>" >
        <button type="submit">Submit</button>
    </div>
    </form>
</body>
</html>
