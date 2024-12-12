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
import jakarta.servlet.http.HttpSession;

@WebServlet("/regForm")
public class Register extends HttpServlet
{
	 
	
	protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		PrintWriter out = resp.getWriter();
		
		String myname = req.getParameter("name1");
		String mygender = req.getParameter("gender1");
		String myphone = req.getParameter("phone1");
		String myemail = req.getParameter("email1");
		String myaddress= req.getParameter("address1");
		String mywork = req.getParameter("work1");
		String mypass = req.getParameter("pass1");
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Roomwala", "root", "admin@123");
			
			PreparedStatement ps = con.prepareStatement("insert into customer(name,gender,phone_no,email,address,work,password) values(?,?,?,?,?,?,?)");
			
			ps.setString(1, myname);
			ps.setString(2, mygender);
			ps.setString(3, myphone);
			ps.setString(4, myemail);
			ps.setString(5, myaddress);
			ps.setString(6, mywork);
			ps.setString(7, mypass);
			
			
			int count = ps.executeUpdate();
			if(count > 0)
				
			{
				
				resp.setContentType("text/html");
				out.print("<h3 style='color:green'>User registered successfully</h3>");
				
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			}
			else
			{
				resp.setContentType("text/html");
				out.print("<h3 style='color:green'>User not registered successfully because some error</h3>");
				
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			}
		}
		catch(Exception e)
		{
			e.fillInStackTrace();
			resp.setContentType("text/html");
			out.print("<h3 style='color:red'>Exception occured : "+e.getMessage()+"</h3>");
			
			RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
			rd.include(req, resp);
		}
		
	}
	
}
