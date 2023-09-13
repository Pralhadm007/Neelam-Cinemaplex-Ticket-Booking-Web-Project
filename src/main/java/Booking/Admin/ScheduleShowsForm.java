
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


@WebServlet("/SchShowsForm")
public class ScheduleShowsForm extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		int M_ID = Integer.parseInt(req.getParameter("M_ID")); 
		int Screen_NO = Integer.parseInt(req.getParameter("Screen_NO"));
		int Slot_NO = Integer.parseInt(req.getParameter("Slot_NO"));
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement ps = con.prepareStatement("insert into shows values(?,?,?,?,?)");
			
			int ID = new Random().nextInt(1000);
			ID++;
			
			ps.setInt(1, ID);
			ps.setInt(2, M_ID);
			ps.setInt(3, Screen_NO);
			ps.setInt(4, Slot_NO);
			ps.setInt(5, 0);
			
			int i = ps.executeUpdate();
			con.close();
			if(i>0)
			{
				out.print("<script>alert('Show Shedulled Successfully')</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/Admin.jsp");
				rd.include(req, resp);
			}
			else
			{
				RequestDispatcher rd = req.getRequestDispatcher("/Admin.jsp");
				out.print("<script>alert('Failed to Shedule Show')</script>");
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
