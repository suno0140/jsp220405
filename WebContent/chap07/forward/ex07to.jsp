<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
<%-- http://localhost:8080/jsp20220405/chap07/forward/ex06from.jsp --%>
<%
Map<String, String> map = (Map<String, String>) request.getAttribute("movies");
List<String> attr2 = (List<String>) request.getAttribute("names");
%>

<%
for (String name : maps) {
%>
	<li><%= name %></li> <%-- 3개의 list item 출력 --%>
<%
}
%>
<ul>
<%
for (String name : attr2) {
%>
	<li><%= name %></li> <%-- 3개의 list item 출력 --%>
<%
}
%>

</ul>
</body>
</html>