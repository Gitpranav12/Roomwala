
package in.pg.room;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String city = request.getParameter("city");

        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "roomwala";
        String userId = "root";
        String password = "admin@123";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName(driverName);
            connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
            statement = connection.createStatement();
            String sql = "SELECT * FROM owner WHERE ownerCity LIKE '%" + city + "%'";
            resultSet = statement.executeQuery(sql);

            request.setAttribute("resultSet", resultSet);
            RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

