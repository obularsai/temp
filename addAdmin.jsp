<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
	<div align="center">
		<p>Please fill the Below Details...</p>
	</div>
	<form:form method="POST" action="addAdmin" class="form-horizontal">
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">First Name* </label>
			<div class="col-sm-4">
				<input class="form-control" name="firstName" type="text" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Last Name* </label>
			<div class="col-sm-4">
				<input class="form-control" name="lastName" type="text" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Age* </label>
			<div class="col-sm-4">
				<input class="form-control" name="age" type="number" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Gender* </label>
			<div class="col-sm-4">
				<input type="radio" name="gender" value="male" checked>Male &nbsp; <input
					type="radio" name="gender" value="female">Female
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">DOB* </label>
			<div class="col-sm-4">
				<input class="form-control" name="dob" type="date" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Contact Number* </label>
			<div class="col-sm-4">
				<input class="form-control" name="contactNumber" type="text" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Alternate Contact
				Number </label>
			<div class="col-sm-4">
				<input class="form-control" name="altContactNumber" type="text">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Email Id* </label>
			<div class="col-sm-4">
				<input class="form-control" name="emailId" type="email" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Password* </label>
			<div class="col-sm-4">
				<input class="form-control" name="password" type="password" required>
			</div>
		</div>
		<p style="color: red;">* mandatory fields</p>
		<div align="center">
			<button type="submit" class="btn btn-outline-primary">Submit</button>
			<button type="reset" class="btn btn-outline-primary">Reset</button>
		</div>
	</form:form>
</body>
</html>