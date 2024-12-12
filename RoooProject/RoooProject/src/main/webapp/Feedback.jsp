<%@ page import="java.sql.*,java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewHome</title>
<link rel="stylesheet" type="text/css" href="style.css">
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
    width: 90%;
    text-align: center;
}
table tr th{
    margin: 0 auto;
    text-align: centre;
    width: 25%;
    padding: 18px;
    vertical-align: top;
    color: black;
    font-size: 25px;
     box-shadow: 1px 1px 15px gray;
}

table tr td{
    margin: 0 auto;
    text-align: centre;
    width: 25%;
    padding: 18px;
    vertical-align: top;
    font-size: 22px;
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
}
    </style>
</head>
<body>
<header>
    <h2><a href="AdminHome.jsp">Roomwala</a></h2>
    <h1>Feedback/Complaints</h1>
</header>
    <table>
        <tr>
            <th>Sr.No.</th>
            <th>Name</th>
            <th>Email</th>
            <th>Feedback/Complaints</th>
        </tr>
        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            String url = "jdbc:mysql://localhost:3306/roomwala";
            String user = "root";  // change to your database user
            String password = "admin@123";  // change to your database password

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);
                stmt = conn.createStatement();
                String sql = "SELECT * FROM feedback";
                rs = stmt.executeQuery(sql);

                while(rs.next()) {
                    int id = rs.getInt("sr");
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String comments = rs.getString("feedback");
        %>
        <tr>
            <td style="width: 200px;"><%= id %></td>
            <td><%= name %></td>
            <td><%= email %></td>
            <td><%= comments %></td>
        </tr>
        <%
                }
            } catch(Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if(rs != null) rs.close();
                    if(stmt != null) stmt.close();
                    if(conn != null) conn.close();
                } catch(SQLException se) {
                    se.printStackTrace();
                }
            }
        %>
    </table>
</body>
</html>
