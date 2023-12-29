<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
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
            height: 340px;
            background-image: url(resources/images/shopbg.png);
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

        #shop {
            font-size: 26px;
            font-weight: bold;
            text-align: left;
            margin-top: 28px;
            position: relative;
        }

        #shop_sub {
            font-size: 16px;
            text-align: left;
            margin-top: 16px;
            position: relative;
        }

        #products {
            width: 1000px;
            display: flex;
            justify-content: space-between;
            gap: 12px;
            margin-top: 60px;
            color: black;
        }

        #product {
            width: 320px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            color: black;
            gap: 12px;
        }

        #productimg {
            border-radius: 15px;
            width: 320px;
        }

        #productname {
            text-align: left;
            font-size: 16px;
        }

        #productprice {
            text-align: left;
            font-size: 14px;
        }
        </style>
    </head>
    
    <body>
    <jsp:include page="../common/header.jsp"/>
    <div class="content">
        <div class="banner">
            <div class="textarea">
                <div id="shop">Shop</div>
                <div id="shop_sub">나무 키워 얻은 포인트로 먹는 못난이 농수산물</div>
            </div>
        </div>

        <div id="products">
            <div id="product">
                <div>
                    <img src="resources/images/radish.png" id="productimg" alt="productimg">
                </div>
                <div id="productname">
                    유기농 무 3kg
                </div>
                <div id="productprice">
                    🍎 990개
                </div>
            </div>

            <div id="product">
                <div>
                    <img src="resources/images/tomatos.png" id="productimg" alt="productimg">
                </div>
                <div id="productname">
                    무농약 대추방울토마토 2kg
                </div>
                <div id="productprice">
                    🍎 990개
                </div>
            </div>

            <div id="product">
                <div>
                    <img src="resources/images/onion.png" id="productimg" alt="productimg">
                </div>
                <div id="productname">
                    무농약 우람한 양파 3.5/5kg
                </div>
                <div id="productprice">
                    🍎 990개
                </div>
            </div>
        </div>

        

    </div>
    
    </body>
</html>