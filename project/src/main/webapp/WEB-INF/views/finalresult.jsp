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
    <!--이모티콘-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--이모티콘-->
    
    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>최종학습페이지</title>

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
	String day = request.getParameter("day");
	String cate = request.getParameter("cate"); //음절/단어/문장
	%>
	<!-- 히든으로 바꿀거임 -->
	<input type='hidden' id='h_c' name='h_c' value='<%=cate%>' >
	<input type='hidden' id='h_d' name='h_d' value="<%=day%>" >

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
                    <a href="main.do" rel="home" style="color: black; margin-left: 570px; font-family: var(--font-2);" >Allbareum</a>
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
                            <div class="hero__entry-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/thumbs/featured/main_back.png');"></div>
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
					<div class="result">
						<h2>${vo.user_name}님의 발음분석결과</h2>
					</div>
				</td>
			</tr>
			<tr>
				<td class="results"></td>
				
				<td style="width: 400px; height: 300px; border: 3px solid ; border-color: #ff8040; background-color: white; ">
				
				</td>
				
				<td class="results"></td>
				
					<!-- <video width="30%" height="30%" autoplay="autoplay" id="myVideo"></td> -->
			</tr>

            <tr>
               <td class="studycolor"
                  style="text-align: center; font-family: GowunDodum-Regular; font-size: xx-large; padding-top: 5px; padding-bottom: 10px;" id='test60' ></td>

            </tr>
         </thead>
         <tbody>

            <tr>
               <td class="studycolor2"
                  style="text-align: center; vertical-align: middle; padding-top:50px;">
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

            </td>
            </tr>

         </tbody>

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
		//alert("syn_test다녀올게용");
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
		//alert("word_test다녀올게용");
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
		//alert("sen_test다녀올게용");
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