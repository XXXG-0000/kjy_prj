<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         info=""
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>스틸컷</title>

    <!-- bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <!-- jQuery CDN 시작 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <!-- Swiper.js CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <style>

    </style>
    <style type="text/css">
        /* CSS영역 => CSS 디자인 코드 작성 */
        #container {
            width: 100%;
            padding-bottom: 40px;
        }

        .base_movie {
            width: 980px;
            height: 300px;
            justify-content: center;
            margin: auto;
            padding-top: 40px;
        }

        .box_image {
            width: 185px;
            height: 260px;
            margin-right: 20px;
            display: inline-block;
            position: relative;
            top: -115px; /* 음수 값으로 위로 이동 */
        }

        .poster_img {
            width: 100%;
            height: 100%;
        }

        .box_contents {
            width: 765px;
            height: 260px;
            display: inline-block;
            vertical-align: middle;
        }

        .title {
            width: 765px;
        }

        .title_k {
            font-size: 22px;
            vertical-align: center;
        }

        .title_e {
            font-size: 10px;
            color: #525252
        }

        .screen_status {
            vertical-align: center;
            border: 2px solid #22A8B3;
            font-size: 13px;
            margin-left: 5px;
            padding: 1px;
            color: #22A8B3;
        }

        .score {
            margin-top: 20px;
            padding-bottom: 5px;
            border-bottom: 1px solid #DDD;
        }

        .li_score {
            display: inline-block;
        }

        div > ul > .li_score::after {
            content: "|";
            float: right;
            display: inline-block;
        }

        div > ul > .li_score:last-child::after {
            content: "";
        }

        .percent {
            font-size: 14px;
        }



        .movie_info {
            padding-top: 20px;
            color: #333;
        }

        #tab_menu {
            width: 800px;
            height: 40px;
            background-color: #FB4357;
            color: #FFF;
            margin: auto;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        #tab_menu, .tab_menu_td {
            border: 1px solid #333;
            border-collapse: collapse;
        }

        .tab_menu_td {
            width: 60px;
            font-weight: bold;
        }

        /* .on {
            font-weight: bold;
        } */
        td {
            cursor: pointer;
        }

        .movie_btn {
            margin-top: 20px;
        }

        .button {
            width: 80px;
            height: 30px;
            color: #333;
            border: 1px solid #333;
            text-align: center;
            border-radius: 5px;
        }

        .book_btn {
            background-color: #FB4357;
        }

        .cols_content {
            width: 800px;
            margin: auto;
        }


        .heading {
            position: relative;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .head_span {
            position: absolute;
            top: 25%;
            left: 5px;
        }

        /* S Slider */
        * {
            box-sizing: border-box
        }



        /* Next & previous buttons */
        .swiper-button-prev, .swiper-button-next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: 40px;
            height: 40px;
            margin-top: -20px; /* 버튼을 수직 중앙 정렬 */
            background-color: rgba(0, 0, 0, 0.7); /* 반투명 검은색 배경 */
            color: #fff;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 4px; /* 사각형 버튼 */
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1000; /* 가장 위로 */
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        /* 버튼 hover 효과 */
        .swiper-button-prev:hover, .swiper-button-next:hover {
            background-color: #333; /* hover 시 더 진한 배경 */
            transform: scale(1.1); /* 확대 효과 */
            color: #fff;
        }

        /* 위치 조정 */
        .swiper-button-prev {
            left: 20px; /* 컨테이너 밖으로 조금 나오게 설정 */
        }

        .swiper-button-next {
            right: -20px; /* 컨테이너 밖으로 조금 나오게 설정 */
        }


        .active, .dot:hover {
            background-color: #717171;
        }

        @keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }

        /* E Slider */

        /* S Comment */


        .comment-li:nth-child(odd) {
            border-bottom: 1px solid #DDD;
            border-right: 1px solid #DDD;
        }

        .comment-li:nth-child(even) {
            border-bottom: 1px solid #DDD;
        }

        .comment-container ul {
            display: flex;
            list-style: none;
            flex-wrap: wrap;
            text-align: center;
            padding-left: 20px;
            padding-right: 20px;
        }

        .comment-container ul li {
            text-align: left;
            width: calc(100% / 2);
            position: relative;
        }


        .comment-li:nth-child(odd) .box-image {
            width: 88px;
        }

        .comment-li:nth-child(even) .box-image {
            width: 108px;
            padding-left: 24px;
        }

        .slideshow-container {
            position: relative; /* 버튼 기준 위치 설정 */
            overflow: hidden; /* 내부 콘텐츠가 컨테이너를 벗어나지 않도록 제한 */
            width: 800px;
            height: 450px;
            margin: auto;
            margin-top: 20px;
        }


        .swiper-slide img {
            display: block;
            margin: auto;
        }


        /* E Comment */
    </style>
    <script type="text/javascript">

    </script>
</head>
<body>

<div id="wrap"
     style="min-height: 1000px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center; ">
    <jsp:include page="/WEB-INF/views/member/common/header.jsp"/>
    <div id="container">
        <div class="base_movie">
            <div class="box_image">
                <img alt="영화 포스터" src="${detailMovie.main_image}" class="poster_img">
            </div>
            <div class="box_contents">
                <div class="title">
                    <span class="title_k"><strong><c:out value="${detailMovie.title_k}"/></strong></span>
                    <span class="screen_status">
    <c:choose>
        <c:when test="${detailMovie.screening_f == '0'}">
            상영예정
        </c:when>
        <c:when test="${detailMovie.screening_f == '1'}">
            현재상영중
        </c:when>
        <c:when test="${detailMovie.screening_f == '2'}">
            상영종료
        </c:when>
        <c:otherwise>
            상태 미확인
        </c:otherwise>
    </c:choose>
</span>
                    <div>
                        <span class="title_e"><c:out value="${detailMovie.title_e}"/></span>
                    </div>
                </div>
                <div class="score">
                    <ul>
                        <li class="li_score li_percent">
                            <strong class="percent">
                                예매율
                                <span style="padding-right: 5px;"><c:out value="${detailMovie.rate}"/>%</span>
                            </strong>
                        </li>

                    </ul>
                </div>
                <div class="movie_info">
                    <div style="margin-bottom: 5px;">
    <span class="director">감독:
        <c:forEach var="director" items="${detailMovie.directors}">
            <c:out value="${director.s_name}"/> <c:if test="${!empty director}"> / </c:if>
        </c:forEach>
    </span>
                        <span class="actors">배우 :
        <c:forEach var="actor" items="${detailMovie.actors}">
            <c:out value="${actor.actor}"/> <c:if test="${!empty actor}"> / </c:if>
        </c:forEach>
    </span>
                    </div>
                    <div style="margin-bottom: 5px;">
                        <span class="genre">장르 :
                               <c:forEach var="genre" items="${detailMovie.genres}">
                                   <c:out value="${genre.g_name}"/> <c:if test="${!empty genre}"> / </c:if>
                               </c:forEach>
                       </span>
                        <span class="info_etc">
    기본 정보 :
    <c:choose>
        <c:when test="${detailMovie.audience_rating == 0}">전체관람가</c:when>
        <c:when test="${detailMovie.audience_rating == 1}">7세이상관람가</c:when>
        <c:when test="${detailMovie.audience_rating == 2}">12세이상관람가</c:when>
        <c:when test="${detailMovie.audience_rating == 3}">15세이상관람가</c:when>
        <c:when test="${detailMovie.audience_rating == 4}">성인관람가</c:when>
        <c:otherwise>등급 정보 없음</c:otherwise>
    </c:choose>,
    <c:out value="${detailMovie.showtime}"/>분,
     <c:forEach var="country" items="${detailMovie.conutries}" varStatus="status">
         <c:out value="${country.country_name}"/>
         <c:if test="${!status.last}">, </c:if>
     </c:forEach>
</span></div>
                    <div style="margin-bottom: 5px;">
                        <span class="">개봉 : <c:out value="${detailMovie.release_date}"/></span>
                    </div>
                </div>
                <div class="movie_btn">
                    <input type="button" class="button egg_btn" value="프리에그"/>
                    <input type="button" class="button book_btn" value="예매하기"/>
                </div>
            </div>
        </div>
        <table id="tab_menu">
            <thead></thead>
            <tbody>
            <tr>
                <td class="tab_menu_td main_info on" onclick="javascript:location.href='/movie/detail/${movie_num}'">
                    주요정보
                </td>
                <td class="tab_menu_td main_cast" onclick="javascript:location.href='/movie/detail_actor/${movie_num}'">
                    감독/출연
                </td>
                <td class="tab_menu_td main_still_cut"
                    onclick="javascript:location.href='/movie/detail_stillCut/${movie_num}'">스틸컷
                </td>
                <td class="tab_menu_td main_comment"
                    onclick="javascript:location.href='/movie/detail/${detailMovie.movie_num}'">평점/리뷰
                </td>
            </tr>
            </tbody>
        </table>

        <!-- 슬라이드 쇼 영역 -->
        <div class="cols_content still_cut">
            <div class="heading">
                <span class="head_span">스틸컷 ${still_cut_size} 건</span>
            </div>
            <c:choose>
                <c:when test="${not empty imageList}">
                    <div class="slideshow-container swiper">
                        <div class="swiper-wrapper" style="margin-top: 60px">
                            <c:forEach items="${imageList}" var="image">
                                <div class="swiper-slide">
                                    <img src="${image}" alt="Still cut" class="slide-image">
                                </div>
                            </c:forEach>
                        </div>
                        <!-- 네비게이션 버튼 -->
                        <div class="swiper-button-next" style="margin-right: 30px"></div>
                        <div class="swiper-button-prev" style="margin-left:  30px"></div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="no-still-cut">등록된 스틸컷이 없습니다.</div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        new Swiper('.swiper', {
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            loop: true,
        });
    });
</script>
</body>
</html>