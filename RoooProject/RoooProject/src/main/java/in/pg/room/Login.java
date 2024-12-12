package in.pg.room;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginForm")
public class Login extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		String myemail=req.getParameter("email1");
		String mypass=req.getParameter("pass1");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomwala", "root", "admin@123");
			
			PreparedStatement ps = con.prepareStatement("select * from customer where email=? and password=?");
		
			ps.setString(1, myemail);
			ps.setString(2, mypass);
			
			ResultSet rs= ps.executeQuery();
			if(rs.next())
			{
				
				HttpSession session=req.getSession();
				
				session.setAttribute("myemail", rs.getString("email"));
				session.setAttribute("myname", rs.getString("name"));
				session.setAttribute("myaddress", rs.getString("address"));
				session.setAttribute("myphone", rs.getString("phone_no"));
				session.setAttribute("mywork", rs.getString("work"));
				session.setAttribute("mygender", rs.getString("gender"));
				
				RequestDispatcher rd = req.getRequestDispatcher("/NewHome.jsp");
				rd.include(req, resp);
			}
			else
			{
				out.print("<h3 style='color:red'>Email id and password didn't matched</h3>");
				
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, resp);
			}
		}
		catch(Exception e)
		{
			e.fillInStackTrace();
			
			out.print("<h3 style='color:red'> "+e.getMessage()+"</h3>");
			
			RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
			rd.include(req, resp);
		}
	}

}
