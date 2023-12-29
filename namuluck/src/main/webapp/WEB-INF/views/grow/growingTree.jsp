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
            <div id="get">�� ���ϱ�</div>

            <button id="splashbtn" onclick="up()"></button>
            <img class="splash" src="resources/images/splash.png" slt="splash">
            <div id="put">�� �Ѹ���</div>
            
        </div>
        <div class="bottom">
            <!-- <div id="getCount"></div> -->
            <div id="putCount"></div>
        </div>
    </div>
    
    <script>
 	// ���� �� �ֱ� �Լ�

    var count = 0;
    var waterCount = 10; // ���� : �� ���� Ƚ�� 5��
    var treeCount = 0;

    function up() {
        
        count++;
        waterCount--;

        // 1�ܰ� > 2�ܰ� : 5�� ���ֱ�
        // 2�ܰ� > 3�ܰ� : 10�� ���ֱ�
        // 3�ܰ� > 4�ܰ� : 15�� ���ֱ�
        count = count % 30 // 30ȸ �ɶ����� �ʱ�ȭ
        treeCount = Math.floor(count / 30); // �ʱ�ȭ �Ƿ��� 30���� ���ֱⰡ �ʿ�

        // ������ �������
        if (count >= 0) { // 1�ܰ� ����
            document.querySelector('.tree1').style.display = 'block';
            document.querySelector('.tree2').style.display = 'none';
            document.querySelector('.tree3').style.display = 'none';
            document.querySelector('.tree4').style.display = 'none';
        }

        if (count >= 5) { // 2�ܰ� ����
            document.querySelector('.tree1').style.display = 'none';
            document.querySelector('.tree2').style.display = 'block';
            document.querySelector('.tree3').style.display = 'none';
            document.querySelector('.tree4').style.display = 'none';
            if (count == 5) {
                alert('�����մϴ�! 2�ܰ� ������ �Ǿ����. �� 5���� ȹ���ϼ̽��ϴ�.');
            }
        }

        if (count >= 15) { // 3�ܰ� ����
            document.querySelector('.tree1').style.display = 'none';
            document.querySelector('.tree2').style.display = 'none';
            document.querySelector('.tree3').style.display = 'block';
            document.querySelector('.tree4').style.display = 'none';
            if (count == 15) {
                alert('�����մϴ�! 3�ܰ� ������ �Ǿ����. �� 5���� ȹ���ϼ̽��ϴ�.');
            }
        }

        if (count >= 30) { // 4�ܰ� ����
            document.querySelector('.tree1').style.display = 'none';
            document.querySelector('.tree2').style.display = 'none';
            document.querySelector('.tree3').style.display = 'none';
            document.querySelector('.tree4').style.display = 'block';
            if (count == 30) {
                alert('�����մϴ�! ������ �� �ڶ����. �� 5���� ȹ���ϼ̽��ϴ�.');
        }
    }

        // waterCount�� count �� ���Ͽ� Ƚ�� �ʰ� �� ��ư ��Ȱ��ȭ
        if (count >= waterCount) {
            document.getElementById('put').disabled = true;
        }

        // ������Ʈ�� treeCount �� ���
        setTreeCount(treeCount);
        setWaterCount(waterCount);
    }

    // [�����]�� [N]��° ���� ��� �Լ�
    function setTreeCount(nickname,count) {
        const textElement = document.getElementById('text');
        if (textElement) {
            const nickname = "������";
            textElement.innerHTML = `${loginMember.nickName}���� <span id="count">${treeCount}</span>��° ����`;
        } else {
            console.error('��Ҹ� ã�� �� �����ϴ�.');
        }
    }

    // �� �� Ƚ�� ��� �Լ� 
    function setWaterCount() {
        const putCountElement = document.getElementById('putCount');
        if (putCountElement) {
            putCountElement.innerHTML = `0 ȸ`;
        } else {
            console.error('��Ҹ� ã�� �� �����ϴ�.');
        }
    }
        
    // ������ �ε� �� ȣ���Ͽ� �ʱ� �� ����
    window.onload = function() {
        const nickname = "������";
        let count = 1;

        setTreeCount(nickname, treeCount);
        setWaterCount(count);
    };
    

    // �� �κп� �α��� ���θ� Ȯ���ϰ� �˸� â�� ���� ��ũ��Ʈ�� �ۼ��մϴ�.
    window.onload = function() {
        // Java���� ������ �α��� ���θ� ���⿡ ����մϴ�.
        var isUserLoggedIn = <%= session.getAttribute("loginMember") != null %>;

        if (!isUserLoggedIn) {
            alert('�α����� �ʿ��մϴ�. �α��� �������� �̵��մϴ�.');
            location.href = 'loginForm.me'; // �α��� �������� �̵�
        } else {
            // �α��ε� ��쿡�� ���� ���� ����� Ȱ��ȭ�� �� �ֽ��ϴ�.
            // �� �κ��� ���� ���� ������ �ۼ��ϸ� �˴ϴ�.
        }
    }
    </script>
    
    </body>
</html>