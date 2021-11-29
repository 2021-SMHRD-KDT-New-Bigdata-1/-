<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="https://kit.fontawesome.com/6d7bf23579.js" crossorigin="anonymous"></script> <!--이모티콘-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!--이모티콘-->
<title>study</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
</noscript>

<!-- 상단바 뒤로가기 버튼 화살표  -->	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
    crossorigin="anonymous" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 상단바 뒤로가기 버튼 화살표  -->	

<style>
	 .btn-default{
            background-color: #ff8040;
            width: 80px;
            color: white;
            border-radius: 15px;
        }
       
       .is-preload{
       		background-color:#f2f2f2;
       
       }
     
        
</style>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="">

		<!-- Header -->
		<header id="header" class="alt"> 
			<button onclick="back1()" type="button" class="btnback"><i class="fas fa-arrow-left fa-2x"></i></button>
		
		</header>




		<!----table ----->
		
			<div class="word">

				<table class="study2table">
					<thead>
						<tr>
							<th>단어</th>
						</tr>
						<tr>
							<th style="text-align: center; font-size: large;"><br>오뜨!!</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td onload="load()">
								<video width="100%" height="100%" autoplay="autoplay"
									id="myVideo" />
							</td>
						</tr>
						<tr>
							<td style="text-align: center; vertical-align: middle;">발음해보세용<br>
									<div class="cameraInput">
								
								<form action="http://211.223.106.113:5000/dlModel" method="POST"
									enctype="multipart/form-data">
									
									<input type="hidden" class="cameraInput1" value="" placeholder="첨부파일">
									
									<label for="cameraInput"> 
									<i class="fas fa-microphone-alt fa-2x"></i>
									</label> 
									
									<input   type="file" id="cameraInput" name="file" accept="video/*" capture="user" />
										 
										<input type="submit" value="녹화완료"/>
								</form>
							</div>
							</td>
						</tr>
					</tbody>

				</table>
				<br>

			</div>

		<!-- table 끝읏 -->
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
		function back1(){
				 location.href="studyhome1.do";
		}
	</script>
</body>
</html>