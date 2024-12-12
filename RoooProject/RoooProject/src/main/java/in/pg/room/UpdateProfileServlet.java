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

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String area = request.getParameter("area");
        String roomtype = request.getParameter("roomtype");
        String roomrent = request.getParameter("roomrent");
        String roomstatus = request.getParameter("roomstatus");

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomwala", "root", "admin@123");

            String sql = "UPDATE owner SET ownerName=?, ownerPhone_no=?, ownerCity=?, area=?, roomtype=?, roomrent=?, roomstatus=? WHERE ownerEmail=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, city);
            ps.setString(4, area);
            ps.setString(5, roomtype);
            ps.setString(6, roomrent);
            ps.setString(7, roomstatus);
            ps.setString(8, email);

            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("An existing user was updated successfully!");
            }

            response.sendRedirect("OwnerProfile.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
