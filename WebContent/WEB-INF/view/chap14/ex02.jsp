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
	<h1>${name }이 사는 나라는 ${country }이고 도시는 ${city } 입니다.</h1>
	
	<c:if text="${not empty postCode }">
		<h2>우편번호 : ${postCode }</h2> <%-- Customers table에 PostalCode값 출력 --%>
	</c:if>
</body>
</html>