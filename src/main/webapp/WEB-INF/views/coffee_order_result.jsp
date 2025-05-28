<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	
	String select = request.getParameter("select");
	String[] options = request.getParameterValues("etc");
	String num = request.getParameter("amount");
	
	//String result = menu + " " + request.getParameter("select") +" " + request.getParameter("favnum") +"잔";

%>

<%@include file="./coffee_header.jsp" %>

<body>
	<div id='wrap'>
		<section>
	<h1>주문 확인서</h1>
		<ul>
			<li>메뉴명: ${menu }</li>
			<li>온도: <%=select %></li>
			<li>옵션: <%=String.join(" / ", options) %></li>
			<li>수량: <%=num %>잔</li>	
		</ul>
		</section>
		<%@include file="./coffee_footer.jsp" %>
		</div>
</body>
</html>