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
							  
							  <button type="button" style="margin-bottom:30px; margin-left:40px; margin-right:20px;">a</button>
							  <button type="button" style="margin-bottom:30px;">a</button>
							  <button type="button" style="margin-bottom:30px;">a</button>
							  
							    <div class="main col-lg-4">
							      <div class="panel panel-primary">
							        <div class="panel-heading">Day1</div>
							        <div class="panel-body"></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
							    <div class="col-sm-4"> 
							      <div class="panel panel-primary">
							        <div class="panel-heading">Day2</div>
							        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%"></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
							    <div class="col-sm-4"> 
							      <div class="panel panel-primary">
							        <div class="panel-heading">Day3</div>
							        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%"></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
							  </div>
						</div><br>



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
			
			$(document).ready(function() { //익명함수
			      loadList();
			   });
			
			   function loadList() {
				      $.ajax({
				         url : "WordListJson.do",
				         type : "get",
				         dataType : "json",
				         success : Wordstudy,
				         error : function() {
				            alert("error");
				         }
				      });
				   }
	        function Wordstudy(data){
	            view = "<div id='main'>";
	          view +=   "<div class='container'>";
	          view +=   "<div class='row'>";
	          for(i=0; i<(data.length/5)+1; i++){
	             int count = 1;
	              view += "<div class='col-sm-4'>";
	              view += "<div class='panel panel-primary'>";
	              view += "<div class='panel-heading'>STEP"+count+"</div>";
	              $each(data, function(index, obj)){
	                 view += "<div class='panel-body'>"+for(int i=0;i<5;i++)+"</div>";
	                 view += "<div class='panel-footer'>Buy 50 mobiles and get a gift card</div>";
	              }
	              
	              ;
	              view += "</div>";
	              view += "</div>";
	              count += 1;
	          }
	         }
			</script>


	</body>
</html>