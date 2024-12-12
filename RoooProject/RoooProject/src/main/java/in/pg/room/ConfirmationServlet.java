package in.pg.room;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ConfirmationServlet")
public class ConfirmationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ownerEmail = request.getParameter("ownerEmail");
        String customerName = request.getParameter("customerName");
        String customerEmail = request.getParameter("customerEmail");
        String customerPhone = request.getParameter("customerPhone");

        request.setAttribute("ownerEmail", ownerEmail);
        request.setAttribute("customerName", customerName);
        request.setAttribute("customerEmail", customerEmail);
        request.setAttribute("customerPhone", customerPhone);
        
        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }
}
