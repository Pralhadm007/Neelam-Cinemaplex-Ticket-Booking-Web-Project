/*





response.setContentType("text/html");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieshowdb","root","root");
			PreparedStatement ps_shows = con.prepareStatement("select * from shows");
			PreparedStatement ps_movie = con.prepareStatement("select * from movie");
			
			ResultSet rs_shows = ps_shows.executeQuery();
			ResultSet rs_movie = ps_movie.executeQuery();
			
			
			<%!int Sr_No=1;%>
						<%                    	
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
                      	%>	
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
*/			