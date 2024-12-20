<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="관리자 - 대시보드"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${ site_kor }</title>

<link rel="shortcut icon" href="${ defaultURL }common/images/favicon.ico">

<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- Swiper CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.js"></script>

<!-- d3.js CDN -->
<script src="http://d3js.org/d3.v3.min.js"></script>

<!-- 외부 CSS -->
<link href="http://localhost/jsp_prj/movie/common/css/common.css" rel="stylesheet" type="text/css">
<link href="http://localhost/jsp_prj/movie/common/css/header.css" rel="stylesheet" type="text/css">
<link href="http://localhost/jsp_prj/movie/common/css/sideMenu.css" rel="stylesheet" type="text/css">
<link href="http://localhost/jsp_prj/movie/common/css/dashboard.css" rel="stylesheet" type="text/css">

<style type="text/css">
#sideMenuContainer {
	display: inline-block;
}

main {
}

#mainMenuContainer {
}

#dashContainer {
	height: 300px; 
}

.swiper-container {
	/* width: 100%;
	max-width: 100%; */
	height: 320px;
	overflow: hidden;
	background-color: #A5D1F8;
}
.swiper-wrapper{
	display: flex;
}
.swiper-slide {
	margin: 0 15px;
	border-radius: 8px;
	text-align: center;
	padding: 10px;
	flex-direction: column;
	align-items: center;
	border: 1px solid #000;
	background-color: #f0f0f0;
}
.swiper-slide img {
	width: 140px;
	height: 200px;
	margin-bottom: 7px;
}
span{
	font-size: 14px;
}
.title{
	display: block;
	font-weight: bold;
}
.swiper-button-next, .swiper-button-prev {
	color: #f0f0f0;
}
.manage_screen {
	background-color: #FF0000;
	color: #FFF;
	font-weight: bold;
	border-radius: 10px;
	border: 1px solid #FFF;
}
</style>

</head>
<body>

<div id="wrap">
<div id="header">
<jsp:include page="../common/jsp/header.jsp"/>
</div>

<div id="container" class="container-fluid">
<div class="row">
	<jsp:include page="../common/jsp/sideMenu.jsp"/>

	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<!-- d3.js를 이용해 차트 생성 -->
		<!-- <div id="dashContainer">
			<h6>대시보드</h6>
			<div id="reserbationContainer">
			일일예매건수
			</div>
			
			<div id="memberContainer">
			일일신규&탈퇴회원
			</div>
		</div> -->
		    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2"><strong>영화 관리</strong></h1>
            </div>
		<div id="coffeeList" style="width: 750px; margin: 0 auto;">
        <table class="table">
		<thead>
			<tr>
				<th style="height: 40px;">영화번호</th>
				<th>영화제목</th>
				<th style="text-align: center;">상영상태</th>
				<th style="text-align: center;">상영관리</th>
			</tr>
		</thead>
		<tbody>
			<!-- 테이블 생성.. -->
			<%--
			<c:forEach var="movie" items="${  }" varStatus="i">
			</c:forEach>
			--%>
			<tr>
				<td>00001</td>
				<td><a href="#void">모아나2</a></td>
				<td style="display: flex; justify-content: center; align-items: center;"><div class="movieState" style="width: 90px; height: 30px; background-color: orange; border-radius: 5px; color: #FFF; display: flex; justify-content: center; align-items: center;">상영대기</div></td>
				<td style="text-align: center;"><input type="button" class="manage_screen" value="상영관리"/></td>
			</tr>
			<tr>
				<td>00001</td>
				<td><a href="#void">모아나2</a></td>
				<td style="display: flex; justify-content: center; align-items: center;"><div class="movieState" style="width: 90px; height: 30px; background-color: green; border-radius: 5px; color: #FFF; display: flex; justify-content: center; align-items: center;">상영중</div></td>
				<td style="text-align: center;"><input type="button" class="manage_screen" value="상영관리"/></td>
			</tr>
			<tr>
				<td>00001</td>
				<td><a href="#void">모아나2</a></td>
				<td style="display: flex; justify-content: center; align-items: center;"><div class="movieState" style="width: 90px; height: 30px; background-color: gray; border-radius: 5px; color: #FFF; display: flex; justify-content: center; align-items: center;">상영종료</div></td>
				<td style="text-align: center;"><input type="button" class="manage_screen" value="상영관리"/></td>
			</tr>
		</tbody>
		</table>
        <!-- search -->
		<div id="search" style="width: 750px; height: 60px; text-align: center;">
		<form action="/admin/movie_list" method="get" id="searchFrm" name="searchFrm">
			<select id="field" name="field" style="width: 100px; height: 44px;">
                <option value="0">번호</option>
                <option value="1">제목</option>
            </select>
			<input type="text" name="keyword" id="keyword" style="width: 200px"/>
			<input type="button" value="검색" id="btn"  class="btn btn-sm" style="background-color: #8C3434; color: #FFF;"/>
		</form>
			<input type="text" name="keyword" style="display: none"/><!-- 엔터키 눌러도 검색되는 것을 방지 -->
		</div> 
		<!-- search end -->
		<!-- pagination -->
		<ul class="pagination justify-content-center">
		<%-- <% sVO.setUrl("selectCoffeeList.jsp"); %>
		<%= new ProductUtil().pagination(sVO) %> --%>
		</ul>
		<!-- pagination end -->
        </div>
			<c:set var="loginFlag" value="javascript:loginMove()"/>
			<c:if test="${ not empty managerId }">
			<c:set var="loginFlag" value="insertDrink.jsp"/>
			</c:if>
        	<input type="button" class="btn" style="border:none; float: right; 
        	margin-left: 10px; border-radius: 20px; padding: 10px; background-color: #8C3434; color: #FFF;" 
        	value="영화 추가">
        	<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
	</main>
			<!-- swipe slider를 이용해 상영중인 영화 나열 -->
		
</div>
</div>


</div>

</body>
</html>