<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>����������_���� ����</title>
</head>
<style>
  div {
    /*border: 1px solid black; */
  }
  .sidebar{
    padding-top: 100px;
    margin-left: 250px;
    width: 176px;
    height: 968px;
    float: left;
    border: 1px solid var(--background, #D7DCA2);
  }
  a{
    text-decoration: none;
    height: 60px;
    line-height: 64px;
    justify-content: center;
    border: 1px solid #D7DCA2;
    color: #454411;
    display: block;
    font-size: 15px;
  }
  .gradeOrder{
    float: left;
  }
  .grade{
    background-color: rgba(0, 0, 0, 0.238);
    width: 1000px;
    height: 150px;
  }
  .order{
    width: 1000px;
    height: 1000px;
  }
  .order hr {
  border-color: transparent; 
}
  .orderBox{
    width: 1000px;
    height: 300px;
    border: 1px solid gainsboro;
    display: flex; 
    flex-direction: column;
  }
  .orderBox div {
    flex: 1; 
    border: 1px solid gainsboro;
    margin: 5px;
    text-align: center;
  }
  .nickname,
  .phonenumber,
  .address,
  .sumPoint {
    color: #89A02E; 
  }
  .withdraw {
    width: 170px;
    background-color: #D7DCA2; 
    border-radius: 20px; 
    text-align: center;
    display: flex;
    align-items: center; 
    justify-content: center;
    margin: auto; 
    transform: translate(0%, 10%);
  }
  
  #gradeInfo{
    margin-left: 30px;
  }
  .sidebar a, p{
    text-align: center;
  }
  a{
   font-size: 15px;
  }
  #profileImage {
    align-items: center;
    text-align: center;
    justify-content: center;
    display: flex;
    margin: auto;
    margin-top: 100px;
    width: 200px; 
    height: 200px; 
    border-radius: 50%; 
    background-color: #D7DCA2; 
  }
  .sidebar a.active {
      background-color: #D7DCA2;
  }
</style>
<body>
   <div class="outer">
      <div class="content">
        <div class="sidebar">
            <a href="#" class="active">���� ����</a>
            <a href="#">���� ����</a>
            <a href="#">����Ʈ</a>
            <a href="#">���� ���� ����</a>
            <a href="#">���� �ϱ�</a>
          </div>
        </div>
        <div class="gradeOrder">
          <div class="order">
            <div>
              <img id="profileImage">
            </div>
            <br>
              <div id="onetoone">
                <p class="nickname">�г���</p>
                <hr>
                <p>${ loginMember.nickName }</p>
              </div>
              <br>
              <div>
                <p class="phonenumber">��ȭ��ȣ</p>
                <hr>
                <p>${ loginMember.phone }</p>
              </div>
              <br>
              <div>
                <p class="address">�ּ�</p>
                <hr>
                <p>${ loginMember.address }</p>
              </div>
              <div>
                <p class="sumPoint">����Ʈ</p>
                <hr>
                <p>${ loginMember.sumPoint }</p>
              </div>
              <br>
              <br>
              <div class="withdraw">
                <a href="deleteForm.me">���� Ż��</a>
            
            </div>
          </div>
        </div>
      </div>
   </div>
   <script>
    var links = document.querySelectorAll('.sidebar a');
    links.forEach(function(link) {
      link.addEventListener('click', function() {
        links.forEach(function(innerLink) {
          innerLink.classList.remove('active');
        });
        link.classList.add('active');
      });
    });
  </script>
</body>
</html>