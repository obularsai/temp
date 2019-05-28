<%@page import="java.util.Iterator"%>
<%@page import="com.cms.bean.SupplierBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminHome</title>
</head>
<body>

	<h1 align="center">Welcome Admin ${AdminName }!!!</h1>
	<form:form align="right" action="logoutSupplier">
		<button type="submit" class="btn btn-outline-primary">Logout</button>
	</form:form>

	<div class="container" align="center">
		<ul class="nav nav-tabs">
			<li><a data-toggle="tab" class="nav-link active" role="tab"
				href="#1a">Manage Suppliers</a></li>
			<li><a data-toggle="tab" class="nav-link" role="tab" href="#2a">Manage
					Contracts</a></li>

		</ul>
	</div>

	<div class="tab-content clearfix">
		<div class="tab-pane active" id="1a">
			<a href="fetchAllSuppliers">List All</a>
			<c:if test="${!empty supplierList}">
				<table class="table" border="1">

					<thead align="center" class="thead-dark">
						<tr>
							<th>Supplier ID</th>
							<th>Supplier Name</th>
							<th>Supplier Status</th>
							<c:if test="${supplier.supplierStatus == 'SUBMITTED' }">
								<th>Action</th>
							</c:if>
						</tr>
					</thead>
					<tbody align="center">
						<c:forEach items="${supplierList}" var="supplier">
							<tr>
								<td><c:out value="${supplier.supplierId}" /></td>
								<td><c:out value="${supplier.firstName}" /></td>
								<td><c:out value="${supplier.supplierStatus}" /> <c:if
										test="${supplier.supplierStatus == 'SUBMITTED' }">
										<br>
										<a
											href="updateSupplierStatus?supplierStatus=APPROVED&supplierId=${supplier.supplierId }">Approve</a>
									| <a
											href="updateSupplierStatus?supplierStatus=REJECTED&supplierId=${supplier.supplierId }">Reject</a>
									</c:if></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
			<form:form>
				<select name="menu"
					onChange="window.document.location.href=this.options[this.selectedIndex].value;"
					value="GO">
					<option selected="selected">Select One</option>
					<option value="fetchSupplier?supplierStatus=SUBMITTED">Submitted</option>
					<option value="fetchSupplier?supplierStatus=APPROVED">Approved</option>
					<option value="fetchSupplier?supplierStatus=REJECTED">Rejected</option>
				</select>
			</form:form>
		</div>
		<div class="tab-pane" id="2a">
			<form:form>
				<a href="fetchIdSuppliers">Supplier ID: </a>
				<select name="menu"
					onChange="window.document.location.href=this.options[this.selectedIndex].value;"
					value="GO">
					<option selected="selected">Select One</option>
					<c:forEach items="${supplierIdList}" var="supplier">

						<option
							value="fetchContractUsingSupplierId?supplierId=${supplier.supplierId }"> ${supplier.supplierId }</option>
					</c:forEach>
				</select>
			</form:form>
			<form:form>
					Contract Id: <select name="menu"
					onChange="window.document.location.href=this.options[this.selectedIndex].value;"
					value="GO">
					<option selected="selected">Select One</option>
					<c:forEach items="${contractIdList}" var="contract">
						<option
							value="fetchContractForAdmin?contractId=${contract.contractId}">${contract.contractId}</option>
					</c:forEach>
				</select>
				<form:form>
					<select name="menu"
						onChange="window.document.location.href=this.options[this.selectedIndex].value;"
						value="GO">
						<option selected="selected">Select One</option>
						<option value="fetchSupplier?supplierStatus=SUBMITTED">Submitted</option>
						<option value="fetchSupplier?supplierStatus=APPROVED">Approved</option>
						<option value="fetchSupplier?supplierStatus=REJECTED">Rejected</option>
					</select>
				</form:form>
			</form:form>
				<c:if test="${!empty contractList}">
			<table class="table" border="1">
				<thead align="center" class="thead-dark">
					<tr>
						<th>Contract ID</th>
						<th>Contract Name</th>
						<th>Contract Status</th>
					</tr>
				</thead>
				<tbody align="center">
					<tr>
						<td><c:out value="${contractList.contractId}" /></td>
						<td><c:out value="${contractList.contractDesc}" /></td>
						<td><c:out value="${contractList.contractStatus}" /> <br> <a
							href="updateContractStatus?contractStatus=APPROVED&supplierId=${contractList.contractId }">Approve</a>
							| <a
							href="updateContractStatus?contractStatus=REJECTED&supplierId=${contractList.contractId }">Reject</a>
						</td>
					</tr>
				</tbody>
			</table>
			</c:if>
		</div>
	</div>

</body>
</html>