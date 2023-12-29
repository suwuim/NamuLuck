<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>메인화면</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <!--제이쿼리-->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

  <style>
	.header {
	  height: 56px;
	  display: flex;
	  margin-top: 15px;
	  font-weight: 500;
	  font-size: 14px;
	  border: 1px solid #000000;
	}
	
	.header img {
	  width: 134px;
	  height: 33px;
	  margin: 12px 0 0 232px;
	}
	
	
	.middle1 {
	  font-size: 26px;
	  font-style: normal;
	  font-weight: 700;
	  text-align: center;
	  color: #454411;
	}
	
	.middle1 img:nth-child(1) {
	  width: 100px;
	  height: 94px;
	  margin : 200px 700px 0 0 ;
	}
	
	.middle1 img:nth-child(2) {
	  width: 638px;
	  height: 157px;
	  margin: 0 440px;
	}
	.middle1 img.banana {
	  width: 100px;
	  height: 94px;
	  margin: 50px 0 0 700px;
	}
	
	.middle2 {
	  display: flex;
	  justify-content: center;
	}
	
	section {
	  /* width: 700px; */
	  height: 900px;
	  margin-top: 300px; 
	  margin-left: 400px;
	  padding-right: 90px;
	
	  font-size: 22px;
	  font-style: normal;
	  font-weight: 700;
	  line-height: 20px;
	  color: #454411;
	
	}
	
	aside {
	  width: 700px;
	  height: 900px;
	  margin: 320px 0 0 0 ;
	  padding-top: 50px;
	
	  font-size: 22px;
	  font-style: normal;
	  font-weight: 700;
	  line-height: 20px;
	  color: #454411;
	}
	
	section img.youtube {
	  width: 250px;
	  height: 250px;
	  margin-bottom: 400px;
	}
	
	aside img.quiz {
	  width: 250px;
	  height: 250px;
	  margin-top: 400px;
	}
	
	footer {
	  
	  text-align: center;
	  font-size: 24px;
	  font-style: normal;
	  font-weight: 700;
	  color: #454411;
	}
	
	footer img.tree1 {  
	  margin: 0 0 100px 0;
	}
	footer img.tree2 {
	  margin: 0 0 0 200px;
	}
	footer img.tree3 {
	  margin: 0 0 100px 0;
	}
	footer img.tree4 {
	  margin: 100px 0 0 200px;
	}
	
	#growbtn {
	  margin: 50px 0;
	  
	  width: 448px;
	  height: 56px;
	  border-radius: 50px;
	  border: 1px solid var(--main2, #89A02E);
	  background: var(--white, #FFF);
	  padding: 10px 20px;
	  font-size: 24px;
	  color: #454411;
	  font-weight: 700;
	  cursor: pointer;
	}
  </style>
</head>
<body>
	<jsp:include page="common/header.jsp"/>	

    	<div class="content">
        <div class="middle1">
            <img src="resources/images/tomato.png" alt="tomato">  
            <img src="resources/images/logo.png" alt="NamuLuck logo">
            <span>나무를 키워 수확한 열매로 못난이 농산물을 구출하자 ! </span>
            <br>
            <img class='banana' src="resources/images/banana.png" alt="banana">
        </div>

        <div class="middle2">
            <section>
                <img class='youtube' src="resources/images/youtube.png" alt="youtube">  
                <br> 획득한 물을 이용해 </br>
                <br> 나무를 키워주세요 </br>
            </section>
            <aside>
                <br> 유튜브 영상 시청 후 </br>
                <br> 퀴즈를 맞추면 물 획득 </br>
                <img class='quiz' src="resources/images/quiz.png" alt="quiz">  
            </aside>
        </div>

     <footer>
        <img class='tree1' src="resources/images/tree1.png" alt="tree1">
        <img class='tree2' src="resources/images/tree2.png" alt="tree2">  
            
        <br> 나무를 키워 획득한 사과로
        <br> 못난이 농수산물을 구출해주세요

        <div 
          class="btn-container">
          <button id="growbtn" type="button"  onclick="location.href='growing.gr'">나무 키우러 가기</button>
        </div>

        
        <img class='tree3' src="resources/images/tree3.png" alt="tree3">
        <img class='tree4' src="resources/images/tree4.png" alt="tree4">

     </footer>
    </div>
    
    </body>
</html>