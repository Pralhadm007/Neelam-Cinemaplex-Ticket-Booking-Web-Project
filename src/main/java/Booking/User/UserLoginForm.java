package Booking.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.protocol.Resultset;

@WebServlet("/UserLoginForm")
public class UserLoginForm extends HttpServlet
{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		
		String UserName = req.getParameter("userName");
		String UserEmail = req.getParameter("userEmail");
		String UserPass = req.getParameter("userPass");
		
		HttpSession session = req.getSession();
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement pr=con.prepareStatement("select * from users where (name=? or email=?)and password=?");
			pr.setString(1, UserName);
			pr.setString(2, UserEmail);
			pr.setString(3, UserPass);
			
			ResultSet rs = pr.executeQuery();
			
			if(rs.next())
			{
				
				out.print("<script>alert('Successfully Logged In')</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/User.jsp");

				session.setAttribute("UserName", UserName);
				session.setAttribute("UserEmail", UserEmail);
				
				resp.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
				resp.setHeader("Pragma", "no-cache"); 
				resp.setHeader("Expires", "0"); 
				
				rd.include(req, resp);
			}
			else
			{
				out.print("<script>alert('Invalid ID and Password')</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			}
		}
		catch(Exception e)
		{
			out.print("<script>alert('Exception Occured:'"+e+")</script>");
			RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
			rd.include(req, resp);
		}
	}
}