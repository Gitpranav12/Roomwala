<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap" rel="stylesheet">
    <title>Contact Us - Roomwala</title>
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
    height: 98vh;
    background: linear-gradient(to bottom right, #f2d8d8, #cce7eb);
}

        header 
        {
            width: 90%;
            height: 150px;
            margin: 20px auto;
            text-align: center;
            box-shadow: 1px 1px 10px black;
            border-bottom-right-radius:10px;
            border-bottom-left-radius:10px;
            padding: 20px;
            background-color: rgb(242 84 91);
            background: linear-gradient(to right, #f2545b, #d95272);
        }

        header h1{
            margin: 30px;
            color: black;
        }

        nav{
            width: 100%;
            padding: 20px;
            text-align: right;
        }
        
header h2 a{
 color: whitesmoke;
 text-decoration: none;
 cursor:pointer;
}

nav a{
            margin: 20px;
            text-decoration: none;
            color: white;
            font-size: 20px;
        }
        
header h2
        {
         position: absolute;
            margin: 10px;
            font-size: 30px;
        }
      
table{
    margin: 0 auto;
    padding: 0;
    width: 100%;
    text-align: center;
}
table tr th{
    margin: 0 auto;
    text-align: centre;
    width: 25%;
    padding: 18px;
    vertical-align: top;
    color: black;
    font-size: 20px;
     box-shadow: 1px 1px 15px gray;
}

table tr td{
    margin: 0 auto;
    text-align: centre;
    width: 25%;
    padding: 18px;
    vertical-align: top;
    color: black;
     box-shadow: 1px 1px 15px gray;
}

#back
{
    position: relative;
    text-decoration: none;
    color: aliceblue;
    font-size: 23px;
    top: -20px;
    left: 600px;
    font-weight: 600;
}

section
{
    width: 90%;
    margin: 20px auto;
    box-shadow: 1px 1px 15px gray;
    padding: 30px;
    background-color: white;
}
    </style>
</head>
<body>
    <header>
   <h2><a href="Landing.jsp">Roomwala</a></h2> 
   
        <h1>Room Booking Data</h1>
        <a href="OwnerProfile.jsp" id="back">Back to Profile</a>
    </header>
    <section>
        <table>
            <tr>
                <th>Owner Email</th>
                <th>Customer Name</th>
                <th>Customer Email</th>
                <th>Customer Phone</th>
            </tr>
            <%
                ResultSet bookingData = (ResultSet) session.getAttribute("bookingData");
                if (bookingData != null) {
                    while (bookingData.next()) {
            %>
            <tr>
                <td><%= bookingData.getString("ownerEmail") %></td>
                <td><%= bookingData.getString("customerName") %></td>
                <td><%= bookingData.getString("customerEmail") %></td>
                <td><%= bookingData.getString("customerPhone") %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5">No booking data found.</td>
            </tr>
            <%
                }
            %>
        </section>
</body>
</html>



