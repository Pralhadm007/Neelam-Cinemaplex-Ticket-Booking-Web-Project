package Booking.Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DelMovieForm")
public class DelMovieForm extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		int M_ID = Integer.parseInt(req.getParameter("M_ID")); 
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement ps = con.prepareStatement("delete from movie where id = ?");
			ps.setInt(1, M_ID);
			int i = ps.executeUpdate();
			if(i>0)
			{
				out.print("<script>alert('Successfully Deleted')</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/Admin.jsp");
				rd.include(req, resp);
			}
			else
			{
				out.print("<script>alert('Failed to Delete')</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/Admin.jsp");
				rd.include(req, resp);
			}
		}
		catch(Exception e)
		{
			out.print("<script>alert('Exception Occured : '"+e+")</script>");
			RequestDispatcher rd = req.getRequestDispatcher("/Admin.jsp");
			rd.include(req, resp);
		}
		
	}
}
