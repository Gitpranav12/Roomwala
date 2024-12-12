package in.pg.room;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SubmitBookingServlet")
public class SubmitBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ownerEmail = request.getParameter("ownerEmail");
        String customerName = request.getParameter("customerName");
        String customerEmail = request.getParameter("customerEmail");
        String customerPhone = request.getParameter("customerPhone");

        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "roomwala";
        String userId = "root";
        String password = "admin@123";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Class.forName(driverName);
            connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);

            String insertBookingSQL = "INSERT INTO booking (ownerEmail, customerName, customerEmail, customerPhone) VALUES (?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(insertBookingSQL);
            preparedStatement.setString(1, ownerEmail);
            preparedStatement.setString(2, customerName);
            preparedStatement.setString(3, customerEmail);
            preparedStatement.setString(4, customerPhone);

            preparedStatement.executeUpdate();

            response.sendRedirect("confirmationSuccess.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
