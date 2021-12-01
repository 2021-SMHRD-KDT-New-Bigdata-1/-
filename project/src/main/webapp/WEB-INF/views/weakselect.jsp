<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/csstest.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
<script
   src="${pageContext.request.contextPath}/resources/assets/js/Chart.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
</script>

   <!--이모티콘-->
      <link rel="stylesheet"
         href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <!--이모티콘-->

<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
html, body, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
   blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
   em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
   b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
   table, caption, tbody, tfoot, thead, tr, th, td, article, aside, footer,
   header, hgroup, menu, nav, output, ruby, section, summary, time, mark,
   audio, video {
   margin: 0;
   height: 100%;
   padding: 0;
   border: 0;
   font-size: 100%;
   font: inherit;
   vertical-align: baseline;
}

html, body {
   width: 100%;
   height: 100%;
   margin: 0;
   padding: 0;
}

select { -
   -input-height: var(- -vspace-2); -
   -input-line-height: var(- -vspace-1); -
   -input-vpadding: calc((( var(- -input-height)- var(- -input-line-height))/2)-
      
       1px);
   display: block;
   height: var(- -input-height);
   padding: var(- -input-vpadding) calc(2.4rem - 1px);
   border: 0;
   outline: 0;
   color: var(- -color-placeholder);
   font-family: var(- -font-1);
   font-size: var(- -text-sm);
   font-size: calc(var(- -text-size)* 0.8889);
   line-height: var(- -input-line-height);
   max-width: 100%;
   background-color: var(- -color-gray-3);
   border: 1px solid transparent;
   transition: all .3s ease-in-out;
   border-radius: var(- -border-radius);
}

* .is-preload.alt {
   margin: 0;
   padding: 0;
}

body {
   font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
   font-size: 14px;
   line-height: 1.42857143;
   color: #333;
   background-color:#f2f2f2;
}

body {
   -webkit-text-size-adjust: none;
}

.navbar {
   margin-bottom: 50px;
   border-radius: 0;
}

.panel-primary {
   border-color: #D2691E;
   border-radius: 10px;
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
}

.panel-primary>.panel-heading {
   font-size: 1rem;
    font-weight: bolder;
   color: #fff;
   background-color: #ff8040;
   align: center;
   border-block-color: unset;
}

.alt.top {
   display: -moz-flex;
   display: -webkit-flex;
   display: -ms-flex;
   display: flex;
   background-color: ##D2691E;
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

.nav_top {
   background-color: #ff8040;
}

/* header nav a .pl{
                border: 0;
                display: block;
                font-size: 0.8em;
                float: left;
                height: inherit;
            } */
.title_menu {
   margin-left: 50px;
   background-color: #D2691E
}

.title_menu>ul>li {
   background-color: #D2691E;
}

#weekday {
   float: left;
   font-size: 1.2rem;
   color: rgba(255, 255, 255, 0);
   display: inline-block;
   background-color: #D2691E;
}

#pl {
   color: white;
   background-color: #000000;
   display: block;
}

#chart_title {
   text-align: center;
}

#main-menu>li {
   float: left;
   position: relative;
}

#main-menu>li>a {
   font-size: 1rem;
    font-weight: bolder;
   color: rgba(255, 255, 255, 0.85);
   text-align: center;
   text-decoration: none;
   letter-spacing: 0.05em;
   display: block;
   padding: 14px 20px;
   text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
}

#sub_menu {
   margin: 0;
   padding: 0;
   list-style-type: none;
   background-color: ##D2691E;
   color: white;
   display: none;
}

#title_name {
   color: white;
   font-size: 30px;
}

#main_title_nav {
   width: 100%;
   display: flex;
   justify-content: center;
   position: relative;
}
</style>


</head>

<body class="is-preload alt">

   <!-- Wrapper -->

   <div id="wrapper" style="padding: 0;">

      <!-- Header -->
      <section>
         <header class="nav_top">
            <h1 id="title_name" style="margin-left: 20px;"><a href="main.do">Allbareum</a></h1>
            <nav id="main_title_nav" role="navigation">
               <ul id="main-menu" style="list-style: none;">
                  <li><a onclick="Syl_weak();">음절</a></li>
                  <li><a onclick="Word_weak();">단어</a></li>
                  <li><a onclick="Sen_weak();">문장</a></li>
               </ul>
            </nav>
         </header>
      </section>

      <!-- Main -->
      <div id="main">
         <div class="container">
            <div class="row" style="margin-left: -32px;margin-top: 32px;">


               <div class="col-12-small"
                  style="width: 100%; min-width: 349.5px; margin-top: 20px;">
                  <div class="panel panel-primary">
                     <div id="chart_title" class="panel-heading">취약단어</div>
                     <div class="panel-body">
                     <c:if test="${list==null}">
                    	 취약단어가 없군요 대단합니다!
                     </c:if>
                     <c:if test="${list!=null }">
                     		<table>
                     			<tr style="width:100%;">
                     			<td style="float:left; margin-left:40px; text-align:center; font-size:20px; font-weight: bold;">취약단어</td>
                     			<td style="float:right; margin-right:50px; text-align:center; font-size:20px; font-weight: bold;">정확도</td>
                     			</tr>
                     	<c:forEach var="list" items="${list}" varStatus="status">
                     			<tr style="width:100%;"><td style="float:left; margin-left:40px;">${list.content }</td>
                     			<td style="float:right; margin-right:50px;">정확도:${list.accuracy }</td></tr>
                     	</c:forEach>
                     		</table>
                     
                     </c:if>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <br>



   </div>




   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.scrolly.min.js"></script>
   <script src="assets/js/jquery.scrollex.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

   <script>
   function Syl_weak() {
	      location.href="Syl_weak.do";
	}
   function Word_weak() {
	      location.href="Word_weak.do";
	}
   function Sen_weak() {
	      location.href="Sen_weak.do";
	}
   </script>
</body>
</html>