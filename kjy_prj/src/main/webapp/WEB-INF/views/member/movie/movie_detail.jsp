<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         info=""
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화 상세보기</title>

    <!-- bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <!-- jQuery CDN 시작 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

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

        .info_title {
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 10px;
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


        /* Hide the images by default */

        .mySlides img {
            height: 100%;
        }


        /* Fading animation */
        /* .fade {
          animation-name: fade;
          animation-duration: 1.5s;
        } */

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
        .comment-ul {
            border-top: 2px solid #DDD;
            border-collapse: collapse;
        }

        .comment-li {
            width: 336px;
            height: 210px;
            padding-top: 30px;
            padding-bottom: 30px;
        }

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

        .box-image {
            height: 62px;
            padding-right: 24px;
            display: inline-block;
            vertical-align: top;
        }

        .comment-li:nth-child(odd) .box-image {
            width: 88px;
        }

        .comment-li:nth-child(even) .box-image {
            width: 108px;
            padding-left: 24px;
        }

        .thumb-image {
            width: 62px;
            height: 62px;
        }

        .thumb-image img {
            width: 100%;
            height: 100%;
            border-radius: 50%;
        }

        .comment {
            padding-bottom: 30px;
        }

        .comment-contents {
            display: inline-block;
        }

        .writerInfo {
            display: flex;
            align-items: center; /* 수직 정렬 */
        }

        .writer {
            font-size: 20px;
            margin-right: 10px;
            margin-bottom: 35px /* 텍스트와 아이콘 사이 간격 */
        }


        .small-icon {
            width: 20px;
            height: 20px;
            object-fit: contain; /* 이미지 왜곡 방지 */
            margin-left: 40px;
        }

        /* E Comment */
    </style>
    <script type="text/javascript">
        /* JS 영역 => JS 코드 작성 */
        $(function () {
            $(".tab_menu_td").click(function () {

            });//click

            $.ajax({
                url: '/movie/review/' + '${detailMovie.movie_num}',
                type: 'GET',
                success: function (response) {
                    console.log("리뷰 데이터:", response);

                    var commentList = $('.comment-ul');
                    commentList.empty();  // 기존 댓글 비우기

                    if (Array.isArray(response) && response.length > 0) {
                        response.forEach(function (review) {
                            var li = $('<li>').addClass('comment-li');

                            // 프로필 이미지
                            var profileImage = review.profile ? '/upload/' + review.profile : '/images/default_image.jpg'; // 수정된 부분
                            var boxImage = $('<div>').addClass('box-image').append(
                                $('<span>').addClass('thumb-image').append(
                                    $('<img>').attr('alt', '사용자 프로필').attr('src', profileImage)
                                )
                            );

                            // 리뷰 날짜 포맷팅
                            var reviewDate = new Date(review.review_date);
                            var formattedDate = reviewDate.toLocaleDateString();  // 날짜 포맷팅

                            // 리뷰 내용과 작성자 정보
                            var commentContents = $('<div>').addClass('comment-contents').append(
                                $('<div>').addClass('writerInfo').append(
                                    $('<span>').addClass('egg-icon ' + review.review_f),  // review_f 값으로 class 추가
                                    $('<span>').addClass('writer').text(review.member_id + '님')  // 작성자 표시
                                )
                            );

                            // review_f에 따라 아이콘 이미지 추가
                            var iconImage = '';
                            if (review.review_f === 'G') {
                                iconImage = $('<img>').attr('src', '/images/good.png').attr('alt', '좋은 리뷰').addClass('small-icon');
                            } else if (review.review_f === 'B') {
                                iconImage = $('<img>').attr('src', '/images/bad.png').attr('alt', '나쁜 리뷰').addClass('small-icon');
                            }

                            // 아이콘 이미지 추가
                            boxImage.append(iconImage);

                            // 리뷰 내용과 작성일 추가
                            commentContents.append(
                                $('<div>').addClass('comment').text('리뷰: ' + review.review),  // 리뷰 내용
                                $('<div>').addClass('date').text('작성일: ' + formattedDate)  // 작성일
                            );

                            // li에 boxImage와 commentContents를 추가
                            li.append(boxImage, commentContents);
                            commentList.append(li);  // ul에 새로운 li 추가
                        });
                    } else {
                        // 리뷰가 없을 때 "리뷰가 없습니다." 메시지 표시
                        var noReviewsMessage = $('<div>').addClass('no-reviews').text('리뷰가 없습니다.');
                        commentList.append(noReviewsMessage);  // ul에 "리뷰가 없습니다." 메시지 추가
                    }
                },
                error: function (xhr, status, error) {
                    console.log("에러 발생:", error);
                }
            });

            $("#preBtn").click(function (evt) {
                evt.preventDefault();
                var memberId = '${memberInfo.member_id}';
                var movie_num = '${detailMovie.movie_num}';

                if (confirm("해당 영화를 [기대되는 영화]에 넣겠습니까?")) {
                    if ("" === (memberId)) {
                        alert("로그인 한 사용자만 이용하실 수 있습니다.");
                        location.href = "/login";
                        return;
                    }


                    $.ajax({
                        url: "/movie/addPre",
                        data: {memberId: memberId, movie_num: movie_num},
                        error: function (xhr) {
                            console.log(xhr.status);
                        },
                        success: function (data) {
                            if (data) {
                                alert("성공적으로 추가되었습니다!");
                            }else {
                                alert("도중 문제가 발생했습니다. 잠시후 다시 시도해주세요.");
                            }
                        }
                    })
                }
            });

        }); // ready
    </script>
</head>
<body>
<div id="wrap"
     style="min-height: 1200px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center; ">
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
                    <input type="button" class="button egg_btn" value="프리에그" id="preBtn"/>
                    <input type="button" class="button book_btn" value="예매하기"/>
                </div>
            </div>
        </div>
        <table id="tab_menu">
            <thead></thead>
            <tbody>
            <tr>
                <td class="tab_menu_td main_info on"
                    onclick="javascript:location.href='/movie/detail/${detailMovie.movie_num}'">주요정보
                </td>
                <td class="tab_menu_td main_cast"
                    onclick="javascript:location.href='/movie/detail_actor/${detailMovie.movie_num}'">감독/출연
                </td>
                <td class="tab_menu_td main_still_cut"
                    onclick="javascript:location.href='/movie/detail_stillCut/${detailMovie.movie_num}'">스틸컷
                </td>
                <td class="tab_menu_td main_comment">평점/리뷰</td>
            </tr>
            </tbody>
        </table>
        <div class="cols_content info" style="display:block;">
            <div style="margin-bottom: 20px;">
                <div class="info_title" style="margin-bottom: 10px">줄거리</div>
                <div style="font-size: 15px">
                    <c:out value="${detailMovie.info}"/></div>
            </div>
        </div>
    </div>
    <div class="cols_content comment" style="display:block;">
        <div class="heading">
            <span class="head_span">평점/리뷰</span>
        </div>

        <div class="comment-container">
            <ul class="comment-ul"></ul>
        </div>

    </div>
</div>
</div>
<jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
</body>
</html>