<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Login</title>
<style>
fieldset {
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	width: 500px;
}

form#innerPara {
	padding: 20px;
}

legend {
	width: 200px;
	padding: 10px 20px;
}
</style>
</head>
<body>

	<h1 align="center">Welcome!!!</h1>
	<br>
	<div align="center">
		<fieldset class="border">
			<legend class='text-center'>Supplier Login</legend>
			<form:form id="innerPara" method="POST" action="loginSupplier">
				<div class="form-group row">
					<label class="col-sm-2 col-form-label">UserName</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="firstName"
							placeholder="User Name" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password"
							placeholder="Password" required>
					</div>
				</div>
				<strong>${message}</strong>
				<strong>${successMessage}</strong>
				<br />
				<button type="submit" class="btn btn-outline-success">Login</button>
				<br>
				<br>

			</form:form>
			<h6>
				<a href="addSupplier.jsp" >Don't have an account</a>
			</h6>
		</fieldset>
		<br> <br>

	</div>
</body>
</html>