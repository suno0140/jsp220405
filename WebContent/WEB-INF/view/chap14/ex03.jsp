<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${customer.name }은 ${customer.country }, ${customer.city }에 삽니다.</h1>
	
	<h2>우편번호 : ${customer.postCode }</h2>
</body>
</html>