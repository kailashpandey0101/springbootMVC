<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/resources/bootStrapFiles/bootstrapHeader.jsp"%>
<title>Add Customer</title>
</head>
<body>




	<!-- Registration form starts -->

	<div class="container py-5">
		<div class="row">
			<div class="col-md-12">
				<h2 class="text-center mb-5">Customer Form</h2>
				<div class="row">
					<div class="col-md-6 mx-auto">
						<div class="card border-none">
							<div class="card-header">
								<h5 class="mb-0 my-2">Please provide the details</h5>
							</div>
							<div class="card-body">
								<form:form class="form" role="form" modelAttribute="customer"
									action="/addCustomer" autocomplete="off" method="post">

									<div class="form-group">
										<label for="inputFirstName">First Name</label>
										<form:input path="firstName" class="form-control"
											id="inputFirstName" placeholder="Firstname" required=""
											autofocus="" />
									</div>
									<div class="form-group">
										<label for="inputLastName">Last Name</label>
										<form:input path="lastName" class="form-control"
											id="inputLastName" placeholder="LastName" required="" />
									</div>
									<div class="form-group">
										<label for="inputDob">Date of Birth</label>
										<form:input type="date" class="form-control" path="dob"
											id="inputDob" name="inputDob" placeholder="MM-dd-yyyy" />
									</div>
									<div class="form-group">
										<label for="inputPhone">Phone Number</label>
										<form:input type="tel" class="form-control" id="inputPhone"
											path="phoneNumber" name="inputPhone"
											placeholder="000-000-0000" />
									</div>
									<div class="form-group">
										<label for="inputEmail">Email</label>
										<form:input type="email" class="form-control" id="inputEmail"
											path="email" name="inputEmail" placeholder="email@gmail.com" />
									</div>
									<div class="form-group">
										<button type="submit"
											class="btn btn-success btn-lg float-right">Add</button>
									</div>
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