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
<%
//코드작성

Map<String, String>map = new HashMap<>();
map.put("boy group","bts");
map.put("girl group", "aespa");

Map<String, String>map1 = new HashMap<>();
map1.put("car", "현대");
map1.put("season", "spring");

pageContext.setAttribute("map1", map);
pageContext.setAttribute("map2", map1);

%>

<p>${map1["boy group"] }</p> <%-- bts --%>
<p>${map1["girl group"] }</p> <%-- aespa --%>

<p>${map2.car }</p> <%-- 현대 --%>
<p>${map2.season }</p> <%-- spring --%>

</body>
</html>