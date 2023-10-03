<%@page import="Booking.Connection.MovieDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="StyleSheets/User.css">
<link type="text/css" rel="stylesheet" href="StyleSheets/User2.css">
<link type="text/css" rel="stylesheet" href="StyleSheets/Popup.css">
</head>
<body>
	     <div class="BigDiv">
        <div class="BookingForm PopUp" id="">
           <img alt="" src="https://img.freepik.com/free-vector/green-eco-loop-leaf-check-mark_78370-658.jpg?w=740&t=st=1696332858~exp=1696333458~hmac=494e0be89ed86b1f31fa504ae416b473a18a5e0780effbfc1e439cdae0b2dd15">
        	<i>Congratulations</i>
        	<b>
        	<%if(session.getAttribute("UserName")!= null){ %>
			<%= session.getAttribute("UserName") %><br>
			<%}else{ %>
			<%= session.getAttribute("UserEmail") %>
			<%}; %>
			</b>
			Your Ticket Booked Succesfully
			Details are as follow<br>
			<% MovieDetail bookedShow = (MovieDetail) request.getAttribute("BookedShow"); 
				if(bookedShow != null){
			%>
			Ticket Category / Quantity: <%= bookedShow.getGenere() %> / <%= bookedShow.getBooked() %>NOS <br>
			Movie Name:<%= bookedShow.getTitle() %><br>
			Movie Time:<%= bookedShow.getDirector() %><br>
			Screen No:<%= bookedShow.getScreen() %><br>
			<% } %>
		<div class="Endline">
			You are most Welcome,
			Please be on time
		</div>
		<div class="ButtonDiv">
			<button>Back</button><button>Print-Ticket</button><button>Log-Out</button>
		</div>
	</div>
    </div>

</body>
</html>