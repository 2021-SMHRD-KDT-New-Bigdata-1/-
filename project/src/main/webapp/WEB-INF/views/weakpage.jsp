<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
    <title>study</title>

    <!-- CSS
    ================================================== -->
<link href="${pageContext.request.contextPath}/resources/css/vendor.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css">

<!--이모티콘-->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/6d7bf23579.js"
   crossorigin="anonymous"></script>
<!--이모티콘-->
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"
   integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
   crossorigin="anonymous"></script>
<link href="https://vjs.zencdn.net/7.10.2/video-js.css" rel="stylesheet" />
<script src="https://vjs.zencdn.net/7.10.2/video.min.js"></script>

<link
   href="https://unpkg.com/@silvermine/videojs-quality-selector/dist/css/quality-selector.css"
   rel="stylesheet">
<script
   src="https://unpkg.com/@silvermine/videojs-quality-selector/dist/js/silvermine-videojs-quality-selector.min.js"></script>


    <!-- favicons
    ================================================== -->
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css">
    <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/images/favicon-16x16.png.png">
    <link rel="manifest" href="site.webmanifest">
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script> <%--
   window.onload = function(){
      alert("로딩은 되냐 ?");
      $(".cameraInput2").css("display","none");
   } --%>

   
</script>
<!-- flask -->
<script type="text/javascript"
   src="https://unpkg.com/webcam-easy/dist/webcam-easy.min.js">
   
</script>
<script>
   
   document.getElementById("cameraInput").addEventListener(
         "change",
         function() {
            document.getElementById("pictureFromCamera").setAttribute(
                  "src", window.URL.createObjectURL(this.files[0]));
         });
</script>

</head>


<body id="top" class="is-preload" id="is-preload">
<%--    <div class="word1"><p class="weakpro"><c:choose>
         <c:when test="${fn:length(list.content)==1}" >
         취약음절
         </c:when>
         <c:when test="${fn:length(list.content)>1 && fn:length(list.content)<6}" >
         취약단어
         </c:when>
         <c:otherwise>
         취약문장
         </c:otherwise>
         </c:choose></p>
      <i class="fas fa-arrow-left fa-2x" style="color: white; margin-left: 21px; margin-top: 9px;"></i>
      
      <h3 class="stage_nm">${day}</h3>

   </div> --%>

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
                    <a href="main.do" rel="home" style="color: black; font-size: x-large; margin-left: 570px; font-family: var(--font-2);" >Allbareum</a>
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
                        <article class="hero__slide swiper-slide" style="background: #fc965a; background-image: url('${pageContext.request.contextPath}/resources/images/thumbs/featured/back222.png');">
                            <div class="hero__entry-image" style="background:#fc965a; background-image: url('${pageContext.request.contextPath}/resources/images/thumbs/featured/back222.png');"></div>
                            <div class="hero__entry-text">
                                <div class="hero__entry-text-inner" style="width: 798px; padding-left:8px; padding-right:8px;padding-top:15px;
                                min-width:614px; min-height:832px;">
                                
   
           
         <!--  loginform...........................----------------------------------------->
                    
                        <div id="main">
                        <div id="loadingd" style="position:absolute; margin-top:300px; width:100%; display:none; height:832px;">
      
            <img id="limg" style="m;"
            src="${pageContext.request.contextPath}/resources/images/14842.gif" alt="분석 중..."  >
      </div>
                                    <div id="hero__entry-meta">
                                        <span class="cat-links" style="font-size:20px; color: dimgray; font-weight: 500;}">
         <table class="study2table" >
         <thead>

            <tr>
                <td class="studycolor2"
                  style="text-align: center; font-family: GowunDodum-Regular; font-size: large;">
                     <h2>${list.content }</h2>
                     <c:if test="${list.id<1000}">
                     [${list.pron }]
                     </c:if>
               </td>
               
               
            </tr>
         </thead>
         <tbody>
            <tr>
               <td class="studycolor2"
                  style="text-align: center; vertical-align: middle;">
                  <video controls autoplay width="350;" style="width:600px; height:400px;">

                     <source
                        src="${pageContext.request.contextPath}/resources/images/show_video/003_51_C.mp4"
                        type="video/mp4">

                  </video></td>
            </tr>
            <tr>
               <td class="studycolor2"
                  style="text-align: center; font-size: large;">발음해보세요</td>
            </tr>
            <tr>
               <td class="cameraInput"
                  style="text-align: center; vertical-align: middle;">


                     <form action="http://211.223.106.113:5000/dlModel" method="POST"
                        enctype="multipart/form-data">
                        
                        <!-- type hidden으로 바꿔줄거 -->
                        
                  <input type="hidden" class="cameraInput" value="" placeholder="첨부파일" > 

                        <label for="cameraInput"> 
                           <a class="cameraInput"><i id="mic" class="fas fa-microphone-alt fa-2x"></i></a>
                           <input type="file" id="cameraInput" name="file" accept="video/*" capture="user" onclick='vdclickFn()'/>
                            <button type="submit" class="cameraInput" onclick="Loading();"><i id="analysis"class="fas fa-chart-pie fa-2x"></i></button>
                         </label>
                       
                       
                        <p id='vdcheck' style="margin-bottom: 10px;">&nbsp;</p>
                        <!-- css 넣어주기,, button -->


                        
                        
                        
                        <!-- 
                        <input type="hidden" class="cameraInput1" value=""
                           placeholder="첨부파일"> <label for="cameraInput"> <i
                           class="fas fa-microphone-alt fa-2x"></i>
                        </label> <input type="file" id="cameraInput" name="file"
                           accept="video/*" capture="user" /> <input type="submit"
                           value="녹화완료" />
 -->
                     </form>

               </td>
            </tr>
         </tbody>

      </table>
                                  
                                  
                                  
                                        </span>
                                </div>
                                    
                             <c:if test="${vo!=null }">
                   
                                    
                             </c:if>
                               
              <!--  loginform close...........................------------------------------------>     
                            </div>
                        </article>
                        <article class="hero__slide swiper-slide">
                            <div class="hero__entry-image" style="background-image: url(/web/resources/images/thumbs/featured/back22.png);" ></div>
                            <div class="hero__entry-text">
                                <div class="hero__entry-text-inner" style="width: 798px;padding-left:8px;padding-right:8px;">
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

    <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.scrolly.min.js"></script>
   <script src="assets/js/jquery.scrollex.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>
<script>
//    function vdclickFn(){
//       alert("클릭 인식은 되냐 ?");
//       $(".cameraInput2").css("display","block");
//       $(".cameraInput").css("display","none");
//    }
      function back1(cate) {
         location.href = "studyhome.do?cate=" + cate;
      }
      function Loading(){
         if($("#loadingd").css("display")=="none"){
            $(".study2table").css("display","none");
            $("#loadingd").css("display","block");
         }else{
            
         }
         
         //div word를 없애기~
         
         // loadingd를 열기~
         //$(".loadingd").css("display","block")
          
      }
      function vdclickFn(){
         //alert("클릭 인식은 되냐 ?");
         $("#vdcheck").html('비디오 첨부 완료!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
      }
</script>
</body>
</html>