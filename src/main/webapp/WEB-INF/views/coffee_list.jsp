<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%
	HashMap<String, String> map = (HashMap<String, String>)request.getAttribute("coffee_list");

%>

<%@include file="./coffee_header.jsp" %>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<div id='wrap'>
<section>
	<ul>
		<%
			for (String code : map.keySet()){
				String menu = (String) map.get(code);
			%>
			<li><%= menu  %></li>
		<%
			}
		%>
			
		</ul>
		</section>
		<%@include file="./coffee_footer.jsp" %>
		</div>
	</body>
</html>