<%@ page import="java.sql.*, java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<link rel="stylesheet" href="script.js">
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
        
        header
{
    width: 90%;
    margin: 10px auto;
    padding: 20px;
    box-shadow: 1px 1px 10px grey;
    text-align: center;
    background-color: rgb(242 84 91);
    background: linear-gradient(to right, #f2545b, #d95272);
}

header h2{
    position: relative;
    top:10px;
    right: 600px;
    color: white;
    font-size:32px;
}

header a
{
      position: absolute;
    top: 50px;
    right: 120px;
    font-size: 22px;
    text-decoration: none;
    color: black;
    font-weight: 600;
}

      a:hover
        {
            color: orange;
        }

#data
{
    width: 90%;
    margin: 10px auto;
    padding: 20px;
    padding-top: 80px;
    box-shadow: 1px 1px 10px grey;
    text-align: center;
    height: 80vh;
      background-color: rgb(232, 235, 237);
}

.info
{
    display: inline-block;
    width: 40%;
    margin: 20px;
    padding: 20px;
    box-shadow: 1px 1px 10px gray;
    text-align: center;
    background-color: #1e95a6;
}

.info a{
    text-decoration: none;
    color: black;
}

.info h3{
    margin: 20px;
}
    </style>
</head>
<body>
   <header>
        <h2>Roomwala</h2>
        <h1>Administrator Dashboard</h1>
        
        <a href="logout">Logout</a>
    </header>
    
    <%
        Connection conn = null;
        Statement stmt = null;
        
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomwala", "root", "admin@123");

            // Create a statement
            stmt = conn.createStatement();

            // Execute SQL query to retrieve data without any join condition (cross join)
            String sql = "SELECT (SELECT COUNT(customerid) FROM customer) AS total_customers, " +
                            "(SELECT COUNT(ownerid) FROM owner) AS total_owners, " +
                            "(SELECT COUNT(roomtype) FROM owner WHERE roomstatus='available') AS available_rooms, " +
                            "(SELECT COUNT(roomtype) FROM owner WHERE roomstatus='not available') AS unavailable_rooms";
            ResultSet rs = stmt.executeQuery(sql);

            // Process the result set
            if (rs.next()) {
                int totalCustomers = rs.getInt("total_customers");
                int totalOwners = rs.getInt("total_owners");
                int availableRooms = rs.getInt("available_rooms");
                int unavailableRooms = rs.getInt("unavailable_rooms");

    %>
    
    
        <div id="data">
        <div class="info">
        <h2>Total Customers</h2>
        <h3><%= totalCustomers %></h3>
        </div>

        <div class="info">
            <h2>Total Owners</h2>
            <h3><%= totalOwners %></h3>
        </div>

        <div class="info">
            <h2>Total Available Rooms</h2>
            <h3><%= availableRooms %></h3>
        </div>

        <div class="info">
            <h2>Total Not Available Rooms</h2>
            <h3><%= unavailableRooms %></h3>
        </div>

        <div class="info">
            <h2><a href="Feedback.jsp">See Feedbacks/Complaints</a></h2>
        </div>

    </div>
    
    <%
            }

            // Close resources
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
            } catch (SQLException se2) {
            }
            try {
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    %>
</body>
</html>
