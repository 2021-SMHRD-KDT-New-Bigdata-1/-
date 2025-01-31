<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js" >
<head>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Spurgeon</title>

    <script>
        document.documentElement.classList.remove('no-js');
        document.documentElement.classList.add('js');
    </script>

    <!-- CSS
    ================================================== -->
<link href="${pageContext.request.contextPath}/resources/css/vendor.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css">

    <!-- favicons
    ================================================== -->
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css">
    <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/images/favicon-16x16.png.png">
    <link rel="manifest" href="site.webmanifest">
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script>

   //querystring
   var cate = '${cate}';
   
   $(document).ready(function() { //익명함수
        //alert("제이쿼리 가즈앗!");
      
      if(cate==1){
          Syl_loadList();
      }
      else if(cate==2){
         Word_loadList();
      }
      else if(cate==3){
         Sen_loadList();
      }
      else{
         alert("cate인식안됨");
      }
      });
   
   function Syl_loadList() {
         $.ajax({
            url : "SylList.do",
            type : "get",
            dataType : "json",
            success : jsonHtml1,
            error : function() {
               alert("syllist-error");}
            });
   }
   function Word_loadList() {
         $.ajax({
            url : "WordList.do",
            type : "get",
            dataType : "json",
            success : jsonHtml2,
            error : function() {
               alert("wordlist-error");}
            });
   }
   function Sen_loadList() {
         $.ajax({
            url : "SenList.do",
            type : "get",
            dataType : "json",
            success : jsonHtml3,
            error : function() {
               alert("senlist-error");}
            });
   }
   function jsonHtml1(data){ //콜백함수
	   view ="<header id='header' class='alt'>"
       view +="<div style='text-align: left; padding: 4px 0px 0px 25px;'>"
       //view +="<button onclick=back() type='button' class='btnback'>"
       //view +="<i class='fas fa-arrow-left fa-2x'></i>"
       //view +="</button>"
       view +="<a class='syll_logo'><strong>음절 (Syllable)</strong></a><br><br>"
       view +="</div> " 
       view +="</header>"
      view += "<div id='wrapper'>";
      view += "<div id='main'>";
      view += "<div class='container'>";
      view += "<div class='row'>";
      view += "<div class='main col-lg-4' style='margin-right:auto; margin-left:auto;'>";
      view += "<div class='col-sm-4'>";
      view += "<div class='panel panel-primary' onclick=studypageGo("+1+",1)>";
      view += "<div class='panel-heading' >Step1</div>";
      view += "<div class='panel-body'>";
       view +="<table class='syll_home'	style='border: 2px solid #fc965a; padding: 5px 5px 5px 5px;'>";
       view += "<tr>";
       var count = 0;
       var day = 2;
       $.each(data, function(data, obj){
          if(count<4){
              view +="<td>";
               view += obj.content;
               view +="</td>";
               count += 1;
          }
          else if(count == 4){
             view +="<td>";
               view += obj.content;
               view +="</td>";
               view +="</tr>";
               view +="</table>";
               view += "</div>";
             view += "</div>";
             view += "</div>";
             view += "</div>";
              view += "<div class='main col-lg-4' style='margin-right:auto; margin-left:auto;'>";
             view += "<div class='col-sm-4'>";
             view += "<div class='panel panel-primary' onclick=studypageGo("+day+",1)>";
             view += "<div class='panel-heading'>Step"+day+"</div>";
             view += "<div class='panel-body'>";
              view +="<table style='border: 2px solid #fc965a; padding: 5px 5px 5px 5px;'>";
              view += "<tr>";
              day += 1;
               count = 0;
          }

             
       })
       view += "</div>";
       view += "</div>";
       view += "</div>";
       view += "</div>";

      $(".panel-body2").html(view);
   }
   function jsonHtml2(data){ //콜백함수
	   view ="<header id='header' class='alt'>"
	   view +="<div style='text-align:left; padding: 0px 0px 0px 30px;'>"
	   //view +="<button onclick=back() type='button' class='btnback'>"
	   //view +="<i class='fas fa-arrow-left fa-2x'></i>"
	   //view +="</button>"
	   view +="<a class='word_logo'><strong>단어 (Word)</strong></a><br><br>"
	   view +="</div> " 
	   view +="</header>"
      view += "<div id='wrapper'>";
      view += "<div id='main'>";
      view += "<div class='container'>";
      view += "<div class='row'>";
      view += "<div class='main col-lg-4' style='margin-right:auto; margin-left:auto;'>";
      view += "<div class='col-sm-4'>";
      view += "<div class='panel panel-primary' onclick=studypageGo("+1+",2)>";
      view += "<div class='panel-heading'>Step1</div>";
      view += "<div class='panel-body'>";
       view +="<table class='word_home' style='border: 2px solid #fc965a; padding: 5px 5px 5px 5px;'>";
       view += "<tr>";
       var count = 0;
       var day = 2;
       $.each(data, function(data, obj){
          if(count<4){
              view +="<td>";
               view += obj.content;
               view +="</td>";
               count += 1;
          }
          else if(count == 4){
             view +="<td>";
               view += obj.content;
               view +="</td>";
               view +="</tr>";
               view +="</table>";
               view += "</div>";
             view += "</div>";
             view += "</div>";
             view += "</div>";
              view += "<div class='main col-lg-4' style='margin-right:auto; margin-left:auto;'>";
             view += "<div class='col-sm-4'>";
             view += "<div class='panel panel-primary' onclick=studypageGo("+day+",2)>";
             view += "<div class='panel-heading'>Step"+day+"</div>";
             view += "<div class='panel-body'>";
              view +="<table class='word_home' style='border: 2px solid #fc965a; padding: 5px 5px 5px 5px;'>";
              view += "<tr>";
              day += 1;
               count = 0;
          }
             
       })
       view += "</div>";
       view += "</div>";
       view += "</div>";
       view += "</div>";

      $(".panel-body2").html(view);
   }
   function jsonHtml3(data){ //콜백함수
	   
	  view ="<header id='header' class='alt'>"
	  view +="<div style='text-align:left; padding: 0px 0px 0px 30px;'>"
	  //view +="<button onclick=back() type='button' class='btnback'>"
	  //view +="<i class='fas fa-arrow-left fa-2x'></i>"
	  //view +="</button>"
	  view +="<a class='syll_logo'><strong>문장 (Sentence)</strong></a><br><br>"
	  view +="</div> " 
	  view +="</header>"
      view += "<div id='wrapper'>";
      view += "<div id='main'>";
      view += "<div class='container'>";
      view += "<div class='row'>";
      view += "<div class='main col-lg-4' style='margin-right:auto; margin-left:auto;'>";
      view += "<div class='col-sm-4'>";
      view += "<div class='panel panel-primary' onclick=studypageGo("+1+",3)>";
      view += "<div class='panel-heading'>Step1</div>";
      view += "<div class='panel-body'>";
      
       view +="<table style='border: 2px solid #fc965a; padding: 5px 5px 5px 5px;'>";
       var count = 0;
       var day = 2;
       $.each(data, function(data, obj){
          if(count<4){
             view += "<tr>";
              view +="<td>";
               view += obj.content;
               view +="</td>";
               view += "</tr>";
               count += 1;
          }
          else if(count == 4){
             view += "<tr>";
             view +="<td>";
               view += obj.content;
               view +="</td>";
               view +="</tr>";
               view +="</table>";
               view += "</div>";
             view += "</div>";
             view += "</div>";
             view += "</div>";
              view += "<div class='main col-lg-4' style='margin-right:auto; margin-left:auto;'>";
             view += "<div class='col-sm-4'>";
             view += "<div class='panel panel-primary' onclick=studypageGo("+day+",3)>";
             view += "<div class='panel-heading'>Step"+day+"</div>";
             view += "<div class='panel-body'>";
              view +="<table style='border: 2px solid #fc965a; padding: 5px 5px 5px 5px;'>";
              day += 1;
               count = 0;
          }
             
       })
       view += "</table >";
       
       view += "</div>";
       view += "</div>";
       view += "</div>";
       view += "</div>";
       view += "</div>";
       view += "</div>";
       view += "</div>";
       view += "</div>";
       

      $(".panel-body2").html(view);
   }
   
   function studypageGo(day, cate){
      if(cate==1){
         location.href="studypage2_sy.do?day="+day;
      }else if(cate==2){
         location.href="studypage2_wo.do?day="+day;
      }else if(cate==3){
         location.href="studypage2_sen.do?day="+day;
      }else{
         alert("studypageGo 오류!");
      }
      
   }
   
   function back(){
       location.href="select.do";
    }
   
   
   
   </script>

</head>


<body id="top">


    <!-- preloader
    ================================================== -->
    <div id="preloader">
        <div id="loader" class="dots-fade">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>


    <!-- page wrap
    ================================================== -->
    <div id="page" class="s-pagewrap ss-home">


        <!-- # site header 
        ================================================== -->
        <header id="masthead" class="s-header">

            <div class="s-header__branding">
                <p class="site-title">
                    <a  href="select.do" rel="home" style="color: black; font-size: x-large; margin-left: 570px; font-family: var(--font-2);" >Allbareum</a>
                </p>
            </div>

            <div class="row s-header__navigation">

                <nav class="s-header__nav-wrap">
    
                    <h3 class="s-header__nav-heading">Navigate to</h3>
    
                    <ul class="s-header__nav">
                        <li class="current-menu-item"><a href="index.html" title="">Home</a></li>
                        <li class="has-children">
                            <a href="#0" title="" class="">Categories</a>
                            <ul class="sub-menu">
                                <li><a href="category.html">Design</a></li>
                                <li><a href="category.html">Lifestyle</a></li>
                                <li><a href="category.html">Inspiration</a></li>
                                <li><a href="category.html">Work</a></li>
                                <li><a href="category.html">Health</a></li>
                                <li><a href="category.html">Photography</a></li>
                            </ul>
                        </li>
                        <li class="has-children">
                            <a href="#0" title="" class="">Blog</a>
                            <ul class="sub-menu">
                                <li><a href="single-standard.html">Standard Post</a></li>
                                <li><a href="single-video.html">Video Post</a></li>
                                <li><a href="single-audio.html">Audio Post</a></li>
                            </ul>
                        </li>
                        <li><a href="styles.html" title="">Styles</a></li>
                        <li><a href="about.html" title="">About</a></li>
                        <li><a href="contact.html" title="">Contact</a></li>
                    </ul> <!-- end s-header__nav -->

                </nav> <!-- end s-header__nav-wrap -->
    
            </div> <!-- end s-header__navigation -->

            <div class="s-header__search">

                <div class="s-header__search-inner">
                    <div class="row">
    
                        <form role="search" method="get" class="s-header__search-form" action="#">
                            <label>
                                <span class="u-screen-reader-text">Search for:</span>
                                <input type="search" class="s-header__search-field" placeholder="Search for..." value="" name="s" title="Search for:" autocomplete="off">
                            </label>
                            <input type="submit" class="s-header__search-submit" value="Search"> 
                        </form>
    
                        <a href="#0" title="Close Search" class="s-header__search-close">Close</a>
    
                    </div> <!-- end row -->
                </div> <!-- s-header__search-inner -->
    
            </div> <!-- end s-header__search -->

        

        </header> <!-- end s-header -->


        <!-- # site-content
        ================================================== -->
        <section id="content" class="s-content">


            <!-- hero -->
            <div class="hero">

                <div class="hero__slider swiper-container">

                    <div class="swiper-wrapper">
                        <article class="hero__slide swiper-slide">
                            <div class="hero__entry-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/thumbs/featured/select_back.png');"></div>
                            <div class="hero__entry-text">
                                <div class="hero__entry-text-inner" style="margin-top: 40px; padding-top:30px;">
                                

          
			<!--  loginform...........................----------------------------------------->
							
								<div id="main">
                                    <div id="hero__entry-meta">
                                        <span class="cat-links">
                                            	<!-- 여기에..들어가볼까? -->
                                            	
                						<div class="panel-body2">dd
                						</div>
                                        </span>
                                </div>
                                    
                                    
                          
              
 
              <!--  loginform close...........................------------------------------------>     
                            </div>
                        </article>
                        <article class="hero__slide swiper-slide">
                            <div class="hero__entry-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/thumbs/featured/main_back.png');"></div>
                            <div class="hero__entry-text">
                                <div class="hero__entry-text-inner">
                                    <div class="hero__entry-meta">
                                        <span class="cat-links">
                                            <a style="font-weight:700;">ALL BAREUM</a>
                                        </span>
                                    </div>
                                    <h2 class="hero__entry-title">
										<!--style="font-family: GmarketSansBold; font-size:x-large;"  -->
										<p class="hero__entry-desc" style="font-family: GmarketSansBold; font-size:large;" > - 입 모양 인식을 통한 바른 입 모양 교정 </p>
                                        <p class="hero__entry-desc" style="font-family: GmarketSansBold; font-size:large;" > - 음성 인식을 통한 발음 정확도 교정   </p>
                                        
                                        <p style="font-family: NanumSquareExtraBold; font-size:xx-large;">정확한 입모양/발음 교정,</p> 
                                        <p style="font-family: NanumSquareExtraBold; font-size:x-large; font-weight:500;">올바름이 함께 하겠습니다.</p>
										
                                       
                                    </h2>
                                    
                                 
                                    
                                </div>
                            </div>
                        </article>
                     
                    </div> <!-- swiper-wrapper -->

                    <div class="swiper-pagination"></div>
    
                </div> <!-- end hero slider -->

               

            </div> <!-- end hero -->


            <!--  masonry -->
            
        </section> <!-- end s-content -->


        <!-- # site-footer
        ================================================== -->
        


    <!-- Java Script
    ================================================== -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/images/favicon-16x16.png.png">

    <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
 	
</script>
</body>
</html>