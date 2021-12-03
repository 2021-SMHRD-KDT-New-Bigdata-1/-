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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<noscript>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
	</noscript>
	<script src="https://kit.fontawesome.com/6d7bf23579.js" crossorigin="anonymous"></script>
	<!--이모티콘-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--이모티콘-->

	<title>최종학습페이지</title>
	<style>

	.day{
		margin-left:auto;
		margin-right: 70px;
		font-size:x-large;
	}
	
	.all{
		margin-top: 120px;
	}
	
	h2{
		vertical-align: middle;
		text-align: center;
		color:black;
		margin:auto;
	}
	#avg{
		color: white; 
	    background-color: #ff8040;
		margin-top: 21px;
		margin-bottom: 24px;
	    text-align: center;
	    margin: auto;
	    font-size: xx-large;
	    font-weight: bold;
	    border-radius: 10px;
	}
	
	
	nav{
		width: 622px;
		margin: auto;
	}
	
	ul {
		padding: 0;
		padding-left: 0;
	}
	
	div.b_utton{
		height: 100px;
		text-align: center;
		margin: auto;
	}
	
	li.first {
		padding-left: 0;
	}
	
	#btnexit{
	    margin-top: 0;
	    border: 1px solid #ff8040;
	    background-color: #ff8040;
	    border-radius: 17px;
	    height: 50px;
	    width: 128px;
	    color: white;
		font-weight:900;
	}
	
	#list55{
		color: black;
		text-align: center;
		margin: 56px;
	}
		
	.contents{
		height: 600px;
		padding-top: 20px;
		font-size: x-large;
		border: 2px solid #ffaf42;
		background-color: white;
		border-radius: 10px;
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
	
</style>
<script>

	
	
</script>
</head>
<body> 
	<%
	String day = request.getParameter("day");
	String cate = request.getParameter("cate"); //음절/단어/문장
	%>
	<!-- 히든으로 바꿀거임 -->
	<input type='hidden' id='h_c' name='h_c' value='<%=cate%>' >
	<input type='hidden' id='h_d' name='h_d' value="<%=day%>" >

	<!-- 배경색 돌아가고 싶으면 css -->
	<!-- Header -->
	<header id="header" class="alt"><p class="day">STEP <%=day %></p></header>

	<div class="all">

		<!-- 제목(결과) -->
		<div class="result">
			<h2>${vo.user_name}님의 발음분석결과</h2>
		</div>
		


		
		<!-- 점수표출 -->
		<!-- <div id="score">
			<h2 class="score1">100</h2>
		</div>  -->

		<!-- 결과리스트  -->
		<nav>
			<ul>
				<li class="first">
					<p class="date">
						<c:if test="${score >= 90 }"> <i class="far fa-laugh-wink fa-3x"></i></c:if>
						<c:if test="${score >= 60 }"> <i class="far fa-meh fa-3x"></i></c:if>
						<c:if test="${score >= 40 }"> <i class="far fa-tired fa-3x"></i></c:if>
					</p>
					
					<div id="avg">평균 몇점</div> <!-- day1 -->
					<div class="contents">
					<!-- <p id="list55">가<i class="far fa-laugh-wink fa-1x"></i></p> 제시 단어 리스트 쫘라락 -->
						<div class="602">
						여기에여
						</div>
					</div>
				</li>
				
			</ul>

			<br>
		</nav>
		<div class="b_utton">
			<button id="btnexit" onclick="exit()">나가기</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button id="btnexit" onclick="replay(<%=day%>,<%=cate%>)">반복하기</button>
		</div>
		
	</div>
	<br>
	<script>
	
	var h_cate = $("#h_c").val();
	var h_day = $("input[name=h_d]").val();
	
	$(document).ready(function() { //익명함수
		  
		//alert("제이쿼리 가장");
		//alert(h_cate);
		//alert(h_day);

		if(h_cate==1){
	    	Syl_testList();
		}
		else if(h_cate==2){
			Word_testList();
		}
		else if(h_cate==3){
			Sen_testList();
		}
		else{
			alert("h_cate인식안됨");
		}
	   });
	
	function Syl_testList() {
		alert("syn_test다녀올게용");
		   $.ajax({
		      url : "Syl_testList.do?day="+h_day,
		      type : "get",
		      dataType : "json",
		      success : jsonHtml,
		      error : function() {
		      	alert("syl_testlist-error");}
		      });
	}
	function Word_testList() {
		alert("word_test다녀올게용");
		   $.ajax({
		      url : "Word_testList.do?day="+h_day,
		      type : "get",
		      dataType : "json",
		      success : jsonHtml,
		      error : function() {
		      	alert("word_testlist-error");}
		      });
	}
	function Sen_testList() {
		alert("sen_test다녀올게용");
		   $.ajax({
		      url : "Sen_testList.do?day="+h_day,
		      type : "get",
		      dataType : "json",
		      success : jsonHtml,
		      error : function() {
		      	alert("sen_testlist-error");}
		      });
	}
	
	function jsonHtml(data){ //콜백함수
		
		
		var all_mean = 0;
		view="<div>";
		    $.each(data, function(data, obj){
		    	var mean = (parseInt(obj.speak_accuracy) + parseInt(obj.lip_accuracy))/2;
		    	
				view+="<p id='list55'><b style='color:black;'>";
				view+= obj.content;
				view+=" </b>"; 
				//view+="발음 점수 : ";
				//view+= obj.speak_accuracy;
				//view+= " / 입모양 점수 : "
				//view+= obj.lip_accuracy;
				//view+= " / 평균 : "
				view+= mean;
				all_mean += mean;
				view+= "점   ";
				if (mean > 90){
					view+= "<i class='far fa-laugh-wink fa-1x'></i>";
				}else if(mean >= 50){
					view+= "<i class='far fa-meh fa-1x'></i>";
				}else{
					view+= "<i class='far fa-tired fa-1x'></i>";
				}
				view+="</p>";
			    })
			view+="</div>";
			
			view2 = all_mean/5+" 점 ";
		
	     	$(".602").html(view);
	     	$("#avg").html(view2);

		}
	
	
		function exit() {
			location.href = "select.do";
		}
		function replay(day, cate){
			if(cate==1){
				location.href="studypage2_sy.do?day="+day;
			}else if(cate==2){
				location.href="studypage2_wo.do?day="+day;
			}else if(cate==3){
				location.href="studypage2_sen.do?day="+day;
			}else{
				alert("replay 오류!");
			}
		}
		
	</script>

</body>
</html>