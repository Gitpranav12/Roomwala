package in.pg.room;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/RoomDataServlet")
public class RoomDataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String ownerEmail = request.getParameter("email");

        // Database connection parameters
        String jdbcURL = "jdbc:mysql://localhost:3306/roomwala";
        String dbUser = "root";
        String dbPassword = "admin@123";

        try {
            // Connect to the database
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Query to get booking data for the owner
            String sql = "SELECT * FROM booking WHERE ownerEmail = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, ownerEmail);
            ResultSet resultSet = statement.executeQuery();

            // Save the booking data in the session
            session.setAttribute("bookingData", resultSet);

            // Forward the request to RoomData.jsp
            request.getRequestDispatcher("RoomData.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
