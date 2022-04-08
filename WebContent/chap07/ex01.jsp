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

<%-- include directive --%>
<%-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 --%>
<%-- 다른 파일의 내용을 현재 위치에 삽입(복붙)후 java로 변환 --%>
<%@ include file="module/header01.jsp" %>

<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum at tempore et soluta a sit aliquid vel ipsam repellendus velit nihil praesentium facilis beatae deleniti mollitia quasi totam! Eaque sapiente.</p>
	<h1>Assumenda!</h1>
	<p>Porro eveniet at accusantium nostrum doloremque explicabo obcaecati minus aut mollitia dolorem aperiam consectetur illo vitae id beatae fuga deserunt sunt ipsum iste consequatur quos qui autem quisquam quas vel.</p>
	<h1>A.</h1>
	<p>Doloribus fuga voluptatibus ducimus commodi harum ratione accusamus a nemo voluptates error cum laborum et ipsam maxime possimus cumque quia placeat deleniti. Nam earum ut nobis culpa eos! Libero id?</p>
</div>

</body>
</html>