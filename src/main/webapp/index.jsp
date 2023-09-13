 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="StyleSheets/style.css">
</head>
<body>
	<div class="Divlogo">
		<logo>Neelam Cineplex</logo>
		<br> <span>Welcome to future</span><br> 
		<span>Railway-Station Road,Jalna</span>
			
	</div>
	<div class="DivNav">
		<div class="Divcard">
			<!-- <img src="/Images/Parllu.jpg"> -->
			<img
				src="https://th.bing.com/th/id/OIP.mP1RB8xuQaHAvUkonYY6HwHaHK?pid=ImgDet&w=60&h=60&c=7&dpr=1.3&rs=1">
			<h1>New Customer</h1>
			<button id="SignUpBtn">Sign Up</button>
			<p>
				Sign Up for Free<br>If you are new here please click on the
				above Sign Up button to register.
			</p>
		</div>
		<div class="Divcard">
			<!-- <img src="/Images/Parllu.jpg"> -->
			<img
				src="https://th.bing.com/th/id/OIP.mP1RB8xuQaHAvUkonYY6HwHaHK?pid=ImgDet&w=60&h=60&c=7&dpr=1.3&rs=1">

			<h1>Existing Customer</h1>
			<button id="ULgIn">Log In</button>
			<p>
				Welcome again! <br>Start Saving Instantly<br> Please click
				on above Log In button to access your account.
			</p>
		</div>
		<div class="Divcard">
			<!-- <img src="/Images/Parllu.jpg"> -->
			<img
				src="https://th.bing.com/th/id/OIP.dByE9wJKSZugq-jZ3JE-tQAAAA?pid=ImgDet&w=320&h=320&rs=1"
				alt="">

			<h1>Admin</h1>
			<button id="AdLgIn">Log In</button>
			<p>
				Admin Login Portal<br>Admin Power at Your Fingertips<br>Please
				click on the above Login button to log in as Admin.
			</p>
		</div>
		<div class="Divcard">
			<img
				src="https://th.bing.com/th/id/OIP.dByE9wJKSZugq-jZ3JE-tQAAAA?pid=ImgDet&w=320&h=320&rs=1"
				alt="">
			<h1>About us</h1>
			<button id="Abt">Click to Explore</button>
			<p>
				Welcome to Neelam Cineplex!,<br>Curious about journey?<br>Then
				please click on the above button to know our intresting story and
				features.
			</p>
		</div>
	</div>
	<div class="DivEnd">
		<div class="DivDetail">
			<h3>MOVIES GENRE</h3>
			<p>
				<span>Drama Movies </span> | <span> Action Movies </span> | <span>
					Thriller Movies </span> | <span> Comedy Movies </span> | <span>
					Adventure Movies </span> | <span> Romantic Movies </span> | <span>
					Crime Movies </span> | <span> Historical Movies </span> | <span>
					Sports Movies </span> | <span> Mystery MoviesMovies </span> | <span>
					Period Movies </span> | <span> Sci-Fi Movies </span> | <span>
					Adaptation Movies </span> | <span> Mythological Movies </span> | <span>
					Noir Movies </span> | <span> Political Movies </span> | <span>
					Supernatural Movies </span> | <span> Heist Movies </span> | <span>
					Tragedy Movies </span> | <span> Animation Movies </span> | <span>
					Anime Movies </span> | <span> Horror Movies </span> | <span>
					Psychological Movies </span> | <span> War Movies </span> | <span>
					Classic Movies </span> | <span> Musical Movies </span> | <span>
					Adult Movies </span> | <span> Screening Movies </span> | <span>
					Fantasy Movies </span> | <span> Bollywood Movies </span> | <span>
					Devotional Movies </span> | <span> Suspense Movies </span> | <span>
					Biography Movies 
			</p>
			<h3>MOVIES LANGUAGES</h3>
			<p>
				Movies in Hindi </span> | <span> Movies in English </span> | <span>
					Movies in Marathi </span> | <span> Movies in Tamil </span> | <span>
					Movies in Punjabi </span> | <span> Movies in Telugu </span> | <span>
					Movies in Chattisgarhi </span> | <span> Movies in Khasi </span> | <span>
					Movies in English 7D </span> | <span> Movies in Nepali </span> | <span>
					Movies in French </span> | <span> Movies in Tulu </span> | <span>
					Movies in Japanese </span> | <span> Movies in Bhojpuri </span> | <span>
					Movies in Gujarati </span> | <span> Movies in Konkani </span> | <span>
					Movies in Sindhi </span> | <span> Movies in Haryanavi </span> | <span>
					Movies in Assamese </span> | <span> Movies in Odia </span> | <span>
					Movies in Kannada </span> | <span> Movies in Portuguese </span> | <span>
					Movies in Urdu </span> | <span> Movies in Rajasthani </span> | <span>
					Movies in Bengali </span> | <span> Movies in Malyalam </span>
			</p>
			<span class="spanhead">Neelam Cineplex, Jalna(MH-431203)</span> ©
			PRALHAD MADAN
		</div>
	</div>
	<div id="ppSignUP" class="ppSignUP">
		<div class="DivSForm" id="Divsgup">
			<img
				src="https://th.bing.com/th/id/OIP.mP1RB8xuQaHAvUkonYY6HwHaHK?pid=ImgDet&w=60&h=60&c=7&dpr=1.3&rs=1">
			<h2>Sign Up Page</h2>
			<form action="UserSignUpForm" method="post">
				<input type="text" placeholder="Enter your Name" id="userName"
					name="userName" required> 
					<input type="email" placeholder="Enter your Email Id" id="userEmail" name="userEmail" required> <br>
					<span> 
					<label>Select your country : </label> 
						<select name="userCountry" required>
						<option >INDIA</option>
						<option >USA</option>
						<option >PAKISTAN</option>
						<option >CHINA</option>
						<option >RASIA</option>
						<option >SHRILANKA</option>
						<option >JAPAN</option>
				</select>
				</span> <input type="password" placeholder="Enter your password" id="userPass1" name="userPass1" required> 
			<!--		<input type="password" placeholder="Re-enter your password" id="userPass2" name="userPass2" required>	-->
				<button type="submit">Submit</button>
				<button type="menu" id="Mainmenu">Back</button>
			</form>
		</div>
	</div>
	<div id="ppSignIN" class="ppSignIN">
		<div class="DivSForm" id="DivULg">
			<img
				src="https://th.bing.com/th/id/OIP.mP1RB8xuQaHAvUkonYY6HwHaHK?pid=ImgDet&w=60&h=60&c=7&dpr=1.3&rs=1">

			<!-- <h1>Welcome to Neelam Cineplex</h1> -->
			<h2>Log In Page</h2>
			<form action="UserLoginForm" method="post">
				<input type="text" placeholder="Enter your Name" id="userName"
					name="userName" > <br>
					<label>OR</label><br>
			 		<input type="email"
					placeholder="Enter your Email Id" id="userEmail" name="userEmail">		 
					 <input type="password"
					placeholder="Enter your password" id="userPass" name="userPass"
					required>
				<button type="submit">Submit</button>
				<button type="menu" id="Mainmenu1">Back</button>
			</form>
		</div>
	</div>
	<div id="ppAdmSIN" class="ppAdmSIN">
		<div class="DivSForm" id="DivAdLg">
			<img
				src="https://th.bing.com/th/id/OIP.dByE9wJKSZugq-jZ3JE-tQAAAA?pid=ImgDet&w=320&h=320&rs=1"
				alt="">
			<h2>Admin-Log In Page</h2>
			<form action="AdminLoginForm" method="post">
				<input type="text" placeholder="Enter your Name" id="adminName"
					name="adminName" required> <input type="email"
					placeholder="Enter your Email Id" id="adminEmail" name="adminEmail"
					required> <input type="password"
					placeholder="Enter your password" id="adminPass" name="adminPass"
					required>
				<button type="submit">Submit</button>
				<button type="menu" id="Mainmenu2">Back</button>
			</form>
		</div>
	</div>
	<div id="ppAbout" class="ppAbout">
		<div class="DivSForm DivAbout" id="DivAbout">
			<h1>Welcome to Neelam Cineplex</h1>
			<p>
				For 10 years, we've been your neighborhood's go-to destination for
				cinematic adventures. Our story is one of passion, dedication, and a
				love for the magic of the silver screen. At [Movie Theater Name], we
				believe in the power of movies to transport, inspire, and entertain.
				Our mission is to provide you with more than just a movie; we offer
				an experience—a chance to escape, unwind, and connect with the
				stories that move us. Our theaters are more than just screens and
				seats; they're a place where memories are made. Whether it's a first
				date, a family outing, or a solo escape, we're here to create the
				perfect setting for your movie moments.<br> <br> We take
				pride in:
			<ul>
				<li>Curating a diverse selection of films that cater to all
					tastes.</li>
				<li>Offering state-of-the-art technology for an immersive
					viewing experience.</li>
				<li>Providing exceptional customer service from our dedicated
					team.</li>
				<li>Fostering a sense of community by hosting special events
					and screenings.</li>
				<li>Being environmentally conscious with our sustainable
					practices.</li>
			</ul>
			As a locally owned and operated theater, we're deeply connected to
			our community, and we're committed to giving back and making a
			positive impact.<br> Thank you for choosing Neelam Cineplex as
			your destination for cinematic adventures. Join us, and let's
			continue to create magical movie moments together."
			</p>

			<h2>Thank You</h2>
			<span id="Mainmenu3">Exit</span>
		</div>
	</div>
	<script src="scripts/Jscript.js"></script>
</body>

</html>