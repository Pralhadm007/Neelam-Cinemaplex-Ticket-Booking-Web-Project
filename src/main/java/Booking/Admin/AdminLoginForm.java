package Booking.Admin;

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

@WebServlet("/AdminLoginForm")
public class AdminLoginForm extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		String AdminName = req.getParameter("adminName");
		String AdminEmail = req.getParameter("adminEmail");
		String AdminPass =	req.getParameter("adminPass");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement ps = con.prepareStatement("select * from admins where name=? and email=? and password=?");
			ps.setString(1, AdminName);
			ps.setString(2, AdminEmail);
			ps.setString(3, AdminPass);
			
			ResultSet rs =	ps.executeQuery();
			
			if(rs.next())
			{
				out.print("<script>alert('Welcome "+AdminName+"<br>You are Successfully Logged In')</script");
				RequestDispatcher rd = req.getRequestDispatcher("/Admin.jsp");
				HttpSession session = req.getSession();
				session.setAttribute("AdminName", AdminName);
				resp.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
				resp.setHeader("Pragma", "no-cache"); 
				resp.setHeader("Expires", "0"); 
				rd.include(req, resp);
			}
			else
			{
				out.print("<script>alert('Invalid ID , Email and Password')</script");
				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			}
		}
		catch(Exception e)
		{
		out.print("<script>alert('Exception Occured : '"+e+")</script");
		RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
		rd.include(req, resp);
		}
	}
	
}