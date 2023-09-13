package Booking.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

@WebServlet("/UserSignUpForm")
public class UserSignUpForm extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		
		
		String UserName = req.getParameter("userName");
		String UserEmail = req.getParameter("userEmail");
		String UserPass = req.getParameter("userPass1");
		String UserCuntry = req.getParameter("userCountry");
		
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?)");
			
	        int randomPart = new Random().nextInt(10000);
	        int Gen_ID = 10000 + randomPart;
			
	        ps.setInt(1,Gen_ID);
			ps.setString(2, UserName);
			ps.setString(3, UserEmail);
			ps.setString(4, UserCuntry);
			ps.setString(5, UserPass);
			
			int count=ps.executeUpdate();
			if(count>0)
			{
				resp.setContentType("text/html");
				out.print("<script>alert('You Are Registered Successfully');</script>");
//				out.print("<h3 style='color:green'>You Have Sign-Up Successfully</h3>");
				RequestDispatcher rd=req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);

			}
			else
			{
				resp.setContentType("text/html");
				out.print("<script>alert('Dueto some error : You registration Failed');</script>");
				RequestDispatcher rd=req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			resp.setContentType("text/html");
			out.print("<script>alert('Exception Occured : '"+e+");</script>");
			RequestDispatcher rd=req.getRequestDispatcher("/result.jsp");
			rd.include(req, resp);
		}
		
	}
	
}