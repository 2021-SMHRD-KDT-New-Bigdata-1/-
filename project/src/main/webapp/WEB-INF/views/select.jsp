<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<script>
function login() {
	 if ($('#login').css('display') == 'none') {
         $('#main').css('display' , 'none')
         $('#login').css('display' , 'block')
      } else {
          $('#main').css('display', 'block');
      }
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
                    <a href="main.do" rel="home" style="color:black; margin-left: 590px;" >ALL바름</a>
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
                                <div class="hero__entry-text-inner">
                                <div id="login" style="display:none">
									<form>
										<div class="form-group input-group">
    										<div class="input-group-prepend" name="id">
											    <span class="input-group-text">아이디<i class="fa fa-envelope"></i> </span>
											 </div>
									        <input name="user_id" class="form-control" type="text" id="input_id">
									        
									        <input type="button" value="ID중복체크" onclick="idCheck()">
									        <!-- input type="submit"을 써주면 이벤트(중복확인)에 따르는 조건을 부여해도 소용없기 때문에  -->
									        <span id="sp"></span>
									    </div> <!-- id-group// -->
									</form>
								
								</div>
								<div id="main">
								
								    <div id="btngroup" >
                                       <button id="btnselect" onclick="studyhome(1)">음절</button>
                                    </div>
                                    <div id="btngroup">
                                        <button id="btnselect" onclick="studyhome(2)">단어</button>
                                    </div>
                      				<div id="btngroup">
                                        <button id="btnselect" onclick="studyhome(3)">문장</button>
                                    </div>
                                    <div id="btngroup">
                                        <button id="btnselect" onclick=''>취약 단어</button>
                                    </div>
                                     
                                </div>
                                </div>
                            </div>
                        </article>
                    
                     
                    </div> <!-- swiper-wrapper -->

                    
    
                </div> <!-- end hero slider -->


            </div> <!-- end hero -->


            

        </section> <!-- end s-content -->


    <!-- Java Script
    ================================================== -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/images/favicon-16x16.png.png">
    
    <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script>
	function studyhome(num){
 		location.href="studyhome.do?num"+num;
 	}
	</script>
</body>
</html>