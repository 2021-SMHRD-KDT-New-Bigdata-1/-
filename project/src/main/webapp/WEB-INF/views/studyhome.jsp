<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
	
		<title>Forty by HTML5 UP</title>
		<meta charset="euc-kr" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" /></noscript>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	
<!-- 상단바 뒤로가기 버튼 화살표  -->	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
    crossorigin="anonymous" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 상단바 뒤로가기 버튼 화살표  -->	
		
			<style>
			    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
			    .navbar {
			      margin-bottom: 50px;
			      border-radius: 0;
			    }
			    .panel-primary {
				    border-color: #f67822;
				     width: 650px;
				}
				
				.panel-danger {
				    border-color: #f67822;
				}
				.panel-success {
			    	border-color: #f67822;
				}
				
				body {
					    margin: 0 0 0 0em;
					    background-color: #f2f2f2;
					}
			    
			    /* Remove the jumbotron's default bottom margin */ 
			     .jumbotron {
			      margin-bottom: 0;
			    }
			   
			    /* Add a gray background color and some padding to the footer */
			    footer {
			      background-color: #f2f2f2;
			      padding: 25px;
			    }
			    
			    .container {
				    padding-right: 15px;
				    padding-left: 15px;
				    margin-right: auto;
				    margin-left: auto;
				    margin-top: 50px;
				}		    
				
				.panel-primary>.panel-heading {
					    color: #fff;
					    background-color: #f67822;
					    border-color: #f67822;
				}
				
			  </style>
	<script>
	//querystring
	var num = '${num}';
	
	$(document).ready(function() { //익명함수
		  alert("제이쿼리 가즈앗!");
		
		if(num==1){
	    	Syl_loadList();
		}
		else if(num==2){
			Word_loadList();
		}
		else if(num==3){
			Sen_loadList();
		}
		else{
			alert("num인식안됨");
		}
	   });
	
	function Syl_loadList() {
		   $.ajax({
		      url : "SylList.do",
		      type : "get",
		      dataType : "json",
		      success : jsonHtml,
		      error : function() {
		      	alert("syllist-error");}
		      });
	}
	function Word_loadList() {
		   $.ajax({
		      url : "WordList.do",
		      type : "get",
		      dataType : "json",
		      success : jsonHtml,
		      error : function() {
		      	alert("wordlist-error");}
		      });
	}
	function Sen_loadList() {
		   $.ajax({
		      url : "SenList.do",
		      type : "get",
		      dataType : "json",
		      success : jsonHtml,
		      error : function() {
		      	alert("senlist-error");}
		      });
	}
	function jsonHtml(data){ //콜백함수
      view ="<table>";
      $.each(data, function(data, obj){
          view +="<tr>";
          view +="<td>";
          view +=obj.word_id;
          view +="</td>";
          view +="<td>";
          view +=obj.word_content;
          view +="</td>";
          view +="</tr>";
      })

      view +="</table>";

      $(".panel-body2").html(view);
	}
	</script>
				
	</head>
	
	<body class="is-preload">

		<!-- Header -->
					<header id="header" class="alt">
					<button onclick="back()"type="button" class="btnback"><i class="fas fa-arrow-left fa-2x"></i></button>
						
					</header>

		<!-- Wrapper -->
			<div id="wrapper">

		

				

				<!-- Main -->
					<div id="main">
						<div class="container">    
							  <div class="row">
							  
							 
							  
							    <div class="main col-lg-4">
							    <div class="col-sm-4"> 
							      <div class="panel panel-primary">
							        <div class="panel-heading">Day1</div>
							        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" ></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							      </div>
							    </div>
							    <div class="main col-lg-4">
							    <div class="col-sm-4"> 
							      <div class="panel panel-primary">
							        <div class="panel-heading">Day2</div>
							        <div class="panel-body"></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
							    </div>
							   <div class="main col-lg-4">
							    <div class="col-sm-4"> 
							      <div class="panel panel-primary">
							        <div class="panel-heading">Day3</div>
							        <div class="panel-body"></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
							    </div>
						</div><br>

					<div class="panel-body2">여기에요</div>

					</div>

				

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
		
		function back(){
	 		location.href="select.do";
	 	}
		
		
		
		</script>

			
			<script>
			   //휘 코드 안녕..
			  
			</script>


	</body>
</html>