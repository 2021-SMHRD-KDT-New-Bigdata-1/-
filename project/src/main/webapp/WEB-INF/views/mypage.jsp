<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/resources/chart/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/resources/chart/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/resources/chart/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${pageContext.request.contextPath}/resources/chart/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/chart/css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/chart/lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/chart/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/chart/css/style-responsive.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/resources/chart/lib/chart-master/Chart.js"></script>
<script src="${pageContext.request.contextPath}/resources/chart/js/Chart.js"></script>
  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>DASH<span>IO</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
			<ul class="nav top-menu">
          <li><a href="#">마이페이지</a></li>
          <li><a href="#">음절</a></li>
          <li><a href="#">단어</a></li>
          <li><a href="#">문장</a></li>
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="login.html">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">Sam Soffes</h5>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>week1</span>
              </a>
            <ul class="sub">
              <li><a href="#">Day1</a></li>
              <li><a href="#">Day2</a></li>
              <li><a href="#">Day3</a></li>
              <li><a href="#">Day4</a></li>
              <li><a href="#">Day5</a></li>
              <li><a href="#">Day6</a></li>
              <li><a href="#">Day7</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>week2</span>
              </a>
            <ul class="sub">
              <li><a href="#">Day1</a></li>
              <li><a href="#">Day2</a></li>
              <li><a href="#">Day3</a></li>
              <li><a href="#">Day4</a></li>
              <li><a href="#">Day5</a></li>
              <li><a href="#">Day6</a></li>
              <li><a href="#">Day7</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>week3</span>
              </a>
            <ul class="sub">
              <li><a href="#">Day1</a></li>
              <li><a href="#">Day2</a></li>
              <li><a href="#">Day3</a></li>
              <li><a href="#">Day4</a></li>
              <li><a href="#">Day5</a></li>
              <li><a href="#">Day6</a></li>
              <li><a href="#">Day7</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>week4</span>
              </a>
            <ul class="sub">
              <li><a href="#">Day1</a></li>
              <li><a href="#">Day2</a></li>
              <li><a href="#">Day3</a></li>
              <li><a href="#">Day4</a></li>
              <li><a href="#">Day5</a></li>
              <li><a href="#">Day6</a></li>
              <li><a href="#">Day7</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>week5</span>
              </a>
            <ul class="sub">
              <li><a href="#">Day1</a></li>
              <li><a href="#">Day2</a></li>
              <li><a href="#">Day3</a></li>
              <li><a href="#">Day4</a></li>
              <li><a href="#">Day5</a></li>
              <li><a href="#">Day6</a></li>
              <li><a href="#">Day7</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>week6</span>
              </a>
            <ul class="sub">
              <li><a href="#">Day1</a></li>
              <li><a href="#">Day2</a></li>
              <li><a href="#">Day3</a></li>
              <li><a href="#">Day4</a></li>
              <li><a href="#">Day5</a></li>
              <li><a href="#">Day6</a></li>
              <li><a href="#">Day7</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>week7</span>
              </a>
            <ul class="sub">
              <li><a href="#">Day1</a></li>
              <li><a href="#">Day2</a></li>
              <li><a href="#">Day3</a></li>
              <li><a href="#">Day4</a></li>
              <li><a href="#">Day5</a></li>
              <li><a href="#">Day6</a></li>
              <li><a href="#">Day7</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
         
                <!-- section -->
                <div class="col-lg-9 main-chart" style="display:inline-block">
                <div class="border-head">
                  <h3>정확도</h3>
                </div>
                  <div class="White-panel pn">
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
                </div>
                <!-- section -->
                <div class="row mt">
              <!-- SERVER STATUS PANELS -->
              <div class="col-md-4 col-sm-4 mb"> <!-- width 33% -->
                <div class="grey-panel pn donut-chart">
                  <div class="border-head">
                  <h3>음절 정확도</h3>
                </div>
                  <div style="display:inline-block">
                  <canvas id="doughnut-chart" height="250" width="250"></canvas>
					</div>
					<script>
					new Chart(document.getElementById("doughnut-chart"), {
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
					</script>
                  
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4-->
              <div class="col-md-4 col-sm-4 mb">
                <div class="grey-panel pn donut-chart">
                  <div class="border-head">
                  <h3>단어 정확도</h3>
                </div>
                  <div style="display:inline-block">
                  <canvas id="chart_test1" height="250" width="250"></canvas>
					</div>
					<script>
					new Chart(document.getElementById("chart_test1"), {
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
					</script>
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 col-sm-4 mb">
                <div class="grey-panel pn donut-chart">
                  <div class="border-head">
                  <h3>문장 정확도</h3>
                </div>
                <div style="display:inline-block">
                  <canvas id="chart_test" height="250" width="250"></canvas>
					</div>
					<script>
					new Chart(document.getElementById("chart_test"), {
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
					</script>
                  
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4 -->
                <!-- section1 -->
                 
                  </div>
                  
                  <div class="row mt">
              <!-- SERVER STATUS PANELS -->
              <div class="col-md-4 col-sm-4 mb"> <!-- width 33% -->
                <div class="grey-panel pn donut-chart">
                  <div class="border-head">
                  <h3>음절 정확도</h3>
                </div>
                  <div style="display:inline-block">
                  <canvas id="doughnut-chart4" height="250" width="250"></canvas>
					</div>
					<script>
					new Chart(document.getElementById("doughnut-chart4"), {
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
					</script>
                  
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4-->
              <div class="col-md-4 col-sm-4 mb">
                <div class="grey-panel pn donut-chart">
                  <div class="border-head">
                  <h3>단어 정확도</h3>
                </div>
                  <div style="display:inline-block">
                  <canvas id="chart_test3" height="250" width="250"></canvas>
					</div>
					<script>
					new Chart(document.getElementById("chart_test3"), {
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
					</script>
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 col-sm-4 mb">
                <div class="grey-panel pn donut-chart">
                  <div class="border-head">
                  <h3>문장 정확도</h3>
                </div>
                <div style="display:inline-block">
                  <canvas id="chart_test2" height="250" width="250"></canvas>
					</div>
					<script>
					new Chart(document.getElementById("chart_test2"), {
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
					</script>
                  
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4 -->
                <!-- section1 -->
                 
                  </div>
          <!-- g-3 -->
        <!-- /row -->
      </section>
      
    </section>
    <!--main content end-->
    <!--footer start-->
    
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${pageContext.request.contextPath}/resources/chart/lib/jquery/jquery.min.js"></script>

  <script src="${pageContext.request.contextPath}/resources/chart/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/resources/chart/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/jquery.scrollTo.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="${pageContext.request.contextPath}/resources/chart/lib/common-scripts.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/chart/lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/chart/lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="${pageContext.request.contextPath}/resources/chart/lib/sparkline-chart.js"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/zabuto_calendar.js"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/flot/jquery.flot.js"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/flot/jquery.flot.resize.js"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/flot/jquery.flot.stack.js"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/flot/jquery.flot.crosshair.js"></script>
  <script src="${pageContext.request.contextPath}/resources/chart/lib/flotchart-conf.js"></script>
  <script type="text/javascript">
  
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to Dashio!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
        // (string | optional) the image to display on the left
        image: 'img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  </script>
</body>

</html>
