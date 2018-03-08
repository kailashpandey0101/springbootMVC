<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/resources/bootStrapFiles/bootstrapHeader.jsp"%>
<title>Sign Up</title>
</head>
<body>

	<div class="container-fluid">

		<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
		<!-- Brand --> <a class="navbar-brand" href="/">Customer
			Application</a>
		<div class="collapse navbar-collapse" id="navbarNav">
			<!-- Links -->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/getLogin">Sign
						In</a></li>
				<li class="nav-item"><a class="nav-link">Sign Up<span
						class="sr-only">(current)</span></a></li>

			</ul>
		</div>
		</nav>
	</div>

	<!-- Registration form starts -->

	<div class="container py-5">
		<div class="row">
			<div class="col-md-12">
				<h2 class="text-center mb-5">Customer Registration Form</h2>
				<div class="row">
					<div class="col-md-6 mx-auto">
						<div class="card border-none">
							<div class="card-header">
								<h3 class="mb-0 my-2">Sign Up</h3>
							</div>
							<div class="card-body">
								<form:form class="form" role="form" modelAttribute="user" action="signUpUser"
									autocomplete="off" method="post">

									<div class="form-group">
										<label for="inputUserName">User name</label>
										<form:input path="userName" class="form-control"
											id="inputUserName" placeholder="Username" required="" autofocus=""/>
									</div>
									<div class="form-group">
										<label for="inputPassword">Password</label>
										<form:password path="password" class="form-control"
											id="inputPassword" placeholder="password"
											title="At least 6 characters with letters and numbers"
											required="" />
									</div>

									<<!-- div class="form-group">
										<label for="inputVerify3">Verify</label>
										<input:password patclass="form-control" id="inputVerify3"
											placeholder="password (again)" required="" />
									</div> -->
									<div class="form-group">
										<button type="submit"
											class="btn btn-success btn-lg float-right">Register</button>
									</div>
									<input type="hidden" name="requestType" value="signUp">
								</form:form>
							</div>
						</div>
					</div>
				</div>
				<!--/row-->

			</div>
			<!--/col-->
		</div>
		<!--/row-->
	</div>
	<!--/container-->


	<!-- Registration form ends -->

	<%@ include file="/resources/bootStrapFiles/bootstrapBody.jsp"%>
</body>
</html>