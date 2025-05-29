<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="./coffee_header.jsp" %>

	<body>
	<div id='wrap'>
<section>
		<form action="${pageContext.request.contextPath}/coffee/order" method="post">
		<h1>주문하기</h1>
		<h3>[메뉴]</h3>
		<select name="name">
			<option disabled hidden selected>
			    메뉴를 선택하세요.
			  </option>
						<c:forEach var="menu" items="${menu}">
							<option value="${menu.key}">${menu.value}</option>
						</c:forEach>
					</select>
		<h3> [아이스 혹은 핫] </h3>
		<input type='radio' name='select' value='아이스' />아이스
		<input type='radio' name='select' value='핫' />핫
		<h3>[옵션]</h3>
		<input type='checkbox' name='etc' value='시럽 많이' /> 시럽 많이
		<input type='checkbox' name='etc' value='빨대 포함' /> 빨대 포함
		<input type='checkbox' name='etc' value='캐리어 포함' /> 캐리어 포함
		<h3>[수량]</h3>
		<input type="number" id = "amount" name="amount" min="1" max="9" placeholder = "수량">
		<input type="button" id='btnCheckAmount' value='재고확인'>
		<br>
		<div style = "text-align: center">
		<input class="btn btn-outline-primary" type="submit" value="주문하기">
		</div>
		</form>
		</section>
		<%@include file="./coffee_footer.jsp" %>
		
		
		<script>
			
			$(document).ready(function(){
			    $("#btnCheckAmount").click(checkAmount); 
			});
			
			function checkAmount(){
				
			let amount = document.getElementById('amount').value ;
			
			$.ajax({
			  method: "POST",
			  url: "/test/coffee/checkAmount",
			  data: { amount : amount }
			})
			  .done(function( msg ) {
				if (msg.result == "success"){
					alert("주문이 가능합니다.");
				} else if (msg.result == "fail") {
					alert("재고가 부족합니다.");
				} else {
					alert("???");
				}
			   
			  });
			  }
			
		</script>
			
	</div>
	</body>
	
</html>