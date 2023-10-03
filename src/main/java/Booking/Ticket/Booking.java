package Booking.Ticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import Booking.Connection.MovieDetail;

@WebServlet ("/TicketBooking")
public class Booking extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
        
        	String Title = req.getParameter("bkMovieTitle");
        	int Slot = Integer.parseInt(req.getParameter("bkMovieSlot"));
        	int Screen =  Integer.parseInt(req.getParameter("bkMovieScreen"));
        	String tkCategory = req.getParameter("TicketCht");
        	int No = Integer.parseInt(req.getParameter("bkMovieTkNo"));
        	int Mid =0;
        	
		try 
		{
			 
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement psMid = con.prepareStatement("select id from movie where title = ?");
			psMid.setString(1, Title);
			ResultSet rs = psMid.executeQuery();
			while(rs.next())
			{
			Mid = rs.getInt(1);	
			}
			
			PreparedStatement ps = con.prepareStatement("update shows set booked = booked + ? where MId = ? and screen = ? and slot = ?");
			
			 ps.setInt(1, No); 
			 ps.setInt(2, Mid);
			 ps.setInt(3, Screen);
			 ps.setInt(4, Slot);
			
			
			int i = ps.executeUpdate();
			String Timing = null;
			if(i>0)
			{	
				
				if(Slot==1)
				{
					Timing = "11 AM - 2 PM";
				}
				else if(Slot==2)
				{
					Timing = "2 PM - 5 PM";
				}
				else if(Slot==3)
				{
					Timing = "5 PM - 8 PM";
				}
				else 
				{
					Timing = "8 PM - 11 PM";
				}
				MovieDetail BookedShow = new MovieDetail(Mid, Title, tkCategory, Timing, 0, Screen, Slot, No);
				
				req.setAttribute("BookedShow", BookedShow);
				
				out.print("<script> alert('Ticket Booked successfully')</script>");
				RequestDispatcher rd=req.getRequestDispatcher("/Result.jsp");
				rd.include(req, resp);
			}
			else
			{
				out.print("<script> alert('Failed to Book Ticket')</script>");
				RequestDispatcher rd=req.getRequestDispatcher("/Result.jsp");
				rd.include(req, resp);
			}
			
		}
		catch(Exception e)
		{
			out.print("<script> alert('Exception Occured: '"+e+"')</script>");
			RequestDispatcher rd=req.getRequestDispatcher("/Result.jsp");
			rd.include(req, resp);
		}
	
	}
}
