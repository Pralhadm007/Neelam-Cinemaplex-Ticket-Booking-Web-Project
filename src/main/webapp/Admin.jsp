<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="StyleSheets/Admin.css">
 <link rel="stylesheet" href="StyleSheets/Admin2.css">
</head>
<body>
	
	<%
           	 	if(session.getAttribute("AdminName")==null)
           	 		response.sendRedirect("index.jsp");
     %>
	
	<%		
			response.setContentType("text/html");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement ps_shows = con.prepareStatement("select * from shows");
			PreparedStatement ps_movie = con.prepareStatement("select * from movie");
			
			ResultSet rs_shows = ps_shows.executeQuery();
			ResultSet rs_movie = ps_movie.executeQuery();
	%>
    <div class="NavHead">
        <span class="logo">Neelam Cineplex, Jalna</span>
        <span class="NavBtn">
            <span>
                <form action="AdminLogOut" method= "post">
                <button id="">Log-Out</button>
                </form>
            </span>
            <span>
                <button>Help</button>
            </span>
        </span>
    </div>
    <div class="MainContainer" id="MainContainer">
            <div class="Container" id="Container">
                <span>
                    <button id="ShowMvBtn" onclick="ShowMvDetailFunc()">SHOW MOVIES</button>
                </span>
                <div class="seperator"></div>
                <span>
                    <button id="AddMvBtn" onclick="Shift()">ADD MOVIES</button>
                </span>
                <div class="seperator"></div>
                <span>
                    <button id="ShowSchMvbtn" onclick="Shift()">SCHEDULE MOVIES</button>
                </span>
                <div class="seperator"></div>
                <span>
                    <button id="ShowDelBtn" onclick="Shift()">DELETE MOVIES</button>
                </span>
            </div>
            <div class="TableContainer" id="TableContainer">
                    
            </div>
              <div class="addMovie" id="ShowMvDiv">
                <div class="AddMovieForm" id="ShowMovie">
                   
                        <h2>All Movies List</h2>
                        <table>
                        <tr><th>Movie Id</th><th>Movie Name</th><th>Movie Genere</th><th>Movie Duration</th><th>Movie Director</th></tr>
                        	<% while(rs_movie.next())
                        		{
                        			int id = rs_movie.getInt(1);
                        			String MovieName = rs_movie.getString(2);
                        			String genere = rs_movie.getString(3);
                        			int duration = rs_movie.getInt(4);
                        			String director = rs_movie.getString(5);
                        			out.print("<tr><td>"+id+"</td><td>"+MovieName+"</td><td>"+genere+"</td><td>"+duration+"</td><td>"+director+"</td></tr>");
                        		}
                        	%>	
                        </table>	
                    <button id="HideMvDiv" onclick="HideMvDetailFunction()">Back</button>
                   
                </div>
            </div>
            <div class="addMovie" id="addMovie">
                <div class="AddMovieForm" id="AddMovieForm">
                    <form action="AddMovieForm" method="post">
                        <h2>ADD MOVIE DETAIL</h2>
                    <input type="text" name="MovieName" placeholder="Enter Movie Name" required>
                    <input type="text" name="MovieGenere"  placeholder="Enter Movie Genere" required>
                    <input type="number" name="MovieTime" placeholder="Enter Movie Duration" required>
                    <input type="text" name="DirecterName" placeholder="Enter Name of Director" required>
                    <button type="submit">Submit</button>
                    <button type="reset" id="HideBtn">Clear</button>
                    </form>
                </div>
            </div>
             <div class="SchShows" id="SchShows">
                <div class="AddMovieForm" id="AddShowForm">
                    <form action="SchShowsForm" method="post">
                        <h2>Schedule Movies</h2>
                    <input type="number" name="M_ID" placeholder="Enter Movie ID" required >
                    <input type="number" name="Screen_NO" placeholder="Enter Screen Number" min="1" max="2" required>
                    <input type="number" name="Slot_NO" placeholder="Enter Slot Number" min="1" max="5" required> 
                    <button type="submit">Submit</button>
                    <button type="reset" id="HidShweBtn">Clear</button>
                    </form>
                </div>
            </div>
             <div class="addMovie" id="DelMvDiv">
                <div class="AddMovieForm" id="DelMoviesForm">
                    <form action="DelMovieForm" method="post">
                        <h2>Delete Movies</h2>
						<%--  <label>Select Movie:</label> 
                        <select name="MovieName">
                        	
                        	<% while(rs_movie.next())
                        		{
                        			String MovieName = rs_movie.getString(2);
                        			out.print("<option>"+MovieName+"</option>");
                        		}
                        	%>		
                        </select> --%>
                    <input type="number" placeholder="Enter Movie ID" name="M_ID" required>
                   	<button type="submit">Delete</button>
                    <button type="reset" id="HidDelBtn">Clear</button>
                    </form>
                </div>
            </div>
    </div>
    <script src="scripts/Admin.js"></script>
    <script src="scripts/Admin2.js"></script>
    <script type="text/javascript">
    	
	</script>
    </body>
</html>