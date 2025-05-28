<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="./coffee_header.jsp" %>

<body>

<fmt:setLocale value='<%= request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message" >

<div class='wrap'>

<section >

<div>
<a href="?language=ko" >한국어</a> | <a href="?language=en" >English</a>
</div>

<button type="button" class="btn btn-outline-primary" name = 'menu' onclick="location.href='coffee_list.glb'"><fmt:message key="menu" /></button>
<button type="button" class="btn btn-outline-primary" onclick="location.href='order.glb'"><fmt:message key="order" /></button>

</section>

<%@include file="./coffee_footer.jsp" %>



</div>

 <script type = "text/javascript">
    function getContextPath(){
    	return document.getElementById('_contextPath').content;
    	
    }
    let contextPath = '';
    document.getElementById('btnTest').addEventListener('click',function(){
    	contextPath = getContextPath();
    	console.log(contextPath);
    });
    
    document.getElementById('test')..addEventListener('click',function(){
    	
    	document
    	
    });
    
    </script>

</fmt:bundle>  
</body>

</html>