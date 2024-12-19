<%@ page contentType="text/html;charset=UTF-8" language="java" info="" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
    <!--bootstrap CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <!-- jQuery CDN 시작 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <link rel="stylesheet" href="css/main_20240911.css">

    <style type="text/css">
        td {
            height: 50px;
            padding-bottom: 20px;
        }

        .myPut{
            border: 1px solid #DEDEDE;
            height: 37px;
            border-radius: 5px;
            padding-left: 10px;
        }
    </style>

    <script type="text/javascript">
        $(function () {

        });//ready
    </script>

</head>
<body>
<div id="wrap"
     style="min-height: 900px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center  ">
    <jsp:include page="/WEB-INF/views/member/common/header.jsp"/>
    <form action="/" name="" id="" method="post" style="width: 550px">
        <div style="text-align: center; margin: 30px 30px 30px 30px">
            <h1 style="font-size: 50px">회원가입</h1>
            <table style="margin-top: 40px">
                <!-- id 입력 -->
                <tr>
                    <td><span class="required line">*</span><label>아이디</label></td>
                    <td style="float: left">
                        <input type="text" class="myPut" value="">
                        <input type="button"  value="아이디 중복 확인" class="btnSubmit">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>비밀번호</td>
                    <td style="float: left">
                        <input type="password" class="myPut" value="">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>비밀번호 확인</td>

                    <td style="float: left">
                        <input type="password"  class="myPut" value="">
                    </td>


                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>이름</td>
                    <td style="float: left">
                        <input type="text"  class="myPut" value="">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>생년월일</td>
                    <td style="float: left">
                        <input type="text"  id="year" class="inputBox" style="width: 50px"
                               placeholder="2003" maxlength="4">년
                        <input type="text" name="text" id="month" class="inputBox" style="width: 30px" placeholder="3" maxlength="2">월
                        <input type="text" name="text" id="day" class="inputBox" style="width: 30px" placeholder="31" maxlength="2">일
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required"></span>닉네임</td>
                    <td style="float: left"><input type="text" class="myPut" value="">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>전화번호</td>
                    <td style="float: left">
                        <input type="tel" id="phone1" name="phone1" class="inputBox" style="width: 50px"
                               maxlength="13" value=""> -
                        <input type="tel" id="phone2" name="phone2" class="inputBox" style="width: 50px"
                               maxlength="13" value=""> -
                        <input type="tel" id="phone3" name="phone3" class="inputBox" style="width: 50px"
                               maxlength="13" value="">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>이메일</td>
                    <td style="float: left" >
                        <input type="email"  class="myPut" style="width: 100px" required
                               value=""> @
                        <select size="1" class="inputBox" >
                            <option value="NA" selected>선택해주세요</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="naver.com" >naver.com</option>
                            <option value="daum.net">daum.net</option>
                            <option value="hotmail.com">hotmail.com</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>성별</td>
                    <td >
                        <input type="radio" name="gender" value="남" checked> 남자
                        <input type="radio" name="gender" value="여"> 여자
                    </td>
                </tr>
            </table>

        </div>
        <div style=" text-align: center;">
            <input type="button" id="btnSubmit" value="가입" class="btnSubmit" name="btnSubmit">
            <input type="button" id="btnReset" value="취소" class="btnMyReset" name="btnReset">
        </div>

    </form>
</div>
<jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
</body>
</html>
