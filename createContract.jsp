<%@page import="com.cms.bean.SupplierBean"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
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
<title>Creation of Contract</title>
</head>
<body>
	<%
		SupplierBean supplierBean = (SupplierBean) session.getAttribute("supplierBean");
		if (supplierBean == null) {
			response.sendRedirect("index.jsp");
		}
	%>
	<h2>
		Hello
		<%=supplierBean.getFirstName()%></h2>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("dd MMM yyyy");
		Calendar cal = Calendar.getInstance();
		String currentDate = sdf.format(cal.getTime());
		//Adding 7 Day to the current date
		cal.add(Calendar.DAY_OF_MONTH, 7);
		//Date after adding one day to the current date
		String newDate = sdf.format(cal.getTime());
	%>
	<form:form action="supplier.jsp">
		<button type="submit" class="btn btn-outline-primary">Back</button>
	</form:form>
	<br />
	<div class="containter-fluid">
		<form:form method="GET"
			action="addContract?supplierId=${supplierBean.getSupplierId()}">
			<div class="form-group row">

				<label class="col-sm-2 col-form-label">Contract Description*
				</label>
				<div class="col-sm-4">
					<textarea rows="4" cols="50" class="form-control"
						name="contractDesc" placeholder="Contract Description "></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Contract Submission
					Date </label>
				<div class="col-sm-4">
					<input class="form-control" name="contractSubDate" type="text"
						value="<%=currentDate%>" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Contract Processing
					Date </label>
				<div class="col-sm-4">
					<input class="form-control" name="contractProDate" type="text"
						value="<%=newDate%>" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Contract Status </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="contractStatus"
						value="Submitted" readonly>
				</div>
			</div>
			<div class="form-group row">

				<label class="col-sm-2 col-form-label">Term 1 </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="term1" value="SAFETY"
						readonly>

				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Condition 1 </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="condition1">

				</div>
			</div>
			<div class="form-group row">

				<label class="col-sm-2 col-form-label">Term 2 </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="term2"
						value="MAINTENANCE" readonly>
				</div>
			</div>
			<div class="form-group row">

				<label class="col-sm-2 col-form-label">Condition 2 </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="condition2">
				</div>
			</div>
			<div class="form-group row">

				<label class="col-sm-2 col-form-label">Term 3 </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="term3"
						value="TIMELINE" readonly>
				</div>
			</div>
			<div class="form-group row">

				<label class="col-sm-2 col-form-label">Condition 3 </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="condition3">
				</div>
			</div>
			<div class="form-group row">

				<label class="col-sm-2 col-form-label">Amenity </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="amenity1">
				</div>
			</div>


			<div class="form-group row">

				<label class="col-sm-2 col-form-label">Supplier Id </label>
				<div class="col-sm-4">
					<input class="form-control" name="supplierId" type="number"
						value="${supplierBean.getSupplierId()}" readonly>
				</div>
			</div>
			<p style="color: red;">* - Mandatory Fields</p>
			<div align="center">
				<button type="submit" class="btn btn-outline-primary">Submit</button>
				<button type="reset" class="btn btn-outline-primary">Reset</button>
			</div>


		</form:form>
	</div>
</body>
</html>