<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://unpkg.com/webcam-easy/dist/webcam-easy.min.js">

</script>
<script>
document
.getElementById("cameraInput")
.addEventListener("change", function () {
  document
    .getElementById("pictureFromCamera")
    .setAttribute("src", window.URL.createObjectURL(this.files[0]));
});
</script>
</head>
<body>
	 <h1>데이터 전송</h1>


	<form action="http://211.223.106.113:5000/dlModel" method="POST"
	enctype = "multipart/form-data">
		<input type="file" id="cameraInput" name="file" accept="video/*" capture="user"> 
		<input type="submit" value="녹화완료">
	</form>
	
	<img id="pictureFromCamera" /> 
		
</body>
</html>
