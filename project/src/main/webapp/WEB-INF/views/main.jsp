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

 <script >

  	
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
                    <a href="main.do" rel="home" style="color: black; margin-left: 280px;" >ALL바름</a>
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
                                <div class="hero__entry-text-inner">
                                
           <!----------------------login/join form --------------------------------->       
                                <div id="login" style="display:none">
                                
           
                                
                                	<form id="loginForm" action = "login.do" method = "post">
									    <div class="form-group input-group">
									    
									    	<div class="input-group-prepend">
											    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
											 </div>
									        <input class="form-control" name="login_user_id" id="login_user_id"  placeholder="아이디" type="text">
									    </div> <!-- form-group// -->
									    
									     <div class="form-group input-group">
									    	<div class="input-group-prepend">
											    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
											</div>
									        <input class="form-control" name="login_user_pw"  id="login_user_pw" placeholder="비밀번호" type="password">
									    </div> <!-- form-group// -->
									
										<button type="button" class="btnmain" id="login_bt" onclick="formCheck()"> 로그인  </button>
										<button type="button" class="btnmain" onclick="close_login()"> 닫기  </button>
										
									
									    <p class="text-center"><br> 계정이 없나요? <a onclick="join()">회원가입</a> </p>  
									</form>
                                </div>
           <!----------------------login/join form --------------------------------->
                                <!-- 회원가입 form -->
                                
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
												<option value="lang" selected>언어선택</option> 
												<option value="eng">ENG(영어)</option> 
												<option value="ko">KO(한글)</option>
											</select>
									    </div> <!-- form-group// -->
									    <button type="submit" class='btnmain'>회원가입</button>
                                     <button type="button" class="btnmain" onclick="close_join();"> 닫기  </button>
									</form>
								
								</div>
			<!--  loginform...........................----------------------------------------->
							<c:if test="${vo==null }">
								<div id="main">
                                    <div id="hero__entry-meta">
                                        <span class="cat-links">
                                            	정교한 발음 교정
                
                                        </span>
                                </div>
                                    
                                    <div id="Allbareum">
                                    <h2 class="hero__entry-title" >
                                        	올바름
                                    </h2>
                                     <button class='btnmain' onclick='login()'>로그인</button>
                                     <button class='btnmain' onclick='join()'>회원가입</button>
                                     </div>
                             </c:if>
                             <c:if test="${vo!=null }">
                             	<div id="main">
                                    <div id="hero__entry-meta">
                                        <span class="cat-links">
                                            	${vo.user_name }님
                
                                        </span>
                                </div>
                                    
                                    <div id="Allbareum">
                                    <h2 class="hero__entry-title" >
                                        	환영합니다
                                    </h2>
                                     <button class='btnmain' onclick="studying()">학습하기</button>
                                     <button class='btnmain' href="#">마이페이지</button>
                                     <button type="button" class='btnmain' onclick="logout()">로그아웃</button>
                                     </div>
                             </c:if>
                               
              <!--  loginform close...........................------------------------------------>     
                            </div>
                        </article>
                        <article class="hero__slide swiper-slide">
                            <div class="hero__entry-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/thumbs/featured/main_back.png');"></div>
                            <div class="hero__entry-text">
                                <div class="hero__entry-text-inner">
                                    <div class="hero__entry-meta">
                                        <span class="cat-links">
                                            <a>ALL BAREUM</a>
                                        </span>
                                    </div>
                                    <h2 class="hero__entry-title">
                                        <a href="single-standard.html">
                                        		     정확한 입모양/발음 교정을 위해, 올바름이 함께 하겠습니다.    

                                        </a>
                                    </h2>
                                    <p class="hero__entry-desc">
								                                      음성을 통해 발음을 인식합니다, 
								                                      입모양 인식을 통해 바른 입모양을 교정을 돕습니다.
                                    </p>
                                    
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
 	function formCheck(){
 		var userId = $("#login_user_id").val();
 		if(userId==""){
 			alert("아이디를 입력하세요");
 			$("#login_user_id").focus();
 			return false;
 		}
 		var userPwd = $("#login_user_pw").val();
 		if(userPwd==""){
 			alert("비밀번호를 입력하세요");
 			$("#login_user_pw").focus();
 			return false;
 		}
 		$("#loginForm").submit();
 	}
 	
 	function logout(){
 		location.href="logout.do";
 	}
 	
	function login(){
		document.getElementById("login").style.display = "";
		document.getElementById("main").style.display = "none";
		document.getElementById("Allbareum").style.display = "none";
		
	}
	
	function join() {
		document.getElementById("join").style.display = "";
		document.getElementById("login").style.display = "none";
		document.getElementById("main").style.display = "none";
		document.getElementById("Allbareum").style.display = "none";
	}

	function close_join(){
		document.getElementById("join").style.display = "none";
		document.getElementById("main").style.display = "";
		document.getElementById("Allbareum").style.display = "";
	 }
	
	function close_login(){
		document.getElementById("login").style.display = "none";
		document.getElementById("main").style.display = "";
		document.getElementById("Allbareum").style.display = "";
	 }
	function studying(){
 		location.href="select.do";
 	}

</script>
</body>
</html>