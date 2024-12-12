package in.pg.room;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/BookNowServlet")
public class BookNowServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ownerEmail = request.getParameter("ownerEmail");
        request.setAttribute("ownerEmail", ownerEmail);
        request.getRequestDispatcher("bookingForm.jsp").forward(request, response);
    }
}