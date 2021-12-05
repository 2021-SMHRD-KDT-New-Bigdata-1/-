<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js" >
<head>

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
                    <a href="select.do" rel="home" style="color: black; font-size: x-large; margin-left: 570px; font-family: var(--font-2);" >Allbareum</a>
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
                            <div class="hero__entry-image" ></div>
                            <div class="hero__entry-text">
                                <div class="hero__entry-text-inner">
                                
                                
                                <div id="join" style="display:none">
                           <form action="join.do" method="post">
                              <div class="form-group input-group">
                                  <div class="input-group-prepend" name="id">
                                     <span class="input-group-text">아이디<i class="fa fa-envelope"></i> </span>
                                  </div>
                                   <input name="user_id" class="form-control" type="text" id="user_id" required>
                                   <span id="sp"></span>
                               </div> <!-- id-group// -->
                               
                               <div class="form-group input-group">
                                  <div class="input-group-prepend">
                                     <span class="input-group-text">비밀번호<i class="fa fa-lock"></i> </span>
                                 </div>
                                   <input name="user_pw" class="form-control"  type="password" id="user_pw" required>
                               </div> <!-- form-group// -->
                               
                               <div class="form-group input-group">
                                  <div class="input-group-prepend">
                                     <span class="input-group-text">이름<i class="fa fa-lock"></i> </span>
                                 </div>
                                   <input name="user_name" class="form-control"  type="text" id="user_name" required>
                               </div> <!-- form-group// -->
                               <div class="form-group input-group">
                                  <div class="input-group-prepend">
                                     <span class="input-group-text">생년월일<i class="fa fa-lock"></i> </span>
                                 </div>
                                   <input name="user_birthdate" class="form-control" placeholder="yyyymmdd" type="text" id="user_birthdate" required>
                               </div> <!-- form-group// -->
                               <div class="form-group input-group">
                                  <div class="input-group-prepend">
                                     <span class="input-group-text">국적<i class="fa fa-lock"></i> </span>
                                 </div>
                                   <select id="user_nationality" name="user_nationality" style="width: 272px;" required>
                                    <option value="lang" selected>국가선택</option> 
                                    <option value="USA">USA</option> 
                                    <option value="KOREA">KOREA</option>
                                    <option value="JAPAN">JAPAN</option>
                                    <option value="CHINA">CHINA</option>
                                    <option value="GERMANY">GERMANY</option>
                                 </select>
                               </div> <!-- form-group// -->
                               <button type="submit" class='btnmain'>회원가입</button>
                                     <button type="button" class="btnmain" onclick="close_join();"> 닫기  </button>
                           </form>
                        
                        </div>
         <!--  loginform...........................----------------------------------------->
                        <div id="main">
                                    <div id="hero__entry-meta">
                                        <div class="panel panel-primary">
                     <div id="chart_title">
                  <table style=width:100%;>
                     <tr>
                     <td style="text-align:center;"><a class="weak_a" onclick="Syl_weak();">음절</a></td>
                     <td style="text-align:center;"><a class="weak_a" onclick="Word_weak();">단어</a></td>
                     <td style="text-align:center;"><a class="weak_a" onclick="Sen_weak();">문장</a></td>
                     </tr>
                  </table>
               </div>
                     <div class="panel-body">
                     <c:if test="${list==null}">
                        취약단어가 없군요 대단합니다!
                     </c:if>
                     <c:if test="${list!=null }">
                           <table>
                              <tr style="width:100%;">
                              <td style="float:left; margin-left:90px; text-align:center; font-size:20px; font-weight: bold;">취약단어</td>
                              <td style="float:right; margin-right:90px; text-align:center; font-size:20px; font-weight: bold;">정확도</td>
                              </tr>
                        <c:forEach var="list" items="${list}" varStatus="status">
                              
                              <tr style="width:100%;">
                              <c:choose>
                        <c:when test="${list.num  < 200 && list.num>=0}" >
                           <td style="float:left; margin-left:40px;" onclick="syl_weakstudy(${list.id})">단어 : ${list.content }</td>
                        </c:when>
                        <c:when test="${list.num < 500 && list.num > 200}" >
                           <td style="float:left; margin-left:40px;" onclick="sen_weakstudy(${list.id})">문장 : ${list.content }</td>
                        </c:when>
                        <c:when test="${list.num < 1500 && list.num > 500}">
                           <td style="float:left; margin-left:40px;" onclick="word_weakstudy(${list.id})">단어 : ${list.content }</td>
                        </c:when>
                        </c:choose>
                              <td style="float:right; margin-right:50px;">입모양 : ${list.lip_accuracy }, 발음 : ${list.speak_accuracy }</td></tr>
                        </c:forEach>
                           </table>

                     </c:if>
                     </div>
                  </div>
                                </div>
                                    
                             
                               
              <!--  loginform close...........................------------------------------------>     
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
   function Syl_weak() {
         location.href="Syl_weak.do";
   }
   function Word_weak() {
         location.href="Word_weak.do";
   }
   function Sen_weak() {
         location.href="Sen_weak.do";
   }
   
   
   function syl_weakstudy(num){
      location.href="syl_weakstudy.do?num="+num;
   }
      function sen_weakstudy(num){
      location.href="sen_weakstudy.do?num="+num;
   }
      function word_weakstudy(num){
      location.href="word_weakstudy.do?num="+num;
   }
      function back(){
          location.href="select.do";
   }

   
   </script>
</body>
</html>