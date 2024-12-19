<%@ page contentType="text/html;charset=UTF-8" language="java" info="" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>내가 본 영화</title>
    <link rel="stylesheet" href="http://localhost/css/main_20240911.css">
    <!--bootstrap CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <!-- jQuery CDN 시작 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>
<body>
<div id="wrap"
     style="min-height: 1200px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center;">
    <jsp:include page="/WEB-INF/views/user/common/header.jsp"/>
    <div style="width: 80%; height: 1000px; display: flex; flex-direction: column; align-items: center;">
        <div style="width: 70%; height: 80%;">
            <div style="width: 20%; height: 100%; float: left">
                <div class="box"
                     style="width: 80%; height: 30%; display: flex; flex-direction: column; align-items: center; justify-content: center; position: relative;">
                    <img src="http://localhost/images/basic.png" class="profile-image">
                    <div class="box-text" style="margin-top: 20px;">
                        정미영님 <img src="http://localhost/images/pen.png" alt="" style="width: 20px; height: 20px;">
                    </div>
                </div>
                <a href="/myPage/movieList">
                <div class="box" style="width: 80%; height: 15%;">
                    <div class="box-num">9</div>
                    <div class="box-text">기대되는 영화</div>
                </div>
                </a>
                <a href="/myPage/movieView">
                <div class="box active" style="width: 80%; height: 15%; ">
                    <div class="box-num">3</div>
                    <div class="box-text">
                        내가 본 영화
                    </div>
                </div>
                </a>
                <a href="/myPage/movieReview">
                <div class="box" style="width: 80%; height: 15%; ">
                    <div class="box-num">2</div>
                    <div class="box-text">
                        내가 쓴 평점
                    </div>
                </div>
                </a>
            </div>
            <div style="width: 80%; height: 100%;  float: right">
                <div style="width: 100%; height: 10%; border-bottom: 1px solid darkgrey">
                    <p style="font-size: 25px; color: #222222; padding: 10px 10px 10px 10px">내가 본 영화 <span> 3건</span></p>
                </div>
                <%-- 영화 리스트--%>
                <div style="width: 100%; height:90%;">
                    <div style=" height: 250px; padding: 15px 15px 15px 15px; border-bottom: 1px solid #222222; border-radius: 10px; margin: 10px">
                        <div style="float: left">
                            <img style="width: 150px; height: 200px;" src="http://localhost/images/모아나.jpg">
                        </div>
                        <div style="float: left">
                            <p class="box-p">영화 제목</p>
                            <p class="box-p">부 제목</p>
                            <p class="box-p">관람시간</p>
                            <p class="box-p">극장/상영관</p>
                            <p class="box-p">프리에그 & 평가</p>
                        </div>
                        <div style="float: right">
                            <a href="">X</a>
                        </div>
                    </div>
                    <div style=" height: 250px; padding: 15px 15px 15px 15px; border-bottom: 1px solid #222222; border-radius: 10px; margin: 10px">
                        <div style="float: left">
                            <img style="width: 150px; height: 200px;" src="http://localhost/images/모아나.jpg">
                        </div>
                        <div style="float: left">
                            <p class="box-p">영화 제목</p>
                            <p class="box-p">부 제목</p>
                            <p class="box-p">관람시간</p>
                            <p class="box-p">극장/상영관</p>
                            <p class="box-p">프리에그 & 평가</p>
                        </div>
                        <div style="float: right">
                            <a href="">X</a>
                        </div>
                    </div>
                    <div style=" height: 250px; padding: 15px 15px 15px 15px; border-bottom: 1px solid #222222; border-radius: 10px; margin: 10px">
                        <div style="float: left">
                            <img style="width: 150px; height: 200px;" src="http://localhost/images/모아나.jpg">
                        </div>
                        <div style="float: left">
                            <p class="box-p">영화 제목</p>
                            <p class="box-p">부 제목</p>
                            <p class="box-p">관람시간</p>
                            <p class="box-p">극장/상영관</p>
                            <p class="box-p">프리에그 & 평가</p>
                        </div>
                        <div style="float: right">
                            <a href="">X</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>
