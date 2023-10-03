<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*" %>
<%@page import="Booking.Connection.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="StyleSheets/User.css">
<link type="text/css" rel="stylesheet" href="StyleSheets/User2.css">
</head>
<style>
.profilspan{
			 display:none; 
			color: aliceblue;
			font-size: 17px;
			width: 100%;
		    height: auto;
		    position:relative;
		    bottom:35px;
		  }
.hiddenTable{
    width: 100%;
    border-collapse: collapse;
    text-align: center;
    background-color: black;
    
}
.hiddenTable th,td{
    border: 2px solid whitesmoke;
    height: 40px;
    width: auto;
}
.NavBtn{
	display: flex;
	flex-direction: row;
}

</style>

<body>

 	<%
			if(session.getAttribute("UserName")==null && session.getAttribute("UserEmail")==null)
				response.sendRedirect("index.jsp");
		
	List<MovieDetail> movieDetail = (List<MovieDetail>)request.getAttribute("Movies");
	%>
	
    <div class="NavHead">
        <span class="logo">Neelam Cineplex, Jalna</span>
        <span class="NavBtn">
            <span>
                <button id="HomeBtn">Home</button>
            </span>
            <span>
            <form action="UserLogOUt" method="post">
                <button>Log-Out</button>
            </form>
            </span>
        </span>
    </div>
    <div class="container">
        <div class="SideBar">
        	<span>
                <button id="TogleProfileBtn">Profile</button>
            </span>
        	<span class="profilspan" id="profilspan">
    		<p>Name : <%= session.getAttribute("UserName") %></p>
    		<p>Email : <%= session.getAttribute("UserEmail") %></p>
        	</span>
            <span>
                <button id="showTdBtn">Shows For Today</button>
            </span>
            <span>
                <button id="showAvlstBtn">Available Seats</button>
            </span>
            <span>
                <button id="showScreenBtn">Movie Detail</button>
            </span>
            <span>
                <button id="showBookFormBtn">Book your Movie</button>
            </span>
        </div>
        <div class="PosterWall">
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.VEQZvF9VcaCtzSvKyTBZkAHaMO?w=182&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ycdgKbKqfKc7P4XGdjabBAHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ENGXVkPyXJk1eEeDLjWWvAHaKs?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.eN3homKZcJ8CVgdc_BZnXQHaKu?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.dEbPxj18bNj9l-euThiMMgHaKq?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.suKqVyET3FMiZ67w8cQ8cQHaKg?w=182&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ddR0cODI4lTRXMKKivmWhgHaK-?w=182&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.x4WOIeDJwUfa38gGWl6f3AHaKH?w=182&h=250&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.LSs0XPuTWEC8zl8_Gqx4DQHaJ4?w=182&h=242&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.pvL4A7WPqec_KMbZ00S9dgHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.p9j5ofVZSj-IOEpFzdM9pgHaLh?w=182&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.N-IfXzWBl0h_gXcp9tYftwHaJ4?w=182&h=243&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.VEQZvF9VcaCtzSvKyTBZkAHaMO?w=182&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ycdgKbKqfKc7P4XGdjabBAHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ENGXVkPyXJk1eEeDLjWWvAHaKs?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.eN3homKZcJ8CVgdc_BZnXQHaKu?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.dEbPxj18bNj9l-euThiMMgHaKq?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.suKqVyET3FMiZ67w8cQ8cQHaKg?w=182&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ddR0cODI4lTRXMKKivmWhgHaK-?w=182&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.x4WOIeDJwUfa38gGWl6f3AHaKH?w=182&h=250&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.LSs0XPuTWEC8zl8_Gqx4DQHaJ4?w=182&h=242&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.pvL4A7WPqec_KMbZ00S9dgHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.p9j5ofVZSj-IOEpFzdM9pgHaLh?w=182&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.N-IfXzWBl0h_gXcp9tYftwHaJ4?w=182&h=243&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.VEQZvF9VcaCtzSvKyTBZkAHaMO?w=182&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ycdgKbKqfKc7P4XGdjabBAHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ENGXVkPyXJk1eEeDLjWWvAHaKs?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.eN3homKZcJ8CVgdc_BZnXQHaKu?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.dEbPxj18bNj9l-euThiMMgHaKq?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.suKqVyET3FMiZ67w8cQ8cQHaKg?w=182&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ddR0cODI4lTRXMKKivmWhgHaK-?w=182&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.x4WOIeDJwUfa38gGWl6f3AHaKH?w=182&h=250&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.LSs0XPuTWEC8zl8_Gqx4DQHaJ4?w=182&h=242&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.pvL4A7WPqec_KMbZ00S9dgHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.p9j5ofVZSj-IOEpFzdM9pgHaLh?w=182&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.N-IfXzWBl0h_gXcp9tYftwHaJ4?w=182&h=243&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.VEQZvF9VcaCtzSvKyTBZkAHaMO?w=182&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ycdgKbKqfKc7P4XGdjabBAHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ENGXVkPyXJk1eEeDLjWWvAHaKs?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.eN3homKZcJ8CVgdc_BZnXQHaKu?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.dEbPxj18bNj9l-euThiMMgHaKq?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.suKqVyET3FMiZ67w8cQ8cQHaKg?w=182&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ddR0cODI4lTRXMKKivmWhgHaK-?w=182&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.x4WOIeDJwUfa38gGWl6f3AHaKH?w=182&h=250&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.LSs0XPuTWEC8zl8_Gqx4DQHaJ4?w=182&h=242&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.pvL4A7WPqec_KMbZ00S9dgHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.p9j5ofVZSj-IOEpFzdM9pgHaLh?w=182&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.N-IfXzWBl0h_gXcp9tYftwHaJ4?w=182&h=243&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
        </div>
    </div>
    <div class="AlHiddenDv" id="AlHiddenDv1">
        <div class="TodayShow">
               <h2>All Movies Detail</h2>
            <table class="hiddenTable">
                <tr><th>Movie Title</th><th>Slot</th><th>Screen</th></tr>
          <%
          		if(movieDetail != null){
          		for(MovieDetail Movie : movieDetail){      
          %>
                
                <tr><td><%= Movie.getTitle() %></td><td><%= Movie.getSlot() %></td><td><%= Movie.getScreen() %></td></tr>
          <%	
          		}	
          		}
          %> 		
            </table>
            <button id="hideTOshwBtn">Back</button>
        </div>
    </div>
    <div class="AlHiddenDv" id="AlHiddenDv2">
        <div class="AvlSeat">
            <table class="hiddenTable">
                <tr>
                    <th>Movie Title</th>
                    <th>Available Seats</th>
                    <th>Slot</th>
                </tr>
          <%
          		if(movieDetail != null){
          		for(MovieDetail Movie : movieDetail){
          			int avlseat= 100 -  Movie.getBooked();
          %>
                <tr><td><%= Movie.getTitle() %></td><td><%= avlseat %></td><td><%= Movie.getSlot() %></td></tr>
          <%
          		}
          		}
          %>
            </table>
            <button id="hideAvlstBtn">Back</button>
        </div>
    </div>
    <div class="AlHiddenDv" id="AlHiddenDv3">
        <div class="Screen">
        <table class="hiddenTable">
        		<tr><th>Sr.No.</th><th>Movie Name</th><th>Slot</th><th>Screen No</th>
        		<th>Genre</th><th>Duration</th><th>Director</th></tr>
        <%
        		if(movieDetail != null){
        		int Sr_No=1;
        		for(MovieDetail Movie : movieDetail)
        		{
        %>
			 <tr><td><%= Sr_No %></td><td><%= Movie.getTitle() %></td><td><%= Movie.getSlot() %></td><td><%= Movie.getScreen() %></td>
			<td><%= Movie.getGenere() %></td><td><%= Movie.getDuration() %> Min.</td><td><%= Movie.getDirector() %></td></tr>

         <%			
        		Sr_No++;
        		}
        		}
        %>		
        </table>
	            <button id="hideScreenTb">Back</button>
        </div>
    </div>
    <div class="AlHiddenDv" id="AlHiddenDv4">
        <div class="BookingForm" id="BookingForm">
            <form action="TicketBooking" method="post">
                <h1>Booking Form</h1>
                <table class="BookingTable">
                    <tr>
                        <td>
                            <label>Select Movie : </label>
                        </td>
                        <td>
                            <select name="bkMovieTitle" id="bkMovieTitle">
                            <option>---Select Your Movie--</option>
                 <%   if(movieDetail != null){
                      for(MovieDetail Movie : movieDetail){ 
                  %>
                                <option><%= Movie.getTitle() %></option>
                  <%			}
                       		} 
                  %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                     	<td>
                           <label>Select Movie Slot : </label>
                        </td>
                        <td>
                       	    <input name="bkMovieSlot" type="radio" value=1 required>11 AM - 2 PM
                            <input name="bkMovieSlot" type="radio" value=2 required>2 PM - 5 PM
                           <br> <input name="bkMovieSlot" type="radio" value=3 required>5 PM - 8 PM
                            <input name="bkMovieSlot" type="radio" value=4 required>8 PM - 11 PM
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Select Screen : </label>
                        </td>
                        <td>
                        	<input name="bkMovieScreen" type="radio" required>1
                            <input name="bkMovieScreen" type="radio" required>2
                            <input name="bkMovieScreen" type="radio" required>3
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Select Ticket category : </label>
                        </td>
                        <td>
                            <input name="TicketCht" type="radio" value="D" checked>Diamond(350)
                            <input name="TicketCht" type="radio" value="G">Gold(250)<br>
                            <input type="radio" name="TicketCht" value="S">Silver(150)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Enter Number of Seats:</label>
                        </td>
                        <td>
                            <input type="number" min="1" max="10"  name="bkMovieTkNo" required>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button type="submit">Book</button>
                            <button type="menu" id="hideBookFormBtn">Back</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <script src="scripts/User.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        $('#TogleProfileBtn').click(function(){
            $('#profilspan').toggle()
        })
    });

    
    </script>
</body>
</html>