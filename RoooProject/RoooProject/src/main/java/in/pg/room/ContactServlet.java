package in.pg.room;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet
{
	 
	
	protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		PrintWriter out = resp.getWriter();
		
		String myemail = req.getParameter("email");
		String myname = req.getParameter("name");
		String myfeedback = req.getParameter("feedback");
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Roomwala", "root", "admin@123");
			
			PreparedStatement ps = con.prepareStatement("insert into feedback(email,name,feedback) values(?,?,?)");
			
			ps.setString(1, myemail);
			ps.setString(2, myname);
			ps.setString(3, myfeedback);
			
			
			
			int count = ps.executeUpdate();
			if(count > 0)
				
			{
				
				resp.setContentType("text/html");
				out.print("<h3 style='color:green'>Your Feedback successfully Send</h3>");
				
				req.setAttribute("myname", "myname");
				
				RequestDispatcher rd = req.getRequestDispatcher("/OwnerContact.jsp");
				rd.include(req, resp);
			}
			else
			{
				resp.setContentType("text/html");
				out.print("<h3 style='color:green'>Your Feedback not successfully Send because some error</h3>");
				
				RequestDispatcher rd = req.getRequestDispatcher("/Contact.jsp");
				rd.include(req, resp);
			}
		}
		catch(Exception e)
		{
			e.fillInStackTrace();
			resp.setContentType("text/html");
			out.print("<h3 style='color:red'>Exception occured : "+e.getMessage()+"</h3>");
			
			RequestDispatcher rd = req.getRequestDispatcher("/Contact.jsp");
			rd.include(req, resp);
		}
		
	}
	
}
