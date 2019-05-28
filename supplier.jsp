<%@page import="com.cms.bean.SupplierBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script>
	function myFunction() {
		confirm("Are you sure to delete the contract?");
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>

</head>
<body>
	<%
		SupplierBean supplierBean = (SupplierBean) session.getAttribute("supplierBean");
		if (supplierBean == null) {
			response.sendRedirect("index.jsp");
		}
	%>
	<strong>${addMessage}</strong>
	<p>${editMessage}</p>
	<h4 align="right">
		Hello
		<%=supplierBean.getFirstName()%>, &nbsp; <a href="logoutSupplier"><button
				type="submit" class="btn btn-outline-primary">Logout</button></a>&nbsp;&nbsp;&nbsp;
	</h4>

	<div align="center">
		<form:form method="POST"
			action="createContract.jsp?supplierId=${supplierBean.getSupplierId()}">
			<button type="submit" class="btn btn-outline-primary">Create
				Contract</button>
		</form:form>
	</div>
	<br>
	<br>

	<div align="center">
		<form:form
			action="viewContract?supplierId=${supplierBean.getSupplierId()}">
			<button type="submit" class="btn btn-outline-primary">Contract
				List</button>
		</form:form>
	</div>
	<br>
	<br>
	<c:if test="${!empty contractList}">
		<table class="table" border="1">
			<thead align="center" class="thead-dark">
				<tr>
					<th>Contract ID</th>
					<th>Contract Description</th>
					<th>Contract Submission Date</th>
					<th>Contract Processing Date</th>
					<th>Contract Status</th>
					<th>Supplier ID</th>
					<th>Term 1</th>
					<th>Condition 1</th>
					<th>Term 2</th>
					<th>Condition 2</th>
					<th>Term 3</th>
					<th>Condition 3</th>
					<th>Amenity</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody align="center">
				<c:forEach items="${contractList}" var="contract">
					<tr>
						<td><c:out value="${contract.contractId}" /></td>
						<td><c:out value="${contract.contractDesc}" /></td>
						<td><c:out value="${contract.contractSubDate}" /></td>
						<td><c:out value="${contract.contractProDate}" /></td>
						<td><c:out value="${contract.contractStatus}" /></td>
						<td><c:out value="${contract.supplierId}" /></td>
						<td><c:out value="${contract.term1}" /></td>
						<td><c:out value="${contract.condition1}" /></td>
						<td><c:out value="${contract.term2}" /></td>
						<td><c:out value="${contract.condition2}" /></td>
						<td><c:out value="${contract.term3}" /></td>
						<td><c:out value="${contract.condition3}" /></td>
						<td><c:out value="${contract.amenity1}" /></td>
						<td><a href="fetchContract?contractId=${contract.contractId}&supplierId=${contract.supplierId}">Edit
						</a> || <a href="deleteContract?contractId=${contract.contractId}&supplierId=${contract.supplierId}"
							onclick="myFunction()">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	<br>
	<br>
	<br>
</body>
</html>

