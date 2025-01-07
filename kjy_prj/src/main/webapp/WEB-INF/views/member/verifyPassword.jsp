<%@ page contentType="text/html;charset=UTF-8" language="java" info="" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<head>
    <title>패스워드 검증</title>
</head>
<html>

<!--bootstrap CDN-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>


    #wrap {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100%; /* 부모 요소 크기에 맞춤 */
        margin: 0;
    }

    .container {
        width: 100%;
        max-width: 600px;
        height: 250px;
        margin-top: 150px;
        padding: 40px;
        border-radius: 12px;
        background-color: #fff;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    h1 {
        font-size: 30px;
        color: #333;
        margin-bottom: 30px;
    }

    label {
        display: block;
        font-size: 18px;
        color: #555;
        margin-bottom: 10px;
    }

    input[type="password"] {
        width: 80%;
        padding: 15px;
        border: 1px solid #ccc;
        border-radius: 8px;
        height: 40px;
        font-size: 18px;
        margin-bottom: 30px;
        box-sizing: border-box;
        transition: border-color 0.3s;
    }

    input[type="password"]:focus {
        border-color: #fb4357;
        outline: none;
    }

    .confirmBtn {
        width: 80%;
        padding: 15px;
        font-size: 20px;
        height: 40px;
        font-weight: bold;
        color: #333333;
        background-color: #f2f2f2;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .confirmBtn:hover {
        background-color: #fb4357;
    }

    #hideDiv {
        margin-top: 10px;
    }
</style>

<script>
    $(function () {
        $("#hideDiv").hide();

        $("#confirmBtn").click(function () {
            $("#confirmPass").submit();
        });


        $("#password").on("keydown", function (event) {
            if (event.originalEvent.getModifierState("CapsLock")) {
                $("#hideDiv").show();
            } else {
                $("#hideDiv").hide();
            }
        });
    })
</script>

<body>
<div id="wrap"
     style="min-height: 800px;  margin-top: 50px; margin-bottom: 50px; display: flex; flex-direction: column; align-items: center; ">
    <jsp:include page="/WEB-INF/views/member/common/header.jsp"/>
    <c:if test="${not empty errorMsg}">
        <script>alert('${errorMsg}')</script>
    </c:if>

    <div class="container">
        <h1 style="margin-bottom: 5px">비밀번호 확인</h1>
        <form action="/member/verifyPassword" method="post" id="confirmPass">
            <input type="password" id="password" name="password" required/>
            <input type="button" id="confirmBtn" class="confirmBtn" value="확인"/>
        </form>
        <div id="hideDiv"><p><strong style="color: red">Caps Lock이 켜져있습니다.</strong></p></div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
</body>
</html>