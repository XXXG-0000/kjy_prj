<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC</title>
<%--
<title>${ site_kor }</title>
<link rel="stylesheet" type="text/css"
	href="${ defaultURL }common/css/main_20240911.css">
--%>
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>


<style type="text/css">
/* CSS영역 => CSS 디자인 코드 작성 */

</style>
<script type="text/javascript">
/* JS 영역 => JS 코드 작성 */
$(function(){
	
}); // ready
<c:choose>
<c:when test="${ empty userinfo }">
alert("아이디와 비밀번호를 다시 확인해주세요.");
location.href="/admin";		
</c:when>
<c:otherwise>
//alert("아이디와 비밀번호를 다시 확인해주세요.");
location.href="/admin/dashboard";		
</c:otherwise>
</c:choose>

</script>
</head>
<body>
<div id="wrap">
ㄴㄴㄴㄴㄴㄴㄴ
	<%-- <c:choose>
	<c:when test="${ empty userInfo }">
		
	</c:when>
	<c:otherwise>
	
	</c:otherwise>
	</c:choose> --%>

</div>
</body>
</html>