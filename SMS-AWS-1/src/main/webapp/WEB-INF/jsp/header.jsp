<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Average'
	rel='stylesheet'>

<title>School Management System</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/logo-nav.css" rel="stylesheet">

</head>

<body>

		<div class="container-fluid">
		<div class="row top-band">
			<div class="col-md-6  float-left company-name">School
				Management System</div>
			<div class="col-md-6">
				<div class="float-right social-icon">
					<a href="#" class="fa fa-facebook"></a> <a href="#"
						class="fa fa-twitter"></a> <a href="#" class="fa fa-google"></a> <a
						href="#" class="fa fa-linkedin"></a> <a href="#"
						class="fa fa-youtube"></a> <a href="#" class="fa fa-instagram"></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	<%
        // Set to expire far in the past.
        response.setHeader("Expires", "Sun, 7 May 1995 12:00:00 GMT");

        // Set standard HTTP/1.1 no-cache headers.
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");

        // Set IE extended HTTP/1.1 no-cache headers (use addHeader).
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");

        // Set standard HTTP/1.0 no-cache header.
        response.setHeader("Pragma", "no-cache");
%>

	<c:if test="${success!=null}">
				<div class="alert alert-success alert-dismissible fade show "
					role="alert" id="snackbar">
					<i class="fa fa-check" aria-hidden="true"></i> ${success}
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
		</c:if>	
		
		<%
    request.setAttribute("success",null);
  %>
		
		<c:if test="${failure!=null}">
		<div class="alert alert-danger alert-dismissible fade show "
					role="alert" id="snackbar">
					<i class="fa fa-exclamation-triangle" aria-hidden="true" class="mr-2"></i> ${failure}
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
		</c:if>
	<%
	request.setAttribute("failure",null);
  %> 

		