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

<style>
	 .btn-default{
            background-color: #ff8040;
            width: 80px;
            color: white;
            border-radius: 15px;
        }
</style>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt"> 
			
		
		</header>




		<!----table ----->
		<div class="word1">
			<div class="word">

				<table >
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
							<th style="text-align: center;">발음해보세용~<br>
							<br>
								<button type="button" class="btn btn-default"><i class="fas fa-microphone-alt fa-2x"></i></button></th>
						</tr>
					</tbody>

				</table>
				<br>

			</div>

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

</body>
</html>