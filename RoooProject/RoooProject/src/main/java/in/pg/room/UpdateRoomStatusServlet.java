package in.pg.room;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.*;

@WebServlet(name="UpdateRoomStatusServlet", urlPatterns="/UpdateRoomStatusServlet")
public class UpdateRoomStatusServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
    	PrintWriter out=response.getWriter();

        // JDBC driver name and database URL
        String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
        String DB_URL = "jdbc:mysql://localhost:3306/roomwala";

        // Database credentials
        String USER = "root";
        String PASS = "admin@123";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Register JDBC driver
            Class.forName(JDBC_DRIVER);

            int count=-1;
            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Get owner email from the request
            String email = request.getParameter("email");

            // Execute SQL query to update room status for the specific owner
            String updateQuery = "UPDATE owner SET roomstatus = CASE WHEN roomstatus = 'Available' THEN 'Not Available' ELSE 'Available' END WHERE ownerEmail = ?";
            pstmt = conn.prepareStatement(updateQuery);
            pstmt.setString(1, email);
            count=pstmt.executeUpdate();
            if(count>0)
            {
            	out.println("<h1>DATA UPDATED SUCCESSFULLY</h1>");
            }
            else
            {
            	out.println("<h1>DATA NOT UPDATED SUCCESSFULLY</h1>");
            }
            

            // Clean-up environment
            pstmt.close();
            conn.close();
        } catch (SQLException se) {
            // Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            // Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (pstmt != null) pstmt.close();
            } catch (SQLException se2) {
            } // nothing we can do
            try {
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }

        // Redirect back to the profile page
        response.sendRedirect("OwnerProfile.jsp?email=" + request.getParameter("ownerEmail"));
    }
}
