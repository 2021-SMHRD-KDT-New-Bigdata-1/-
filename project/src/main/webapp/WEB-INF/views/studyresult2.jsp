<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/default.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/resources/fonts.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
</noscript>
<title>study</title>
<!-- 상단바 뒤로가기 버튼 화살표  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 상단바 뒤로가기 버튼 화살표  -->

<style>
.btn-default {
	background-color: #ff8040;
	width: 100px;
	color: white;
	border-radius: 15px;
}

.myResult {
	padding: 0px !important;
	height: 10px;
}

#result {
	clear: both !important;
	position: static !important;
	margin-top: 80px !important;
}

body {
	background-color: #f2f2f2
}
</style>
<head>
<!-- <script>
	        function load() {
	            var video = document.getElementById('myVideo');
	            if (navigator.webkitGetUserMedia) {
	                navigator.webkitGetUserMedia({audio:true, video:true},
	                    function(stream) { video.src = webkitURL.createObjectURL(stream); },
	                    function(error) { alert('ERROR: ' + error.toString()); } );
	            } else {
	                alert('webkitGetUserMedia not supported');
	            }
	        }
        </script> -->
</head>
<body>
	<%
		String data = request.getParameter("result");
	%>

	<!-- Header -->
	<header id="header" class="alt">
		<button type="button" class="btnback">
			<i class="fas fa-arrow-left fa-2x"></i>
		</button>
	</header>

	<!-- 한 단어당 보여주는 결과창 -->
	<table id="result" style="margin: auto;">
		<thead>
			<tr>
				<th class="myResult">분석결과</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<th style="height: 60px; width: 350px; text-align: center; font-size: large; word-break: keep-all;">
					내부구성에따라 상단과 하단으로 옷장/옷장, 옷장/이불장으로 선택하여 사용할 수 있습니다.
				</th>
			</tr>
			<tr>
				<td style="border: 1px solid white;">
				결과는 <%=data %>
				</td>
					<!-- <video width="30%" height="30%" autoplay="autoplay" id="myVideo"></td> -->
			</tr>
			<tr>
				<th style="padding-top: 40px; height: 120px; text-align: center;">
					<button type="submit" class="btn btn-default" id="return" onclick="history.back()">다시하기</button> &nbsp; &nbsp;
					<button type="submit" class="btn btn-default" id="pass">넘어가기</button> &nbsp; &nbsp;
					<button class="btn btn-default" id="synonym">유사단어</button>
				</th>
			</tr>
		</tbody>
	</table>
</body>
</html>