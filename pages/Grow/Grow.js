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
        textElement.innerHTML = `${nickname}님의 <span id="count">${treeCount}</span>번째 나무`;
    } else {
        console.error('요소를 찾을 수 없습니다.');
    }
}

// 물 준 횟수 출력 함수 
function setWaterCount() {
    const putCountElement = document.getElementById('putCount');
    if (putCountElement) {
        putCountElement.innerHTML = `${count} 회`;
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