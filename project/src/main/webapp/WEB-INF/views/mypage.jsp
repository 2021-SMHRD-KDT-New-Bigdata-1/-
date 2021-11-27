

<!DOCTYPE HTML>

<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/csstest.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
		<link href="${pageContext.request.contextPath}/resources/css/vendor.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/assets/js/Chart.js"></script>
		<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
				
			<style>
			    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
			   html, body, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
				    margin: 0;
				    height:100%;
				    padding: 0;
				    border: 0;
				    font-size: 100%;
				    font: inherit;
				    vertical-align: baseline;
				}
			   		
		
			   
			    * .is-preload.alt{
				margin: 0; padding: 0;
				}
					
					body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
}		    
			    
			    body {
    -webkit-text-size-adjust: none;
}

			    .navbar {
			      margin-bottom: 50px;
			      border-radius: 0;
			    }
			    .panel-primary {
				    border-color: #000000;
				}
				
				.panel-danger {
				    border-color: #f67822;
				}
				.panel-success {
			    	border-color: #f67822;
				}
				
				body {
					    margin: 0 0 0 4em;
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
					    background-color: #000000;
					    border-color: #000000;
					    align:center;
				}
				
					.alt.top {
						display: -moz-flex;
						display: -webkit-flex;
						display: -ms-flex;
						display: flex;
						background-color: #000000;
						box-shadow: 0 0 0.25em 0 rgba(0, 0, 0, 0.15);
						cursor: default;
						font-weight: 600;
						height: 3.25em;
						left: 0;
						letter-spacing: 0.25em;
						line-height: 3.25em;
						margin: 0;
						position: fixed;
						text-transform: uppercase;
						top: 0;
						width: 100%;
						z-index: 10000;
					}
				
				
				.nav_top{
				background-color:black;
				}
				
				/* header nav a .pl{
				    border: 0;
				    display: block;
				    font-size: 0.8em;
				    float: left;
				    height: inherit;
				} */
				
				.title_menu{
				margin-left:50px;
				background-color:#000000
				}

				.title_menu > ul > li{
				background-color:#000000;
				}
				
				#weekday{
				float:left;
				font-size:1.2rem;
				color:rgba(255,255,255,0);
				display:inline-block;
				background-color:#000000;
				}
				
				#pl{
				color:white;
				background-color:#000000;
				display:block;
				}
				
				#chart_title{
				text-align:center;
				}
				
				#main-menu > li {
				  float: left;
				  position: relative;
				}
				
				#main-menu > li > a {
				  font-size: 0.85rem;
				  color: rgba(255,255,255,0.85);
				  text-align: center;
				  text-decoration: none;
				  letter-spacing: 0.05em;
				  display: block;
				  padding: 14px 36px;
				  border-right: 1px solid rgba(0,0,0,0.15);
				  text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
				}
				#sub_menu{
				margin:0;
				padding:0;
				list-style-type:none;		
				background-color:#000000;		
				color:white;
				display:none;
				}
				
				#title_name{
				color:white;
				font-size:30px;
				}
				#main_title_nav{
				width: 100%;
  display: flex;
  justify-content: center;
  position: relative;
				}
			  </style>
			
				
	</head>
	
	<body class="is-preload alt">

		<!-- Wrapper -->
			
			<div id="wrapper">

				<!-- Header -->
					<section>
					<header class="nav_top">
					<h1 id="title_name">allbareum</h1>
					<nav id="main_title_nav" role="navigation">
  <ul id="main-menu">
    <li><a href="#" onclick="submenu();">MENU1</a></li>
    <li><a href="#" onclick="submenu();">MENU2</a></li>
    <li><a href="#" onclick="submenu();">MENU3</a></li>
  </ul>
</nav>
					</header>
					</section>
				
				<!-- Main -->
					<div id="main">
						<div class="container">    
							  <div class="row">
							  
							  <select id="user_nationality" name="user_nationality" style="height:auto; font-size:25px;">
												<option value="" selected disabled>week</option> 
												<option value="eng">1주차</option> 
												<option value="ko">2주차</option>
											</select>
							  
							   <select id="user_nationality" name="user_nationality" style="height:auto; font-size:25px;">
												<option value="" selected disabled>day</option> 
												<option value="eng">day1</option> 
												<option value="ko">day2</option>
												<option value="ko">day3</option>
												<option value="ko">day4</option>
												<option value="ko">day5</option>
												<option value="ko">day6</option>
												<option value="ko">day7</option>
											</select>
							    <div class="col-12-large">
							      <div class="panel panel-primary">
							        <div id="chart_title" class="panel-heading">정확도</div>
							        <div class="panel-body">                    
                    <canvas id="myChart"></canvas>
                    
<script>
new Chart(document.getElementById("myChart"), {
    type: 'line',
    data: {
        labels: ['1', '2', '3', '4', '5', '6', '7', '8'],
        datasets: [{
            label: '테스트 데이터셋',
            data: [
                10,
                3,
                30,
                23,
                10,
                5,
                50
            ],
            borderColor: "rgba(255, 201, 14, 1)",
            fill: false,
            lineTension: 0
        },
        {
        	label: '테스트 데이터셋2',
            data: [
                15,
                5,
                10,
                15,
                15,
                10,
                20
            ],
            borderColor: "rgba(255, 201, 14, 1)",
            fill: false,
            lineTension: 0
        }
        
        ]
        
        
    },
    options: {
    	maintainAspectRatio: false,
        responsive: true,
        title: {
            display: true,
            text: '라인 차트 테스트'
        },
        tooltips: {
            mode: 'index',
            intersect: false,
        },
        hover: {
            mode: 'nearest',
            intersect: true
        },
        scales: {
            xAxes: [{
                display: true,
                scaleLabel: {
                    display: true,
                    labelString: 'x축'
                }
            }],
            yAxes: [{
                display: true,
                ticks: {
                    suggestedMin: 0,
                },
                scaleLabel: {
                    display: true,
                    labelString: 'y축'
                }
            }]
        }
    }
});

</script>
</div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
							  <div class="row">
							    <div class="col-sm-4"> 
							      <div class="panel panel-primary">
							        <div id="chart_title" class="panel-heading">음절</div>
							        <div class="panel-body"><canvas id="doughnut-chart1" width="300" height="250"></canvas>
<script>
new Chart(document.getElementById("doughnut-chart1"), {
    type: 'doughnut',
    data: {
      labels: ["Africa", "Asia"],
      datasets: [
        {
          label: "Population (millions)",
          backgroundColor: ["#3e95cd", "#8e5ea2"],
          data: [80,20]
        }
      ]
    },
    options: {
    	maintainAspectRatio: false,
        responsive: true,
    }
});
</script></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
							    
							    <div class="col-sm-4"> 
							      <div class="panel panel-primary">
							        <div id="chart_title" class="panel-heading">단어</div>
							        <div class="panel-body"><canvas id="doughnut-chart2" width="300" height="250"></canvas>
<script>
new Chart(document.getElementById("doughnut-chart2"), {
    type: 'doughnut',
    data: {
      labels: ["Africa", "Asia"],
      datasets: [
        {
          label: "Population (millions)",
          backgroundColor: ["#3e95cd", "#8e5ea2"],
          data: [80,20]
        }
      ]
    },
    options: {
    	maintainAspectRatio: false,
        responsive: true,
    }
});
</script></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
							    <div class="col-sm-4"> 
							      <div class="panel panel-primary">
							        <div id="chart_title" class="panel-heading">문장</div>
							        <div class="panel-body"><canvas id="doughnut-chart3" width="300" height="250"></canvas>
<script>
new Chart(document.getElementById("doughnut-chart3"), {
    type: 'doughnut',
    data: {
      labels: ["Africa", "Asia"],
      datasets: [
        {
          label: "Population (millions)",
          backgroundColor: ["#3e95cd", "#8e5ea2"],
          data: [80,20]
        }
      ]
    },
    options: {
    	maintainAspectRatio: false,
        responsive: true,
    }
});
</script></div>
							        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
							      </div>
							    </div>
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
			<script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
function submenu() {
	if($("#sub_menu").css("display")=="none"){
		$("#sub_menu").css("display", "block");
	}
	else{
		$("#sub_menu").css("display", "none");
	}

}
</script>
	</body>
</html>

