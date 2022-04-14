<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>empty 연산자</h1>
	<h1>연산결과 : boolean (ture/false)</h1>
	<h1>값이 없거나 비어 있거나 null이면 true</h1>
	
	<p>${empty dflifadlkj }</p> <%-- ture --%>
	
	<% pageContext.setAttribute("newAttr1", ""); %>
	<p>${empty newAttr1 }</p> <%-- ture --%>
	
	<% pageContext.setAttribute("newAttr2", " "); %>
	<p>${empty newAttr2 }</p> <%-- false(띄어쓰기가 존재) --%>
	
	<% pageContext.setAttribute("newAttr3", new ArrayList<>()); %>
	<p>${empty newAttr3 }</p> <%-- ture --%>
	
	<% pageContext.setAttribute("newAttr4", new HashMap<>()); %>
	<p>${empty newAttr4 }</p> <%-- ture --%>
	
	<% pageContext.setAttribute("newAttr5", new String[]{}); %>
	<p>${empty newAttr5 }</p> <%-- ture --%>
	
	<hr />
	
	<h1>값이 있는 지 판단 하고 싶으면 not empty</h1>
	<p>${not empty newAttr5 }</p> <%-- false --%>
</body>
</html>