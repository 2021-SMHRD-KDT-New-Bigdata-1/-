<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	
	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="${pageContext.request.contextPath}/resources/fonts.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" /></noscript>
	<script src="https://kit.fontawesome.com/6d7bf23579.js" crossorigin="anonymous"></script> <!--이모티콘-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!--이모티콘-->
    <title>최종학습페이지</title>
    <style>
        #line > #index{
            width: 40px;
        }
        #line > #emo{
            width: 60px;
        }
        #foo_btn button{
            background-color: #ff8040;
            width: 100px;
            color: white;
            border-radius: 10px;
        }

    </style>
</head>
<body>
<!-- Header -->
<header id="header" class="alt"> </header>

<div style="margin-top: 100px;">

	<!-- 제목(결과) -->
    <div class="result">
        <h2 style="text-align: center;">님의 발음분석결과</h2><br>
    </div>
    <div id="score">
        <h4 style="text-align: center;">점수확인</h4><br><br>
    </div>
    
    <!-- 결과리스트  -->
    <nav>
    <table style="height: 100px; margin: auto;">
        <ul class="style1">
				<li class="first">
					<p class="date"><i class="far fa-laugh-wink fa-3x" style="color: green;"></i></p>
					<h3> ex)DAY1 > 1 </h3>
					<p> ex)사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과사과 </p>
				</li>
				<li>
					<p class="date">Jan<b>03</b></p>
					<h3>Sagittis diam dolor amet</h3>
					<p></p>
				</li>
				<li>
					<p class="date">Jan<b>01</b></p>
					<h3>Amet sed volutpat mauris</h3>
					<p></p>
				</li>
				<li>
					<p class="date">Dec<b>31</b></p>
					<h3>Sagittis diam dolor amet</h3>
					<p></p>
				</li>
			</ul>
    </table><br>
    </nav>
    
    <div id="foo_btn" style="text-align: center;">
        <button type="button" class="btn btn-default" id="exit" onclick="exit()">나가기</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="button" class="btn btn-default" id="replay" onclick="replay()">반복하기</button>
    </div>
    
</div><br>
<script>
	function exit(){
		   location.href="studyhome1.do";
	}
</script>
</body>
</html>