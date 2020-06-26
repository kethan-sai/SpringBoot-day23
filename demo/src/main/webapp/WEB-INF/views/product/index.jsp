<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet" >
<title>Product Page</title>
</head>
<body>

	<h3>Products Page</h3>
	<table class="table">
	<thead>
		<tr>
			<th scope="col">Id</th>
			<th scope="col">Name</th>
			<th scope="col">Photo</th>
			<th scope="col">Price</th>
			<th scope="col">Buy</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="product" items="${products }">
			<tr>
				<td>${product.id }</td>
				<td>${product.name }</td>
				<td><img
					src="${pageContext.request.contextPath }/resources/static/images/${product.photo }"
					width="50"></td>
				<td>${product.price }</td>
				<td align="center"><a
					href="${pageContext.request.contextPath }/cart/buy/${product.id}">Buy
						Now</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</body>
</html>