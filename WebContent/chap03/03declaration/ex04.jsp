<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%!
private int multiply(int a, int b) {
	return a * b;
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>구구단 2단 ~ 9단</h1>
<%-- scriptlet, expression, declaration 등을 활용하여 완성 --%>

<%
for (int i = 2; i <= 9; i++) {
	for (int j = 1; j <= 9; j++){
		out.print(i + "x" + j + " = " + multiply(i, j));
		out.print("<br>");
	}
} 

%>
</body>
</html>