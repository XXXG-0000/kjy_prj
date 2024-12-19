<%@ page contentType="text/html;charset=UTF-8" language="java" info="" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>기대되는 영화</title>
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

<style type="text/css">
    a:hover {
        font-size: inherit; /* hover 상태에서 크기 변화 없음 */
    }


    .card {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        text-align: center;
        background-color: #f5f5f5;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 10px;


    }


    .card-movie-info {
        margin-top: 10px;
    }

    .card-movie-title {
        font-size: 18px;
        font-weight: bold;
        margin: 5px 0;
    }

    .card-movie-release {
        font-size: 14px;
        color: #666;
        margin: 5px 0;
    }

    .card-movie-detail {
        font-size: 14px;
        padding: 5px 10px;
        background-color: #fb4357;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .card-movie-detail:hover {
        background-color: #222222;
    }


</style>
<body>
<div id="wrap"
     style="min-height: 1200px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center;">
    <jsp:include page="/WEB-INF/views/member/common/header.jsp"/>
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
                    <div class="active box" style="width: 80%; height: 15%;">
                        <div class="box-num">9</div>
                        <div class="box-text">기대되는 영화</div>
                    </div>
                </a>
                <a href="/myPage/movieView">
                    <div class="box" style="width: 80%; height: 15%; ">
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
                    <p style="font-size: 25px; color: #222222; padding: 10px 10px 10px 10px">기대되는 영화 <span>3건</span></p>
                </div>
                <%-- 기대되는 영화 리스트--%>
                <div style="width: 100%; height:90%;">


                    <div class="image-container">
                        <!-- 영화 카드 -->
                        <div class="card">
                            <div ><a href="javascript:alert('취소하시겠습니까?')" style="padding-left: 220px">X</a></div>
                            <img src="http://localhost/images/모아나.jpg" alt="모아나 포스터"
                                 style="width: 230px; height: 300px;">
                            <div class="card-movie-info">
                                <p class="card-movie-title">모아나</p>
                                <p class="card-movie-release">개봉일: 2024-12-25</p>
                                <button class="card-movie-detail">상세보기</button>
                            </div>
                        </div>
                        <div class="card">
                            <div ><a href="javascript:alert('취소하시겠습니까?')" style="padding-left: 220px">X</a></div>
                            <img src="http://localhost/images/모아나.jpg" alt="모아나 포스터"
                                 style="width: 230px; height: 300px;">
                            <div class="card-movie-info">
                                <p class="card-movie-title">모아나</p>
                                <p class="card-movie-release">개봉일: 2024-12-25</p>
                                <button class="card-movie-detail">상세보기</button>
                            </div>
                        </div>
                        <div class="card">
                            <div ><a href="javascript:alert('취소하시겠습니까?')" style="padding-left: 220px">X</a></div>
                            <img src="http://localhost/images/모아나.jpg" alt="모아나 포스터"
                                 style="width: 230px; height: 300px;">
                            <div class="card-movie-info">
                                <p class="card-movie-title">모아나</p>
                                <p class="card-movie-release">개봉일: 2024-12-25</p>
                                <button class="card-movie-detail">상세보기</button>
                            </div>
                        </div>
                        <div class="card">
                            <div ><a href="javascript:alert('취소하시겠습니까?')" style="padding-left: 220px">X</a></div>
                            <img src="http://localhost/images/모아나.jpg" alt="모아나 포스터"
                                 style="width: 230px; height: 300px;">
                            <div class="card-movie-info">
                                <p class="card-movie-title">모아나</p>
                                <p class="card-movie-release">개봉일: 2024-12-25</p>
                                <button class="card-movie-detail">상세보기</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
<jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
</body>
</html>