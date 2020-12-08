<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "com.hospital.model.Doctors" %>

<%
if(session.getAttribute("userName") == null){ 
	response.sendRedirect("SignupFormAppointment.jsp");
}else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Insert title here</title>
</head>
<body>
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
	
<div class="row justify-content-md-center">
	<div class="col-md-6">
	<div class="appointment-wrap p-4 p-lg-5 d-flex align-items-center">
		<form action="PatientServlet" class="appointment-form ftco-animate">
			<h3>Appointment Form</h3>
			<div class="">
				<div class="form-group">
					<input name="name" id="name" type="text" class="form-control" placeholder="Name">
				</div>
				<div class="form-group">
					<input name="age" id="age" type="text" class="form-control" placeholder="Age">
				</div>
			</div>
			<div class="">
				<div class="form-group">
					<div class="form-field">
						<div class="select-wrap">
							<div class="icon"><span class="fa fa-chevron-down"></span></div>
							<select name="docId" id="docId" class="form-control">
								<option value="noValue">Select doctors for <% out.print(request.getAttribute("formDepName").toString()); %></option>
								<% 
									Doctors[] docName = (Doctors[])request.getAttribute("depDocNameTime");
									for(int i=0; i<docName.length; i++){	
								%>
								<option value="<% out.print(docName[i].getId()); %>"><% out.print(docName[i].getName()); %></option>
								<%} %>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<input name="phone" id="phone" type="text" class="form-control" placeholder="Phone">
				</div>
			</div>
			<div class="">
				<div class="form-group">
					<div class="input-wrap">
						<div class="icon"><span class="fa fa-calendar"></span></div>
						<input name="date" id="date" type="text" class="form-control appointment_date" placeholder="Date">
					</div>
				</div>
			</div>
			<div class="">
				<div class="form-group">
					<input type="submit" value="Appointment" class="btn btn-secondary py-3 px-4">
				</div>
			</div>
		</form>
	</div>
</div>
</div>



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
<%}%>