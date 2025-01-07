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

    <!-- jQuery UI CSS -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <!-- jQuery UI JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>


    <link rel="stylesheet" href="css/main_20240911.css">

    <style type="text/css">
        td {
            height: 50px;
        }


        .myPut {
            border: 1px solid #DEDEDE;
            height: 37px;
            border-radius: 5px;
            padding-left: 10px;
        }
    </style>

    <script type="text/javascript">
        let idDupFlag = false; // 중복 확인 플래그


        $(function () {
            $("#capsWarning").hide();


            $("#password1").on("keydown", function (event) {
                if (event.originalEvent.getModifierState("CapsLock")) {
                    $("#capsWarning").show();
                } else {
                    $("#capsWarning").hide();
                }
            });


            $("#btnSubmit").click(function () {
                if (!chkFiled()) return false;
                if (!idDupFlag) {
                    alert("아이디 중복 확인을 완료해주세요.");
                    return false;
                }
                // 폼 제출
                $("#joinFrm").submit();
            });

            $("#memberIdDup").click(function () {
                const memberId = $("#member_id").val();
                if (memberId.replace(/[^a-zA-Z0-9]/g, '').length < 8) {
                    alert("아이디는 8자 이상이어야 합니다.");
                    return false;
                }
                idDup(); // 중복 체크
            });

            $("#member_id").change(function () {
                idDupFlag = false; // 아이디 변경 시 중복 확인 플래그 리셋
                const memberId = $("#member_id").val();
                if (memberId.replace(/[^a-zA-Z0-9]/g, '').length < 8) {
                    alert("아이디는 8자 이상이어야 합니다.");
                    return false;
                }
                idDup(); // 중복 체크
            });


        });

        function chkFiled() {
            const memberId = $("#member_id").val();
            const password1 = $("input[name='password1']").val();
            const password2 = $("input[name='password2']").val();

            // 아이디 유효성 검사
            const idRegex = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z0-9]{8,}$/;
            if (!idRegex.test(memberId)) {
                alert("아이디는 영어 대,소문자와 숫자를 포함하며 8자 이상이어야 합니다.");
                idDupFlag = false;
                $("#member_id").focus();
                return false;
            }

            // 비밀번호 유효성 검사
            const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{10,}$/;
            if (!passwordRegex.test(password1)) {
                alert("비밀번호는 숫자, 영어 대문자, 소문자를 포함하며 10자 이상이어야 합니다.");
                $("input[name='password1']").focus();
                return false;
            }

            // 비밀번호 확인
            if (password1 !== password2) {
                alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
                $("input[name='password2']").val("");
                $("input[name='password2']").focus();
                return false;
            }
            $("input[name='password']").val(password1); // hidden에 설정

            // 나머지 필드 검사 (이메일, 전화번호 등)
            const email1 = $("input[name='email1']").val();
            const email2 = $("select[name='email2']").val();
            if (email1 === "") {
                alert("이메일을 입력해주세요.");
                $("input[name='email1']").focus();
                return false;
            }
            if (email2 === "NA") {
                alert("이메일 도메인을 선택해주세요.");
                return false;
            }
            const email = email1 + "@" + email2;
            $("input[name='email']").val(email);

            const birth = $("#inputBirth").val();
            if (!birth) {
                alert("생년월일을 입력해주세요.");
                $("#inputBirth").focus();
                return false;
            }
            const formattedDate = birth.replace(/-/g, '');
            $("input[name='birth']").val(formattedDate);

            const phone1 = $("#phone1").val();
            const phone2 = $("input[name='phone2']").val();
            const phone3 = $("input[name='phone3']").val();
            if (!/^[0-9]{3,4}$/.test(phone2)) {
                alert("전화번호 가운데 자리를 정확히 입력해주세요.");
                $("input[name='phone2']").focus();
                return false;
            }
            if (!/^[0-9]{4}$/.test(phone3)) {
                alert("전화번호 마지막 자리를 정확히 입력해주세요.");
                $("input[name='phone3']").focus();
                return false;
            }
            const phone = phone1 + "-" + phone2 + "-" + phone3;
            $("input[name='phone']").val(phone);

            return true;
        }

        function idDup() {
            var memberId = $("#member_id").val();
            $.ajax({
                url: "/join/idDupCheck",
                type: "GET",
                data: {memberId: memberId},
                success: function (response) {
                    if (response === "SUCCESS") {
                        alert("사용 가능한 아이디입니다.");
                        idDupFlag = true;
                    } else {
                        alert("이미 사용 중인 아이디입니다.");
                        idDupFlag = false;
                        $("#member_id").val("");
                        $("#member_id").focus();
                    }
                },
                error: function (xhr, status, error) {
                    console.error("AJAX 요청 오류:", status, error);
                    alert("아이디 중복 확인 중 오류가 발생했습니다.");
                }
            });
        }
    </script>

</head>
<body>
<div id="wrap"
     style="min-height: 1000px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center  ">
    <jsp:include page="/WEB-INF/views/member/common/header.jsp"/>
    <form action="/join/joinProc" name="joinFrm" id="joinFrm" method="post" style="width: 550px">
        <div style="text-align: center; margin: 30px 30px 30px 30px">
            <h1 style="font-size: 50px">회원가입</h1>
            <table style="margin-top: 40px">
                <!-- id 입력 -->
                <tr>
                    <td ><span class="required line">*</span><label>아이디</label></td>
                    <td style="float: left; margin-top: 10px">
                        <input type="text" style="border: 1px solid #DEDEDE; height: 37px; border-radius: 5px;padding-left: 10px;" name="member_id" id="member_id" value="testtest">
                        <input type="button" value="아이디 중복 확인" class="btnSubmit" id="memberIdDup">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>비밀번호</td>
                    <td style="float: left; margin-top: 10px">
                        <input type="password" style="border: 1px solid #DEDEDE; height: 37px; border-radius: 5px;padding-left: 10px;" name="password1" id="password1" value="testtest00">
                        <div id="capsWarning" style="display: none; color: red; margin-top: 5px;">
                            Caps Lock이 켜져있습니다.
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>비밀번호 확인</td>

                    <td style="float: left; margin-top: 10px">
                        <input type="password" style="border: 1px solid #DEDEDE; height: 37px; border-radius: 5px;padding-left: 10px;" name="password2" value="testtest00">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>이름</td>
                    <td style="float: left; margin-top: 10px">
                        <input type="text" style="border: 1px solid #DEDEDE; height: 37px; border-radius: 5px;padding-left: 10px;" name="name" value="테스트">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>생년월일</td>
                    <td style="float: left; margin-top: 10px">
                        <!-- 생년월일 입력 필드 -->
                        <input type="date" id="inputBirth" style="border: 1px solid #DEDEDE; height: 37px; border-radius: 5px;padding-left: 10px;">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required"></span>닉네임</td>
                    <td style="float: left; margin-top: 10px"><input type="text" style="border: 1px solid #DEDEDE; height: 37px; border-radius: 5px;padding-left: 10px;" name="nickname"  value="테테귀여워">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>전화번호</td>
                    <td style="float: left; margin-top: 10px">
                        <select id="phone1" name="phone1" class="inputBox" style="width: 60px">
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="013">013</option>
                        </select> -
                        <input type="tel" id="phone2" name="phone2" class="inputBox" style="width: 50px"
                               maxlength="4" value=""> -
                        <input type="tel" id="phone3" name="phone3" class="inputBox" style="width: 50px"
                               maxlength="4" value="">
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>이메일</td>
                    <td style="float: left; margin-top: 10px">
                        <input type="email" class="myPut" style="width: 100px" required name="email1"
                        > @
                        <select size="1" class="inputBox" name="email2">
                            <option value="NA" selected>선택해주세요</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="naver.com">naver.com</option>
                            <option value="daum.net">daum.net</option>
                            <option value="hotmail.com">hotmail.com</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="line"><span class="required">*</span>성별</td>
                    <td>
                        <input type="radio" name="gender" value="M" checked> 남자
                        <input type="radio" name="gender" value="F"> 여자
                    </td>
                    <%--히든 폼--%>
                    <input type="hidden" name="social_f" value="G">
                    <input type="hidden" name="member_f" value="N">
                    <input type="hidden" name="password" value="">
                    <input type="hidden" name="birth" value="">
                    <input type="hidden" name="email" value="">
                    <input type="hidden" name="phone" value="">
                    <input type="hidden" name="role" value="MEM">
                </tr>

            </table>

        </div>
        <div style=" text-align: center;">
            <input type="button" id="btnSubmit" value="가입" class="btnSubmit">
            <input type="button" id="btnReset" value="취소" class="btnMyReset">
        </div>
    </form>
</div>
<jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
</body>
</html>
