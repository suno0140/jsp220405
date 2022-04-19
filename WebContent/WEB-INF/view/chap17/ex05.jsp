<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>자동차들</h1>
	
	<table class="table">
		<th>모델</th>
		<th>가격</th>
		<tr>
			<td>${myCar[0].model }</td>
			<td>${myCar[0].price }</td>
		</tr>
		<tr>
			<td>${myCar[1].model }</td>
			<td>${myCar[1].price }</td>
		</tr>
		<tr>
			<td>${myCar[2].model }</td>
			<td>${myCar[2].price }</td>
		</tr>
		<tr>
			<td>${myCar[3].model }</td>
			<td>${myCar[3].price }</td>
		</tr>
	</table>
</body>
</html>