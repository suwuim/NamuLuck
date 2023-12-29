<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">

        <title>NamuLuck</title>

        <style>
        .content {
            width: 100%;
            margin-top: 100px;
            height: calc(100vh - 100px); 
            color: #ffffff;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .banner {
            width: 100%;
            height: 360px;
            background-image: url(resources/images/quizbg.png);
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #ffffff;
            text-align: center;
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .textarea {
            width: 1000px;   
        }

        #quiz {
            font-size: 26px;
            font-weight: bold;
            text-align: left;
            margin-top: 28px;
            position: relative;
        }

        #quiz_sub {
            font-size: 16px;
            text-align: left;
            margin-top: 16px;
            position: relative;
        }

        #videoarea {
            width: 1000px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 12px;
            margin-top: 40px;
            color: black;
        }

        #video {
            width: 600px;
            height: 330px;
            background-color: lightgray;
            display: flex;
            flex-direction: column;
            justify-content: center;
            color: black;
            gap: 12px;
        }

        #quizbtn {
            background-color: #D7DCA2;
            border-radius: 50px;
            width: 80px;
            height: 32px;
        }

        #quizbtn a {
            text-decoration: none;
            color:#454411;
        }

        #question {
            font-size: 26px;
            font-weight: bold;
            text-align: center;
        }

        #videoarea button {
            width: 520px;
            height: 52px;
            border: 1px solid #D7DCA2;
            background-color: white;
            border-radius: 15px;
            margin: 10px;
            cursor: pointer;
        }

        #videoarea button:hover {
            background-color: #D7DCA2;
        }
        </style>
    </head>
    
    <body>
    <jsp:include page="../common/header.jsp"/>
    <div class="content">
        <div class="banner">
            <div class="textarea">
                <div id="quiz">Quiz</div>
                <div id="quiz_sub">유튜브 영상 시청 후 포인트 얻기</div>
            </div>
        </div>

        <div id="videoarea">
            <iframe id="video" src="https://www.youtube.com/embed/PqxCeoWxcrU?si=GK3Awg0qefwN-OZ3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            <button id="quizbtn"><a href="quiz2.qz">퀴즈 풀기</a></button>
        </div>

    </div>
    
    </body>
</html>