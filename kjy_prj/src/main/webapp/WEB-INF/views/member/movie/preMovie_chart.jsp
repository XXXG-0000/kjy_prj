<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>무비차트</title>



<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- 추가 스타일 -->
<style>
body {
    font-family: Arial, sans-serif;
}
.wrap-movie-chart {
    min-width: 1200px;
    margin: 20px auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    position: relative; /* 버튼 위치 조정을 위해 추가 */
}

.tit-heading-wrap {
    margin-bottom: 20px;
    height: 80px;
    border-bottom: 2px solid #333;
}

.chart_title {
	display: inline-block;
	font-size: 35px;
	font-weight: bold;
	color: #333;
}

.submenu {
	display: inline-block;
}

.sect-sorting {
    text-align: right;
    margin-bottom: 20px;
}

.nowshow {
    text-align: left;
}

.sect-movie-chart {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 20px;
    padding: 0;
    list-style-type: none;
}

.movie-item {
    width: 23%; /* 한 줄에 4개 배치 */
    text-align: center;
    background: #fff;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
}


.movie-item img {
    width: 100%;
    max-width: 150px;
    height: auto;
    margin: 0 auto 10px;
    border-radius: 5px;
}

.movie-item .rank {
    font-size: 1rem;
    color: #d9534f;
    font-weight: bold;
}

.movie-item .title {
    font-size: 1rem;
    font-weight: bold;
    color: #000;
    margin: 5px 0;
}

.movie-item .title:hover {
    text-decoration: underline;
}

.movie-item .score {
    font-size: 15px;
    color: #666;
}

.btn-rsv, .btn-more {
    background-color: #d9534f;
    color: #fff;
    padding: 10px 15px; 
    font-size: 11px; 
    border: none; 
    border-radius: 5px;
    text-align: center; 
    text-decoration: none; 
    font-weight: bold;
    display: inline-block; 
}

.btn-rsv:hover, .btn-more:hover {
    background-color: #c9302c; 
}
</style>

<script>
$(document).ready(function() {
    const itemsToShow = 20; // 처음에 표시할 항목 수
    const totalItems = $(".movie-item").length; // 전체 항목 수

    $(".movie-item").slice(itemsToShow).hide(); // 처음 20개만 표시하고 나머지는 숨김

    $(".btn-more").on("click", function(e) {
        e.preventDefault();
        $(".movie-item:hidden").slice(0, itemsToShow).slideDown(); // 숨겨진 항목 중 20개씩 표시
        if ($(".movie-item:hidden").length === 0) {
            $(this).fadeOut(); // 모든 항목을 표시하면 버튼 숨김
        }
    });
});
</script>
</head>
<body>
<div id="wrap"
     style="min-height: 400px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center; ">
<jsp:include page="/WEB-INF/views/member/common/header.jsp"/>
<div class="wrap-movie-chart">
    <!-- 제목 -->
    <div class="tit-heading-wrap" style="height: 93px;">
    <div class="chart_title">상영예정작</div>
        <div class="submenu">
            <ul>
                <li class="on"><a href="/movies/" title="선택">무비차트</a></li>
                <li><a href="/movies/pre-movies.aspx">상영예정작</a></li>
            </ul>
        </div>
    </div>
    

    <c:forEach var="movie" items="${movieList}" varStatus="status">
        <!-- 4개의 항목마다 새로운 <ol> 시작 -->
        <c:if test="${status.index % 4 == 0}">
            <ol class="sect-movie-chart">
        </c:if>

        <!-- 영화 항목 -->
        <li class="movie-item">
            <div class="rank">No.${status.index + 1}</div>
            <img src="${movie.main_image}" alt="${movie.title_k}">
            <div class="title">${movie.title_k}</div>
            <div class="score">예매율: ${movie.rate}%</div>
            <div class="score">${movie.release_date} 개봉</div>
            <div><a href="/movie/detail/${movie.movie_num}" class="btn-rsv">상세보기</a></div>
        </li>

        <!-- 4개의 항목을 표시한 후 <ol> 종료 -->
        <c:if test="${status.index % 4 == 3 || status.last}">
            </ol>
        </c:if>
    </c:forEach>

    <!-- 더보기 버튼 -->
    <a href="#" class="btn-more">더보기</a>
    
</div>
<jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
</body>
</html>
