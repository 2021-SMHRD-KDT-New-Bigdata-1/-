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


   
</script>

</head>


<body id="top" class="is-preload" id="is-preload">
	<%
		String speak_acc = request.getParameter("speak_acc");
		String lip_acc = request.getParameter("lip_acc");
		String word_num = request.getParameter("word_num");
		String word_idx = request.getParameter("word_idx");
		int list_cnt = Integer.parseInt(request.getParameter("list_cnt"));
		String day = request.getParameter("day");
		String cate = request.getParameter("cate");
		
		String text_en = request.getParameter("text_en");
		
	%>

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
                    <a href="main.do" rel="home" style="color: black;font-size: x-large; margin-left: 570px; font-family: var(--font-2);" >Allbareum</a>
                </p>
            </div>

            <div class="row s-header__navigation">

                <nav class="s-header__nav-wrap">
    
                    <h3 class="s-header__nav-heading">Navigate to</h3>
    
                    <ul class="s-header__nav">
                        <li class="current-menu-item"><a href="index.html" title="">Home<fa></li>
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
                            
                            <div class="hero__entry-text">
                                <div class="hero__entry-text-inner" style="width: 798px; padding-left:8px; padding-right:8px;padding-top:15px;">
                                
   
           
         <!--  loginform...........................----------------------------------------->
                    
                        <div id="main">
                                    <div id="hero__entry-meta">
                                        <span class="cat-links" style="font-size:13px;">
                                               <!-- 여기에..들어가볼까? -->
          
         <table class="study2table">
         <thead>
			<tr>
				<td  colspan="3" class="result" style="height: 150px; width: 350px; 
				 text-align: center; font-size: large; word-break: keep-all; color:black;">
				 <h4 style="font-family: GowunDodum-Regular; font-size: xx-large;">결과 확인</h4>
				 	
					발음 정확도 : <%=speak_acc %> 점 <br>
					입모양 정확도 : <%=lip_acc %> 점 <br>
					인식된 발음 : <%= URLDecoder.decode(text_en, "UTF-8") %>
				</td>
			</tr>
			<tr>
				<td class="results"></td>
				
				<td style="width: 400px; height: 300px;background-color: white; ">
				<!-- 여기에 비디오넣기 -->
				<video controls playsinline width="800" style="width:600px; height:400px; border: 3px solid; border-color: #ff8040; padding-left: 0px;padding-right: 0px;padding-top: 0px;padding-bottom: 0px;">
				<source
                src= "${pageContext.request.contextPath}/resources/images/upload_video/${vo.user_id}_<%=word_idx%>.mp4"
                type="video/mp4">
                </video>
				
				</td>
				
				<td class="results"></td>
				
					<!-- <video width="30%" height="30%" autoplay="autoplay" id="myVideo"></td> -->
			</tr>
			<tr>
				<td colspan="3" class="resultb" style=" height: 200px; text-align: center;">
					<button style="font-family: GowunDodum-Regular; font-size: samll;" type="submit" class="btn-result" id="return" onclick="history.back()">다시하기</button> &nbsp; &nbsp;
					<button style="font-family: GowunDodum-Regular; font-size: samll;" class="btn-result" id="pass" onclick="insert_plus_nextFn( <%=speak_acc%>,<%=lip_acc%>,<%=word_num%>,<%=word_idx%>,<%=list_cnt%>,<%=day%>,<%=cate%> )">넘어가기</button> &nbsp; &nbsp;
					<button style="font-family: GowunDodum-Regular; font-size: samll;" class="btn-result" id="synonym">유사단어</button>
				</td>
			</tr>
            <tr>
               <td class="studycolor"
                  style="text-align: center; font-family: GowunDodum-Regular; font-size: xx-large; padding-top: 5px; padding-bottom: 10px;" id='test60' ></td>

            </tr>
         </thead>

      </table>
                                  
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
   
	function insert_plus_nextFn(speak_acc,lip_acc,word_num,word_idx,cnt,day,cate){

		
		//alert("버튼 누름");
		//alert(speak_acc+" "+lip_acc+" "+word_num+" "+word_idx+" "+(cnt+1)+" "+day+" "+cate);
		//if (cnt==4){
		//	location.href="finalresult.do?day="+day+"&cate="+cate;
		//}else{
			location.href= "test_insert.do?speak_accuracy="+speak_acc+"&lip_accuracy="+lip_acc
					+"&num="+word_num+"&id="+word_idx+"&cnt="+(cnt+1)+"&day="+day+"&cate="+cate;
		//}
	}
</script>
</body>
</html>