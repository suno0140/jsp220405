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
<%-- 1번 직원의 이름, 생일 출력 --%>
<%-- S14Servlet06 서블릿과, Employee 자바빈을 작성하세요. --%>
	<h1>직원 ${employee.firstName } ${employee.lastName } 의 생일은 ${employee.birthDate }입니다.</h1>
</body>
</html>