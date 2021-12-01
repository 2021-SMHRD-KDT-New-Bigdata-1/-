<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/vendor.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
	</noscript>
	<script src="https://kit.fontawesome.com/6d7bf23579.js" crossorigin="anonymous"></script>
	<!--이모티콘-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--이모티콘-->

	<title>최종학습페이지</title>
<style>
	
	body{
		background-color:white;
	} /* 이거 지우면 다시 배경색 되돌아감~ */
	
	h2{
		vertical-align: middle;
		text-align: center;
		color:black;
	}
	
	#foo_btn button {
		background-color: #ff8040;
		width: 100px;
		color: white;
		border-radius: 10px;
	}
	
	.b_utton{
		vertical-align: middle;
		text-align: center;
	}
	
	.far fa-laugh-wink fa-3x{
		color: green;
	}
	
	.far fa-laugh-meh fa-3x{
		color: orange;
	}
	
	.far fa-laugh-tired fa-3x{
		color: red;
	}
	h3{
		color:white;
	}
	
</style>
<script>
		
		function WordList() {
			   $.ajax({
			      url : "WordList.do",
			      type : "get",
			      dataType : "json",
			      success : jsonHtml,
			      error : function() {
			      	alert("word-error");}
			      });
		}
		
		function jsonhtml(data){
			view = "<nav>";
			view += "<ul class='style1'>";
			view += "<li class='first'>";
			view += "<p class='date'>";
			view += "</p>";
			var count = 0;
			var day = 0;
			$.each(data, function(num, model) {
				view += "<h3>"+model.study_date+"</h3>";
				view += "<p>"+model.word_content+"</p>";
			})
			
			view += "</li>";
			view += "</ul>";
			view += "</nav>";
		}
</script>
</head>
<body> <!-- 배경색 돌아가고 싶으면 css -->
	<!-- Header -->
	<header id="header" class="alt"> </header>

	<div style="margin-top: 100px;">

		<!-- 제목(결과) -->
		<div class="result">
			<h2>${vo.user_name}님의 발음분석결과</h2>
			<br>
		</div>
		
		<!-- 점수표출 -->
		<div id="score">
			<h2 class="score1">{}총점수보여주기</h2>
		</div>

		<!-- 결과리스트  -->
		<nav>
			<ul style="background-color:white;">
				<li class="first">
					<p class="date">
						<c:if test="${score >= 90 }"> <i class="far fa-laugh-wink fa-3x"></i></c:if>
						<c:if test="${score >= 60 }"> <i class="far fa-meh fa-3x"></i></c:if>
						<c:if test="${score >= 40 }"> <i class="far fa-tired fa-3x"></i></c:if>
						
					</p>
					<h3>{study_date}</h3> <!-- day1 -->
					<p>{word_content}</p> <!-- 제시 단어 리스트 쫘라락 -->
				</li>
				
			</ul>

			<br>
		</nav>
		<div class="b_utton">
			<button id="btnselect" onclick="exit()">나가기</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button id="btnselect" onclick="replay()">반복하기</button>
		</div>
		
	</div>
	<br>
	<script>
		function exit() {
			location.href = "studyhome.do";
		}

	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>