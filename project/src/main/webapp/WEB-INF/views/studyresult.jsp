<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://kit.fontawesome.com/6d7bf23579.js" crossorigin="anonymous"></script> <!--이모티콘-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!--이모티콘-->
    <title>최종학습페이지</title>
    <style>
        #line > #index{
            width: 40px;
        }
        #line > #emo{
            width: 60px;
        }
        #foo_btn button{
            background-color: #ff8040;
            width: 100px;
            color: white;
            border-radius: 10px;
        }

    </style>
</head>
<body>
<div style="margin-top: 180px;">
    <div class="result">
        <h2 style="text-align: center;">00님의 단어분석결과</h2><br>
    </div>
    <div id="score">
        <h4 style="text-align: center;">점수확인</h4><br><br>
    </div>
    <nav>
    <table style="height: 500px; margin: auto;">
        <tbody>
            <!--음절, 단위일 때 리스트-->
            <tr id="line" style="text-align: center;">
                <td id="index">1.</td>
                <td id="question">커피</td>
                <td id="emo"><i class="far fa-laugh-wink fa-3x" style="color: green;"></i></td>
            </tr>
            <!--문장일 때 리스트-->
            <tr style="text-align: center;">
                <td>2</td>
                <td>블로그 스킨에서 jQuery를 지원하고 있는지 반드시 확인하십시오!</td>
                <!--단어단위로 문장줄바꿈 => style="word-break:keep-all"-->
                <td style="width: 50px;"><i class="far fa-smile fa-3x" style="color: orange;"></i></td>
            </tr> 
        </tbody>
    </table><br>
    </nav>
    <div id="foo_btn" style="text-align: center;">
        <button type="button" class="btn btn-default" value="exit">나가기</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="button" class="btn btn-default" value="replay">반복하기</button>
    </div>
</div><br>
</body>
</html>