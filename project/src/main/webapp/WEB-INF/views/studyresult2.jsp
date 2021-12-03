<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="js ss-loaded">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/default.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/resources/fonts.css"
	rel="stylesheet" type="text/css" media="all" />
	
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
</noscript>
<title>study</title>

<style>
.btn-default {
	background-color: #ff8040;
	width: 100px;
	color: white;
	border-radius: 15px;
}

.myResult {
	padding: 0px !important;
	height: 10px;
}

#result {
	clear: both !important;
	position: static !important;
	margin-top: 120px !important;
	height: 800px;
}

body {
	background-color: #f2f2f2;
}
h4{
    color: black;
    font-weight: 900;
    font-size:x-large;
    margin-top: 10px;
}

table td {
    background: #ffaf42;
    

}


}

</style>
<head>
<!-- <script>
	        function load() {
	            var video = document.getElementById('myVideo');
	            if (navigator.webkitGetUserMedia) {
	                navigator.webkitGetUserMedia({audio:true, video:true},
	                    function(stream) { video.src = webkitURL.createObjectURL(stream); },
	                    function(error) { alert('ERROR: ' + error.toString()); } );
	            } else {
	                alert('webkitGetUserMedia not supported');
	            }
	        }
        </script> -->
</head>
<body>

	<%
		String speak_acc = request.getParameter("speak_acc");
		String lip_acc = request.getParameter("lip_acc");
		String word_num = request.getParameter("word_num");
		String word_idx = request.getParameter("word_idx");
		int list_cnt = Integer.parseInt(request.getParameter("list_cnt"));
		String day = request.getParameter("day");
		String cate = request.getParameter("cate");
	
	%>

	<!-- Header -->
	<header id="header" class="alt">
		<!--  <button type="button" class="btnback">
			<i class="fas fa-arrow-left fa-2x"></i>
		</button>-->
		
	</header>

	<!-- 한 단어당 보여주는 결과창 -->
	<table id="result" style="margin: auto;">
		
			<tbody>
			<tr>
				<td  colspan="3" class="result" style="height: 150px; width: 350px; 
				 text-align: center; font-size: large; word-break: keep-all; color:black;">
				 <h4 >결과 확인</h4>
				 <hr>
					발음 정확도 : <%=speak_acc %> 점 <br>
					입모양 정확도 : <%=lip_acc %> 점
				</td>
			</tr>
			<tr>
				<td class="results"></td>
				
				<td style="width: 400px; border: 3px solid ; border-color: #ff8040; background-color: white; ">
				
				</td>
				
				<td class="results"></td>
				
					<!-- <video width="30%" height="30%" autoplay="autoplay" id="myVideo"></td> -->
			</tr>
			<tr>
				<td colspan="3" class="resultb" style=" height: 200px; text-align: center;">
					<button type="submit" class="btn btn-default" id="return" onclick="history.back()">다시하기</button> &nbsp; &nbsp;
					<button class="btn btn-default" id="pass" onclick="insert_plus_nextFn( <%=speak_acc%>,<%=lip_acc%>,<%=word_num%>,<%=word_idx%>,<%=list_cnt%>,<%=day%>,<%=cate%> )">넘어가기</button> &nbsp; &nbsp;
					<button class="btn btn-default" id="synonym">유사단어</button>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- if(${lis.seapaccuarcy} > <'%=speak_acc %>)  아랫 줄 -->
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