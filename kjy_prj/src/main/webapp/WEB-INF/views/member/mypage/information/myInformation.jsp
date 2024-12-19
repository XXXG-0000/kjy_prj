<%@ page contentType="text/html;charset=UTF-8" language="java" info="" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>내 정보 확인</title>
    <link rel="stylesheet" href="http://localhost/css/main_20240911.css">

    <!--bootstrap CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <!-- jQuery CDN 시작 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <style type="text/css">

        a:hover {
            font-size: inherit; /* hover 상태에서 크기 변화 없음 */
        }



    </style>
</head>
<body>
<div id="wrap"
     style="min-height: 1400px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center; ">
    <jsp:include page="/WEB-INF/views/user/common/header.jsp"/>
    <div id="mycgv-content"
         style=" width: 80%; height: 450px; display: flex; flex-direction: column; align-items: center; ">
        <div id="detail"
             style="height: 450px; width: 80%; display: flex; flex-direction: column; align-items: center; background-color: #F8F8F8; border-bottom: 1px solid #e8e8e8;">
            <div style="height: 200px; width: 80%; ">
                <img src="http://localhost/images/basic.png" class="profile-image" alt=""
                     style="width: 135px; padding: 10px; height: 135px; float: left">
                <h2 style="font-size: 45px; float: left; margin-top: 50px">정미영님</h2>
                <p></p>
                <p style="font-size: 25px; float: left; margin-top: 55px; margin-left: 20px">mimi</p>
                <p style="font-size: 20px; float: left; margin-top: 55px; margin-left: 20px">닉네임 : 닉네임을 설정해주세요. </p>
                <img src="http://localhost/images/pen.png" alt=""
                     style="width: 25px; height: 25px; margin-top: 50px; margin-left: 5px; border-bottom: 2px solid #222222">
            </div>
            <div style=" height: 250px; width: 80%; display: flex; flex-direction: column; align-items: center; ">

                <div style="height: 250px; width: 40%;  text-align: center; border-left: 1px solid #e8e8e8; border-right: 1px solid #e8e8e8">
                    <div style="text-align: center">
                        <span style="color: #1c1c16; font-size: 35px; display: block; margin-top: 30px; ">MY MOVIE LIST</span>
                        <span style="color: #1c1c16; font-size: 25px; display: block; margin-top: 20px; margin-left: 20px; ">CGV VIP 도전하세요!</span>
                        <span style="color: #1c1c16; font-size: 20px; display: block; margin-top: 20px; margin-left: 20px; ">현재 예매한 영화: 0개</span>
                        <span style="color: #1c1c16; font-size: 20px; display: block; margin-top: 20px; margin-left: 20px; ">영화관람 횟수: 0번</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="mycgv-content2"
         style=" width: 80%; height: 650px; display: flex; flex-direction: column; align-items: center;  padding-top: 20px">
        <div id="detail2" style="height: 550px; width: 80%; display: flex; flex-direction: column; position: relative ">
            <div style="height: 100%; width: 250px; position: absolute; float: left">
                <ul class="menu-list" style="padding-right: 5px;">
                    <li style="background-color: #222221; font-size: 28px; padding: 10px; "><a href="/myPage" style="color: #FFFFFF">MY
                        CGV HOME</a></li>
                    <li class="sub"><a href="/myPage/movieList">기대되는 영화</a></li>
                    <li class="sub"><a href="/myPage/movieView">내가 본 영화</a></li>
                    <li class="sub"><a href="/myPage/movieReview">내가 쓴 평점</a></li>
                    <li class="home"><a href="/myPage/myReservation">나의 예매내역</a></li>
                    <li class="home"><a href="/myPage/information/myInformation">회원 정보</a></li>
                    <li class="sub"><a href="/myPage/information/myInformation">개인정보 설정</a></li>
                    <li class="sub"><a href="/myPage/information/modifyPass">비밀번호 변경</a></li>
                    <li class="sub"><a href="/myPage/information/retired">회원 탈퇴</a></li>
                </ul>
            </div>
            <%--여기가 달라진다.--%>
            <div style="height: 550px; width: 965px; position: absolute; left: 250px;  display: flex; flex-direction: column; align-items: center;">
                <div style="background-color: #e9e9e8; width: 100%; height: 100%">
                    <div style="width: 600px; padding-left: 25%; padding-top:5%;  display: flex;">
                        <form action="">
                            <p style="font-size: 30px; padding-bottom: 50px; padding-left: 120px">회원 정보 설정 <span
                                    style="font-size: 22px">aldud****</span></p>

                            <div class="form-group">
                                <label for="name">이름</label>
                                <input type="text" id="name" style="height: 35px; width: 187px">
                            </div>

                            <div class="form-group">
                                <label for="nickname">닉네임</label>
                                <input type="text" id="nickname" style="height: 35px;  width: 187px">
                                <input type="button" class="submit-button" style="height: 35px; margin-left: 20px "
                                       value="중복확인">
                            </div>

                            <div class="form-group">
                                <label for="email">이메일</label>
                                <input type="text" id="email" style="height: 35px;  width: 187px">
                            </div>

                            <div class="form-group">
                                <label for="phone">전화번호</label>
                                <input type="text" id="phone" style="height: 35px;  width: 187px">
                            </div>
                            <div class="form-group profile-group">
                                <div class="profile-preview" id="profilePreview">
                                    <!-- 미리보기 이미지가 여기에 표시됨 -->
                                </div>
                                <input type="file" id="profile" accept="image/*" >
                            </div>
                            <div class="form-group button-group">
                                <button type="button" class="submit-button">수정</button>
                                <button type="button" class="reset-button">취소</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>
