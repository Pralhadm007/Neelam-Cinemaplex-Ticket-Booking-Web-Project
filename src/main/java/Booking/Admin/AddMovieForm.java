package Booking.Admin;

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

@WebServlet("/AddMovieForm")
public class AddMovieForm extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		int randomPart = new Random().nextInt(10000);
        int Gen_ID = 10000 + randomPart;
        
        	String Title = req.getParameter("MovieName");
        	String genere = req.getParameter("MovieGenere");
        	int duration =  Integer.parseInt(req.getParameter("MovieTime"));
        	String Director = req.getParameter("DirecterName");
		
		try 
		{
			 
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement ps = con.prepareStatement("insert into movie values(?,?,?,?,?)");
			ps.setInt(1, Gen_ID);
			ps.setString(2, Title);
			ps.setString(3, genere);
			ps.setInt(4, duration);
			ps.setString(5, Director);
			
			int i = ps.executeUpdate();
			if(i>0)
			{
				out.print("<script> alert('You have added detail successfully')</script>");
				RequestDispatcher rd=req.getRequestDispatcher("/Admin.jsp");
				rd.include(req, resp);
			}
			else
			{
				out.print("<script> alert('Failed to Add Detail')</script>");
				RequestDispatcher rd=req.getRequestDispatcher("/Admin.jsp");
				rd.include(req, resp);
			}
			
		}
		catch(Exception e)
		{
			out.print("<script> alert('Exception Occured: '"+e+"')</script>");
			RequestDispatcher rd=req.getRequestDispatcher("/Admin.jsp");
			rd.include(req, resp);
		}
	}
}