<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta id = "_contextPath" content = "${pageContext.request.contextPath}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script async src="../boot.js"></script>
    <title>카페입니다.</title>
    <style>
      html,
      body {
  		margin: 0;
  		padding: 0;
  		display: flex;
    	justify-content: center;
     }
     .wrap {
    	min-height: 100vh;
    	position: relative;
    	width: 100%;
    	text-align: center;
    	display: flex;
    	justify-content: center;
    	flex-direction: column;
    	
    	
	}
      section {
      	padding-top: 50px;
		padding-bottom: 50px; /* footer의 height값과 동일 */
		display: flex;
  		flex-direction: column;
  		justify-content: center;
		
	 }
	 .btn {
	 	margin-top: 30px;
	 	margin-bottom: 30px;
	 	padding-top: 10px;
	 	padding-bottom: 10px;
	 	padding-left: 80px;
	 	padding-right: 80px;
	 }
      footer {
		width: 100%;
		height: 100px; /* 내용물에 따라 알맞는 값 설정 */
		bottom: 0px;
		position: relative;
	}
    </style>
  </head>