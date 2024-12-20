<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="관리자 - 영화관리"
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

<!-- 외부 CSS -->
<link href="http://localhost/jsp_prj/movie/common/css/common.css" rel="stylesheet" type="text/css">
<link href="http://localhost/jsp_prj/movie/common/css/header.css" rel="stylesheet" type="text/css">
<link href="http://localhost/jsp_prj/movie/common/css/sideMenu.css" rel="stylesheet" type="text/css">

<style type="text/css">
#container{
	background-color: #C4D5B6;
}
#movieListContainer{
	margin-top: 30px;
	text-align: center;
}
.screenManage{
	background-color: #d05252ff;
	border-radius: 7px;
	border: none;
	width: 90px;
	height: 30px;
	color: #fff;
}
#addContainer{
	background-color: yellow;
	position: absolute;
	top: 20px;
	right: 20px;
	width: 150px;
	text-align: center;
}
#addMovie{
	position: absolute;
	right: 0;
	background-color: #8C3434FF;
	border: none;
	border-radius: 7px;
	color: #fff;
	height: 30px;
}
</style>

<script type="text/javascript">
$(function(){
	
});//ready()
</script>

</head>
<body>

<div id="wrap">
<div id="header">
<jsp:include page="../common/jsp/header.jsp"/>
</div>

<jsp:include page="../common/jsp/sideMenu.jsp"/>

<div id="container">
	<h6>영화관리</h6>
	<div id="movieListContainer">
	<table class="table">
	<thead>
		<tr>
			<th style="height: 40px;">영화번호</th>
			<th>영화명</th>
			<th>상영상태</th>
			<th>상영관리</th>
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
			<td><input type="button" class="screenManage" value="상영관리"/></td>
		</tr>
		<tr>
			<td>00001</td>
			<td><a href="#void">모아나2</a></td>
			<td style="display: flex; justify-content: center; align-items: center;"><div class="movieState" style="width: 90px; height: 30px; background-color: green; border-radius: 5px; color: #FFF; display: flex; justify-content: center; align-items: center;">상영중</div></td>
			<td><input type="button" class="screenManage" value="상영관리"/></td>
		</tr>
		<tr>
			<td>00001</td>
			<td><a href="#void">모아나2</a></td>
			<td style="display: flex; justify-content: center; align-items: center;"><div class="movieState" style="width: 90px; height: 30px; background-color: gray; border-radius: 5px; color: #FFF; display: flex; justify-content: center; align-items: center;">상영종료</div></td>
			<td><input type="button" class="screenManage" value="상영관리"/></td>
		</tr>
	</tbody>
	</table>
	</div>
	
	<div id="addContainer">
		<input type="button" id="addMovie" value="영화추가"/>
	</div>
</div>

</div>

</body>
</html>