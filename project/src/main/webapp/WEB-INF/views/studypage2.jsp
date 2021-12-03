<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/6d7bf23579.js"
	crossorigin="anonymous"></script>
<!--이모티콘-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--이모티콘-->
<title>study</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
</noscript>
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
<!-- 상단바 뒤로가기 버튼 화살표  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 상단바 뒤로가기 버튼 화살표  -->

<style>
.btn-default {
	background-color: #ff8040;
	width: 80px;
	color: white;
	border-radius: 15px;
}

.is-preload {
	background-color: #f2f2f2;
}

.word1 {
	background-color: #ff8040;
	height: 45px;
}

table {
	width: 100%;
	height: 95%;
	border: 2px solid;
	border-collapse: seperate !important;
	border-radius: 10px;
	border-style: hidden;
	box-shadow: #f2c587;
}

video {
	width: 100%;
	height: 350px;
}
.step{
	background-color: #ffaf42;
    border: 0px;
    width: 60px;
    height: 42.2px;
    position: absolute;
    left: 79%;
    top: 117px;
    text-align: center;
    border-left: 1px solid #ce712e;
    /* padding-left: 5px; */
    padding: 0 0 0em 1em;

}

</style>
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
<!-- flask close -->

</head>
<body class="is-preload" id="is-preload">
	<%
		String day = request.getParameter("day");
	%>

	<!-- Wrapper -->

	<!-- Header -->

	<div class="word1">
		<c:choose>
			<c:when test="${fn:length(list[0].content)==1}">
				<button onclick="back1(1)" type="button" class="btnback">
			</c:when>
			<c:when
				test="${fn:length(list[0].content)>1 and fn:length(list[0].content)<6}">
				<button onclick="back1(2)" type="button" class="btnback">
			</c:when>
			<c:otherwise>
				<button onclick="back1(3)" type="button" class="btnback">
			</c:otherwise>
		</c:choose>
		<i class="fas fa-arrow-left fa-2x"></i>
		</button>

		<h3 class="stage_nm">${day}</h3>

	</div>
	<div id="loadingd" style="position:absolute; margin-top:300px; width:100%;">
		
            <img id="limg" style="m"
            src="${pageContext.request.contextPath}/resources/images/1484.gif" alt="분석 중..."  >
		</div>

	<!----table ----->

	<div class="word">


		
		<!-- 단어 : [

	
		
		
		<c:forEach var="list" items="${list}" varStatus="status">
			${list.content}
		</c:forEach>
		] <br> -->
		<!--<c:set var="i" value="${i+1}" />-->




		
       <div class="step">Step
		<%=day%>
		(${cnt+1}/5)</div>
    
		<table class="study2table">
			<thead>

				<tr>
					<td class="studycolor"
						style="text-align: center; font-size: large;" id='test60'>학습
						단어</td>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="studycolor2"
						style="text-align: center; font-size: large; font-family: GowunDodum-Regular;">
						<c:forEach
							var="list" items="${list}" varStatus="status">
							<c:if test="${status.index eq cnt}">
								<h2>${list.content}</h2>
								<c:if test="${list.id<1000}">
									[${list.pron}] <!-- 문장의 경우에 발음이 없으니 안뜨도록 -->
								</c:if>
								<!-- id출력은   (${list.id}) -->
							</c:if>
						</c:forEach>
						
						</td>

				</tr>
				<tr>
					<td class="studycolor2"
						style="text-align: center; vertical-align: middle;">
						<c:forEach
							var="list" items="${list}" varStatus="status">
							<c:if test="${status.index eq cnt}">
								<!-- 음절/단어의 경우 비디오 소스 -->
								<c:if test="${list.id<1000}">
									<video
									controls playsinline width="350">
									<source
										src="${pageContext.request.contextPath}/resources/images/show_video/003_51_C.mp4"
										type="video/mp4">
								</video>
								</c:if>		
								<!-- 문장의 경우에 다른 소스로 설정할 수 있도록 코드 구현-->
								<c:if test="${list.id>=1000}">
									<video
									controls playsinline width="350">
									<source
										src="${pageContext.request.contextPath}/resources/images/show_video/003_51_C.mp4"
										type="video/mp4">
								</video>
								</c:if>
							</c:if>
						</c:forEach>

						</td>
				</tr>
				<tr>
					<td class="studycolor2"
						style="text-align: center; font-size: large;">발음해보세요</td>
				</tr>
				<tr>
					<td class="studycolor"
						style="text-align: center; vertical-align: middle;">
						<div class="cameraInput">

							<form action="http://211.223.106.113:5000/dlModel" method="POST"
								enctype="multipart/form-data">

								<!-- type hidden으로 바꿔줄거 -->
								<c:forEach var="list" items="${list}" varStatus="status">
									<c:if test="${status.index eq cnt}">
										<input type="hidden" id="h_num" name="h_num"
											value="${list.num}">
										<input type="hidden" id="h_idx" name="h_idx"
											value="${list.id}">
									</c:if>
								</c:forEach>

								<input type="hidden" id="h_cnt" name="h_cnt" value="${cnt}">
								<input type="hidden" id="h_day" name="h_day" value="<%=day%>">

								<c:choose>
									<c:when test="${fn:length(list[0].content)==1}">
										<input type="hidden" id="h_cate" name="h_cate" value="1">
									</c:when>
									<c:when
										test="${fn:length(list[0].content)>1 and fn:length(list[0].content)<6}">
										<input type="hidden" id="h_cate" name="h_cate" value="2">
									</c:when>
									<c:otherwise>
										<input type="hidden" id="h_cate" name="h_cate" value="3">
									</c:otherwise>
								</c:choose>




								<input type="hidden" class="cameraInput1" value=""
									placeholder="첨부파일" > <label for="cameraInput"> <i
									class="fas fa-microphone-alt fa-2x"></i>
								</label> <input type="file" id="cameraInput" name="file"
									accept="video/*" capture="user" onclick='vdclickFn()'/>
								<button type="submit" class="cameraInput" onclick="Loading();">분석</button>
								<p id='vdcheck'>&nbsp;</p>
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
						</div>

					</td>
				</tr>
			</tbody>

		</table>
		<br>

	</div>

	<!-- table 끝읏 -->

	
     
	
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	
	<script>
		function back1(cate) {
			location.href = "studyhome.do?cate=" + cate;
		}
		function Loading(){
			if($("#loadingd").css("display")=="none"){
				$(".word").css("display","none")
				$("#loadingd").css("display","block");
			}else{
				
			}
			
			//div word를 없애기~
			
			// loadingd를 열기~
			//$(".loadingd").css("display","block")
			 
		}
		function vdclickFn(){
			$("#vdcheck").html('비디오 첨부 완료!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
		}
	</script>
</body>
</html>