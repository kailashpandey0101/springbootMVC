<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/resources/bootStrapFiles/bootstrapHeader.jsp"%>
<title>Login</title>
</head>
<body>
	<!-- nav bar -->
	<div class="container-fluid">

		<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
		<!-- Brand --> <a class="navbar-brand" href="/">Customer
			Application</a>
		<div class="collapse navbar-collapse" id="navbarNav">
			<!-- Links -->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link">Sign In <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="/getSignUp">Sign
						up</a></li>

			</ul>
		</div>
		</nav>
	</div>

	<!--  sign in body -->
	<div class="container">

		<form:form class="form-signin" action="/login.do" method="post"
			modelAttribute="user">
			<div class="col-8 offset-6">
				<h2 class="form-signin-heading">Log In</h2>
			</div>
			<div class="col-5 offset-4">
				<label for="inputUserName" class="sr-only">User Name</label>
				<form:input path="userName" id="inputUsername" class="form-control"
					placeholder="Username" required="" autofocus="" />
				<label for="inputPassword" class="sr-only">Password</label>
				<form:password path="password" id="inputPassword"
					class="form-control" placeholder="Password" required="" />
				<div class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						Remember me
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
					in</button>
				<h6>
					Do not have an account? <a href="/getSignUp"> Sign up</a>
				</h6>
				<c:if test="${successMsg!=null }">
					<div class="alert alert-success">
						<strong>Success!</strong>
						<c:out value="${successMsg}" />
					</div>
				</c:if>
			</div>
		</form:form>

	</div>
	<%@ include file="/resources/bootStrapFiles/bootstrapBody.jsp"%>
</body>
</html>