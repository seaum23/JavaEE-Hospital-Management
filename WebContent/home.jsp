<!DOCTYPE html>
<%@page import="com.hospital.model.Test"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.LinkedList"%>
<%@page import="com.hospital.model.Depertment"%>
<%@page import="com.hospital.model.*, com.hospital.dao.*"%>
<html lang="en"> 
<head>
	<title>Medex - Free Bootstrap 4 Template by Colorlib</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/animate.css">
	
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">

	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="css/jquery.timepicker.css">
	
	<link rel="stylesheet" href="css/flaticon.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<!-- Nav Start -->
	<div class="py-1 top">
		<div class="container">
			<div class="row">
				<div class="col-sm text-center text-md-left mb-md-0 mb-2 pr-md-4 d-flex topper align-items-center">
					<p class="mb-0 w-100">
						<span class="fa fa-paper-plane"></span>
						<span class="text">youremail@email.com</span>
					</p>
				</div>
				<div class="col-sm justify-content-center d-flex mb-md-0 mb-2">
					<div class="social-media">
						<p class="mb-0 d-flex">
							<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
							<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
							<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
							<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
						</p>
					</div>
				</div>
				<% if(session.getAttribute("userName") == null){ %>
				<div class="col-sm-12 col-md-6 col-lg-7 d-flex topper align-items-center text-lg-right justify-content-end">
					<p class="mb-0 register-link">
						<a href="LoginForm.jsp" class="btn btn-primary">Log In</a>
						<a href="SignupForm.jsp" class="btn btn-primary">Dont have account? Sign Up</a>
					</p>
				</div>
				<%}else{ %>
				<div class="col-sm-12 col-md-6 col-lg-7 d-flex topper align-items-center text-lg-right justify-content-end">
					<p class="mb-0 register-link">
						<a href="" class="btn btn-primary"><% out.print(session.getAttribute("userName")); %></a>
						<a href="LogoutServlet" class="btn btn-primary">Log Out</a>
						
					</p>
				</div>
				<%} %>
			</div>
		</div>
	</div>
	<div class="py-3">
		<div class="container">
			<div class="row d-flex align-items-start align-items-center px-3 px-md-0">
				<div class="col-md-4 d-flex mb-2 mb-md-0">
					<a class="navbar-brand d-flex align-items-center" href="index.jsp"><span class="flaticon flaticon-health"></span><span>Medex</span></a>
				</div>
				<div class="col-md-4 d-flex topper mb-md-0 mb-2 align-items-center">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="fa fa-map"></span>
					</div>
					<div class="pr-md-4 pl-md-3 pl-3 text">
						<p class="con"><span>Free Call</span> <span>+1 234 456 78910</span></p>
						<p class="con">Call Us Now 24/7 Customer Support</p>
					</div>
				</div>
				<div class="col-md-4 d-flex topper mb-md-0 align-items-center">
					<div class="icon d-flex justify-content-center align-items-center"><span class="fa fa-paper-plane"></span>
					</div>
					<div class="text pl-3 pl-md-3">
						<p class="hr"><span>Our Location</span></p>
						<p class="con">198 West 21th Street, Suite 721 New York NY 10016</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<% if(session.getAttribute("userName") == null){ %>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container d-flex align-items-center">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav m-auto">
					<li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="doctor.jsp" class="nav-link">Doctors</a></li>
					<li class="nav-item"><a href="department.jsp" class="nav-link">Departments</a></li>
				</ul>
			</div>
		</div>
	</nav>
<% }else{ %>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container d-flex align-items-center">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav m-auto">
					<li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="doctor.jsp" class="nav-link">Doctors</a></li>
					<li class="nav-item"><a href="department.jsp" class="nav-link">Departments</a></li>
					<li class="nav-item"><a href="UserPage.jsp" class="nav-link">Dashboard</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
<% } %>
<!-- END nav -->

	
	
	
	<% Depertment[] dNew = (Depertment[]) request.getAttribute("dep"); %>
	<section class="hero-wrap js-fullheight" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end" data-scrollax-parent="true">
				<div class="col-lg-6 ftco-animate">
					<div class="mt-5">
						<h1 class="mb-4">The Most Valuable Thing is Your Health</h1>
						<p class="mb-4">This is our description and it is static.</p>
						<div class="row">
							<div class="col-md-7 col-lg-10">
								<form action="AppointmentServlet" class="appointment-form-intro ftco-animate">
									<div class="d-flex">
										<div class="form-group">
											<div class="form-field">
												<div class="select-wrap">
													<div class="icon"><span class="fa fa-chevron-down"></span></div>
													<select name="depertment" id="depertment" class="form-control">
														<option value="invalid">Select Department</option>
														<%for(int i =0; i<dNew.length;i++){ %>
														<option value="<% out.print(dNew[i].getDepName()); %>"><% out.print(dNew[i].getDepName()); %></option>
														<%} %>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<input type="submit" value="Book Appointment" class="btn-custom form-control py-3 px-4">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-2 bg-light">
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-7 py-5">
					<div class="py-lg-5">
						<div class="row justify-content-center pb-5">
							<div class="col-md-12 heading-section ftco-animate">
								<h2 class="mb-3">Welcome to <span>Medex</span></h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
								<div class="media block-6 services d-flex">
									<div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-ambulance"></span></div>
									<div class="media-body pl-md-4">
										<h3 class="heading mb-3">Emergency Help</h3>
										<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
									</div>
								</div>      
							</div>
							<div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
								<div class="media block-6 services d-flex">
									<div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-ophthalmologist"></span></div>
									<div class="media-body pl-md-4">
										<h3 class="heading mb-3">Qualified Doctors</h3>
										<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
									</div>
								</div>      
							</div>
							<div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
								<div class="media block-6 services d-flex">
									<div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-flag"></span></div>
									<div class="media-body pl-md-4">
										<h3 class="heading mb-3">Location &amp; Directions</h3>
										<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
									</div>
								</div>      
							</div>
							<div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
								<div class="media block-6 services d-flex">
									<div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-stethoscope"></span></div>
									<div class="media-body pl-md-4">
										<h3 class="heading mb-3">Medical Treatment</h3>
										<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
									</div>
								</div>      
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4">Medex <span>Department</span></h2>
				</div>
			</div>
			<div class="row tabulation mt-4 ftco-animate">
				<div class="col-md-3">
					<ul class="nav nav-pills nav-fill d-block w-100">
					 
					<%
						
						for(int i=0;i<dNew.length;i++){ 
					%>
						<li class="nav-item text-left">
							<a class="nav-link py-4 d-flex align-items-centere py-4" data-toggle="tab" href="<% out.print("#services-"+(i+1)); %>"><span class="flaticon-health flaticon mr-3"></span> 
							<span><% 
							out.print(dNew[i].getDepName());
							%></span></a>
						</li>
					<%} %>
					</ul>
				</div>

				<div class="col-md-9">
					<div class="tab-content pt-4 pt-md-0 pl-md-3">
						<div class="tab-pane container p-0 active" id="services-1">
							<div class="row">
								<div class="col-md-5 img" style="background-image: url(images/dept-1.jpg); height: 500px"></div>
								<div class="col-md-7 text pl-md-4">
									<h3><a href="#"><% out.print(dNew[0].getDepName()); %></a></h3>
									<p><% out.print(dNew[0].getDepDes()); %></p>
									
								</div>
							</div>
						</div>
						<% for(int i = 1; i < dNew.length; i++){ %>
						<div class="tab-pane container p-0 fade" id="<% out.print("services-"+(i+1)); %>">
							<div class="row">
								<div class="col-md-5 img" style="background-image: url( <% out.print("images/dept-"+(i+1)+".jpg"); %> ); height: 500px"></div>
								<div class="col-md-7 text pl-md-4">
									<h3><a href="#"><% out.print(dNew[i].getDepName()); %></a></h3>
									<p><% out.print(dNew[i].getDepDes()); %></p>									
								</div>
							</div>
						</div>
						<%} %>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container-fluid px-5">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4">Our Qualified Doctors</h2>
				</div>
			</div>	
			<div class="row">
			<%
			Doctors[] doc = (Doctors[]) request.getAttribute("doc");
			for(int i = 0; i < doc.length; i++){
			%>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(<% out.print("images/doc-"+(i+1)+".jpg"); %>);"></div>
						</div>
						<div class="text text-center">
							<h3 class="mb-2"><% out.print(doc[i].getName()); %></h3>
							<span class="position mb-2"><% out.print(doc[i].getDesignation()); %></span>
							<div class="faded">
								<p><% out.print(doc[i].getDescription()); %></p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<%} %>
			</div>
		</div>
	</section>

	<section class="ftco-facts img ftco-counter" style="background-image: url(images/bg_3.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
					<div class="block-18 p-4">
						<div class="text">
							<strong class="number" data-number="30">0</strong>
							<span>Years of Experienced</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
					<div class="block-18 p-4">
						<div class="text">
							<strong class="number" data-number="4500">0</strong>
							<span>Happy Patients</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
					<div class="block-18 p-4">
						<div class="text">
							<strong class="number" data-number="84">0</strong>
							<span>Number of Doctors</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
					<div class="block-18 p-4">
						<div class="text">
							<strong class="number" data-number="300">0</strong>
							<span>Number of Staffs</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	

	<footer class="ftco-footer">
		<div class="container-fluid bg-primary py-5">
			<div class="row">
				<div class="col-md-12 text-center">
					
					<p class="mb-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
					</div>
				</div>
			</div>
		</footer>
		
		

		<!-- loader -->
		<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

		<script src="js/jquery.min.js"></script>
		<script src="js/jquery-migrate-3.0.1.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/jquery.waypoints.min.js"></script>
		<script src="js/jquery.stellar.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/jquery.animateNumber.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.timepicker.min.js"></script>
		<script src="js/scrollax.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script src="js/google-map.js"></script>
		
		<script src="js/main.js"></script>
		
	</body>
	</html>