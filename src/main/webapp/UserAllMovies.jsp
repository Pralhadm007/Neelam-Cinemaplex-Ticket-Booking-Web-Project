<%@page import="Booking.Connection.UserJDBC"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Booking.Connection.UserJDBC"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	
	UserJDBC Ujdbc=new UserJDBC();
	PreparedStatement ps_shows = con.prepareStatement("select * from shows");
	PreparedStatement ps_movie = con.prepareStatement("select * from movie");
	int Sr_No=1;    

	out.print("<table><tr><th>Screen No.</th><th>Slot</th><th>Movie Title</th></tr>");
	ResultSet rs_shows = ps_shows.executeQuery();
	ResultSet rs_movie = ps_movie.executeQuery();
   	while(rs_shows.next())
 		{
  			int MId = rs_shows.getInt(2);
  			PreparedStatement ps_req = con.prepareStatement("select title from movie where id = ?");
  			ps_req.setInt(1, MId);
  			ResultSet rs_req = ps_req.executeQuery();
  			String MovieName = rs_req.getString("title");
  			int slot = rs_shows.getInt("slot");
  			int Screen = rs_shows.getInt("screen");
  			String genere = rs_movie.getString(3);
			int duration = rs_movie.getInt(4);
			String director = rs_movie.getString(5);
  			out.print("<tr><td>"+Sr_No+"</td><td>"+MovieName+"</td><td>"+slot+"</td><td>"+Screen+"</td><td>"+genere+"</td><td>"+duration+"</td><td>"+director+"</td></tr>");
  			Sr_No++;
   		} 
		out.print("</table>");
	
%> --%>
	
 <div class="AlHiddenDv" id="AlHiddenDv3">
        <div class="Screen">
            
	            <button id="hideScreenTb">Back</button>
        </div>
    </div>
	
</body>
</html>