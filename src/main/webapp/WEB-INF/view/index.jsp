<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/resources/bootStrapFiles/bootstrapHeader.jsp"%>


</head>
<body>
	<div class="container-fluid">

		<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
		<!-- Brand --> <a class="navbar-brand" href="/">Customer
			Application</a>
		<div class="collapse navbar-collapse" id="navbarNav">
			<!-- Links -->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/getLogin">Log In</a></li>
				<li class="nav-item"><a class="nav-link" href="/getSignUp">Sign Up</a></li>
			</ul>
		</div>
		</nav>

		<!-- Set body height so that scrollbars grow -->

	</div>
	<!-- <h2>Hello World!</h2> -->
	<%@ include file="/resources/bootStrapFiles/bootstrapBody.jsp"%>
</body>
</html>
