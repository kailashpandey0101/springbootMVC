<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/resources/bootStrapFiles/bootstrapHeader.jsp"%>
<title>Home</title>
</head>
<body>
	<!-- nav bar -->
	<div class="container-fluid">

		<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
		<!-- Brand --> <a class="navbar-brand" href="/">Customer
			Application</a>
		<div class="collapse navbar-collapse" id="navbarNav">
			<!-- Links -->
			<ul class="navbar-nav mr-auto">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Customer Operations<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/getAddCustomer">Add
								Customer</a></li>
						<li><a class="dropdown-item" href="#">Load Customer</a></li>
						<li><a class="dropdown-item" href="#">Delete Customer</a></li>
						<li><a class="dropdown-item" href="#">List All Customers</a></li>
					</ul></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/signUp.get">Sign
						Out</a></li>

			</ul>
		</div>
		</nav>
	</div>
	<c:if test="${successMsg!=null }">
		<div class="alert alert-success">
			<strong>Success!</strong>
			<c:out value="${successMsg}" />
		</div>
	</c:if>
	<%@ include file="/resources/bootStrapFiles/bootstrapBody.jsp"%>
</body>
</html>