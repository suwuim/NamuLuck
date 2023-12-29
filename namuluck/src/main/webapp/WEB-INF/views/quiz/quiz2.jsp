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
                <div id="quiz_sub">��Ʃ�� ���� ��û �� ����Ʈ ���</div>
            </div>
        </div>

        <div id="videoarea">
            <div id="question"> 
                Q. 000�� ������ ��깰�� �ذ��ϱ� ���� �������� ���ϴ� ���̴�
            </div>
            <div id="question"> 
                �̶� 000 �ȿ� �� ���� ���� ����? 
            </div>
            <button id="answer1">1. �κθ��ۺ�</button>
            <button id="answer2">2. Ǫ�帮�ú�</button>
            <button id="answer3">3. Ǫ�帮�ۺ�</button>
            <button id="answer4">4. Ǫ�ָ�����</button>

            <script>
                var correctAnswer = 3;
            
                var answerButtons = document.querySelectorAll('button');
            
                answerButtons.forEach(function(button) {
                    button.addEventListener('click', function() {
                        var selectedAnswer = parseInt(button.id.replace('answer', ''));
            
                        if (selectedAnswer === correctAnswer) {
                            alert('�����Դϴ�! �� 1���� ȹ���ϼ̽��ϴ�.');
                        } else {
                            alert('�����Դϴ�!');
                        }
                    });
                });
            </script>
                
        </div>

    </div>
    
    </body>
</html>