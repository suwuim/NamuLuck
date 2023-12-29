<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<style>
	.top{
	    width: 100%;
	    height: 500px;
	    background-color: #D7DCA2;
	}
	
	.bottom{
	    width: 100%;
	    height: 200px;
	    background-color: #AD8E62;
	}
	
	.top img.cloud1{
	    position: absolute;
	    top: 30px;
	    left: 500px;
	}
	
	.top img.cloud2{
	    transform: scaleX(-1);
	    position: absolute;
	    top: 150px;
	    left: 900px;
	}
	
	.top img.tree1{
	    position: absolute;
	    top: 352px;
	    left: 700px;
	}
	.top img.tree2{
	    position: absolute;
	    top: 352px;
	    left: 700px;
	    display: none;
	}
	.top img.tree3{
	    position: absolute;
	    top: 330px;
	    left: 700px;
	    display: none;
	}
	.top img.tree4{
	    position: absolute;
	    top: 330px;
	    left: 700px;
	    display: none;
	}
	
	#waterbtn {
	    width: 160px;
	    height: 160px;
	    border-radius: 50%;
	    border: none;
	
	    position: absolute;
	    top: 420px;
	    left: 450px;
	}
	.top .water {
	    position: absolute;
	    top: 448px;
	    left: 477px;
	    z-index: 1;
	}
	
	#splashbtn {
	    width: 160px;
	    height: 160px;
	    border-radius: 50%;
	    border: none;
	
	    position: absolute;
	    top: 420px;
	    left: 940px;
	}
	
	.top .splash {
	    position: absolute;
	    top: 448px;
	    left: 966px;
	    z-index: 1;
	}
	
	#put {
	    position: absolute;
	    top: 590px;
	    left: 970px;
	}
	
	#get {
	    position: absolute;
	    top: 590px;
	    left: 475px;
	}
	
	#text {
	    position: absolute;
	    top: 260px;
	    left: 650px;
	}
	
	#putCount {
	    padding-top: 105px;
	    padding-left: 975px;
	}
	
	#getCount {
	    padding-top: 105px;
	    padding-left: 430px;
	}
</style>
<body>
	<jsp:include page="../common/header.jsp"/>
	<br>
    <div class="content">
        <div class="top">
            <img src="resources/images/cloud.png" class='cloud1' alt="cloud">
            <img src="resources/images/cloud.png" class='cloud2' alt="cloud">

            <img class="tree1" src="resources/images/tree1.png" alt="tree1">
            <img class="tree2" src="resources/images/tree2.png" alt="tree2">            
            <img class="tree3" src="resources/images/tree3.png" alt="tree3">            
            <img class="tree4" src="resources/images/tree4.png" alt="tree4">

            <div id='text' onclick="setTreeCount()"> </div>
            
            <button id="waterbtn" onclick="location.href='growing.gr'"></button>
            <img class="water" src="resources/images/water.png" alt="water">
            <div id="get">물 구하기</div>

            <button id="splashbtn" onclick="up()"></button>
            <img class="splash" src="resources/images/splash.png" slt="splash">
            <div id="put">물 뿌리기</div>
            
        </div>
        <div class="bottom">
            <!-- <div id="getCount"></div> -->
            <div id="putCount"></div>
        </div>
    </div>
    
    <script>
 	// 나무 물 주기 함수

    var count = 0;
    var waterCount = 10; // 예시 : 물 가진 횟수 5번
    var treeCount = 0;

    function up() {
        
        count++;
        waterCount--;

        // 1단계 > 2단계 : 5번 물주기
        // 2단계 > 3단계 : 10번 물주기
        // 3단계 > 4단계 : 15번 물주기
        count = count % 30 // 30회 될때마다 초기화
        treeCount = Math.floor(count / 30); // 초기화 되려면 30번의 물주기가 필요

        // 나무의 성장과정
        if (count >= 0) { // 1단계 나무
            document.querySelector('.tree1').style.display = 'block';
            document.querySelector('.tree2').style.display = 'none';
            document.querySelector('.tree3').style.display = 'none';
            document.querySelector('.tree4').style.display = 'none';
        }

        if (count >= 5) { // 2단계 나무
            document.querySelector('.tree1').style.display = 'none';
            document.querySelector('.tree2').style.display = 'block';
            document.querySelector('.tree3').style.display = 'none';
            document.querySelector('.tree4').style.display = 'none';
            if (count == 5) {
                alert('축하합니다! 2단계 나무가 되었어요. 물 5개를 획득하셨습니다.');
            }
        }

        if (count >= 15) { // 3단계 나무
            document.querySelector('.tree1').style.display = 'none';
            document.querySelector('.tree2').style.display = 'none';
            document.querySelector('.tree3').style.display = 'block';
            document.querySelector('.tree4').style.display = 'none';
            if (count == 15) {
                alert('축하합니다! 3단계 나무가 되었어요. 물 5개를 획득하셨습니다.');
            }
        }

        if (count >= 30) { // 4단계 나무
            document.querySelector('.tree1').style.display = 'none';
            document.querySelector('.tree2').style.display = 'none';
            document.querySelector('.tree3').style.display = 'none';
            document.querySelector('.tree4').style.display = 'block';
            if (count == 30) {
                alert('축하합니다! 나무가 다 자랐어요. 물 5개를 획득하셨습니다.');
        }
    }

        // waterCount와 count 값 비교하여 횟수 초과 시 버튼 비활성화
        if (count >= waterCount) {
            document.getElementById('put').disabled = true;
        }

        // 업데이트된 treeCount 값 출력
        setTreeCount(treeCount);
        setWaterCount(waterCount);
    }

    // [사용자]의 [N]번째 나무 출력 함수
    function setTreeCount(nickname,count) {
        const textElement = document.getElementById('text');
        if (textElement) {
            const nickname = "나무럭";
            textElement.innerHTML = `${loginMember.nickName}님의 <span id="count">${treeCount}</span>번째 나무`;
        } else {
            console.error('요소를 찾을 수 없습니다.');
        }
    }

    // 물 준 횟수 출력 함수 
    function setWaterCount() {
        const putCountElement = document.getElementById('putCount');
        if (putCountElement) {
            putCountElement.innerHTML = `0 회`;
        } else {
            console.error('요소를 찾을 수 없습니다.');
        }
    }
        
    // 페이지 로드 시 호출하여 초기 값 설정
    window.onload = function() {
        const nickname = "나무럭";
        let count = 1;

        setTreeCount(nickname, treeCount);
        setWaterCount(count);
    };
    

    // 이 부분에 로그인 여부를 확인하고 알림 창을 띄우는 스크립트를 작성합니다.
    window.onload = function() {
        // Java에서 가져온 로그인 여부를 여기에 사용합니다.
        var isUserLoggedIn = <%= session.getAttribute("loginMember") != null %>;

        if (!isUserLoggedIn) {
            alert('로그인이 필요합니다. 로그인 페이지로 이동합니다.');
            location.href = 'loginForm.me'; // 로그인 페이지로 이동
        } else {
            // 로그인된 경우에는 나무 관련 기능을 활성화할 수 있습니다.
            // 이 부분은 나무 관련 로직을 작성하면 됩니다.
        }
    }
    </script>
    
    </body>
</html>