<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>데이터 전송</h1>

	<!-- <form action="test" method="GET"> -->
	<form action="http://127.0.0.1:5000/dlModel" method="POST"
	enctype = "multipart/form-data">
		<input type="file" name="file"> 
		<input type="submit" value="전송">
	</form>
</body>
</html>
