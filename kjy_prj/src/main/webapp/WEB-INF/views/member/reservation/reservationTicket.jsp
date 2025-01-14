<%@ page contentType="text/html;charset=UTF-8" language="java" info="" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>MYCGV</title>
    <link rel="stylesheet" href="http://localhost/css/main_20240911.css">

    <!--bootstrap CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <!-- jQuery CDN 시작 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2024/0820/FORM_TYPE/reservation_tnb.css" />
   
    <style type="text/css">

        a:hover {
            font-size: inherit; /* hover 상태에서 크기 변화 없음 */
        }
      
   #wrap {
	/* text-align: center;
	justify-content: center;
	margin: 0 auto;
	*/
}
        
        .tnb_wrap {
	margin: 0 auto;
}

#step1 {
	text-align: center;
	justify-content: center;
	margin: 0 auto;
	/* width: 721px; */
}
.refresh {
	float: right; width: 50px; text-align: left; 
	color:#e6e6e6;font-size:12px;font-weight:bold;letter-spacing:-2px;
	background-color: #333; border: 1px solid #333;
	display: inline-block;
}
.bi-arrow-counterclockwise {
	float: right;
	font-weight: bold;
	display: inline-block;
	margin-right: 10px;
}
.section {
	height: 600px;
	background-color: #F2F0E5;
	border: 1px solid #D3D2C8;
}

.ticket_head {
	background-color: #333;
	color: #F2F0E5;
	text-align: center;
	padding: 5px;
	width: 284px;
}

.section-body {
	height: 565px;
}

.section-movie {
	width: 284px;
}

.section-date {
	width: 91px;
}

.section-time {
	width: 346px;
}

.movielist {
	overflow: auto;
}

.section-body {
	overflow: auto;
}

/* ul li:before {
	vertical-align: middle;
}

ul, li {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
} */


.day {
	list-style-type: none;
	height: 35px;
}

li:hover {
	cursor: pointer;
}

div.movie:hover {
	cursor: pointer;
}

.movie {
	font-weight: bold;
	text-align: left;
	vertical-align: bottom;
	height: 35px;
	padding: 5px;
}
.content_rate {
	width: 20px;
	height: 20px;
}
.year {
	font-size: 10px;
	font-weight: bold;
	display: block;
	margin-top: 15px;
}

.month {
	font-size: 30px;
	font-weight: bold;
	display: block;
	vertical-align: top;
	margin-bottom: 5px;
}

.dayweek {
	font-weight: bold;
}

.day {
	font-weight: bold;
}

.day-sat {
	color: #0050B8;
}

.day-sun {
	color: #AD2727;
}

/* S day */
.movie-week-of-day {
    margin-left: 5px;
    font-size: 10px;
    width: 12px;
    height: 22px;
    line-height: 22px;
}

.movie-day {
    text-align: center;
    width: 34px;
    height: 22px;
    font-size: 17px;
    font-weight: bold;
}

.saturday {
    color: #31597E;
    font-weight: bold;
}

.sunday {
    color: #AF2D2D;
    font-weight: bold;
}

.movie-date-wrapper-active {
    background-color: #333333;
}

.movie-date-wrapper-active>* {
    color: white;
}
/* E day */

.selected {
	background-color: #333;
	color: #F2F0E5;
}
.theater {
	text-align: left;
	margin-top: 5px;
	margin-left: 5px;
}
.name {
	color: #FF9E37;
	font-weight: bold;
}
.floor {
	font-weight: bold;
}
.seatcount{
	font-weight: bold;
}
.time-option { margin-top: 10px; margin-left: 5px; text-align: left; }
span.morning{height:14px;padding-left:18px;
			background:url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_morning_night.png) 
			no-repeat left;	background-position:0 0;}
span.night{height:14px;padding-left:14px;
		margin-left:14px;background:url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_morning_night.png) 
		no-repeat left;background-position:0 -20px;}
span.title {
	margin-bottom: 10px;
}
.endtime{
    position:absolute; 
    left:0px; 
    top:52px; 
    background: #646FD4; 
    padding: 10px; 
    border-radius:5px; 
    color: #fff; 
    text-align: center; 
    display: none;
}
.endtime:after{
    display: block; 
    content: ''; 
    position: absolute; 
    top: -7px; 
    left:15px; 
    width: 0px; 
    height: 0px; 
    border-top: 8px solid none; 
    border-left: 8psolid transparent; 
    border-right: 8px solid transparent; 
    border-bottom: 8px solid #646FD4;
}
.time-option {
	border-bottom: 2px solid #D3D2C8;
	height: 25px;
}
.theater {
	border-bottom: 2px solid #D3D2C8;
}
.theater ul{
	display: flex;
  list-style: none;
  flex-wrap: wrap;
  text-align: center;
  margin-bottom: 20px;
}
.theater ul li {
	text-align: left;
	width: calc(100% / 3);
	position: relative;
}

/* .screen_time {
	display: inline;
	margin-bottom: 20px;
} */
span.count{text-align:left;color:#3d7c35;width: 52px; height: 20px;}
span.time{width:51px;height:25px;line-height:25px;color:#333;
		font-size:12px;font-weight:bold;font-family:Verdana;
		padding: 3px;}
span.time.selected{ color:#F2F0E5; }
span.time{border:1px solid #5c5c5c;margin:1px;line-height:19px;}
.time:hover + .endtime{display: block;}
.tnb_container {
	display: flex;
	margin: auto 0;
	justify-content: center;
	align-items : center;
}
.btnSeat {
	width: 106px;
	height: 108px;
}
.info {
	
	height: 108px;
	color: #FFF;
}
.info_movie {
	border-right: 2px solid #5B5B5B;
	width: 212px;
}
.movie_poster {
	width: 36%;
	height: 108px;
	float: left;
}
img {
	width: 74px;
	height: 104px;
}
.movie_title {
	width: 65%;
	text-align: center;
	height: 40px;
}
.movie_type {
	width: 65%;
	text-align: center;
	height: 20px;
}
.movie_rating {
	width: 65%;
	text-align: center;
	height: 20px;
}
.info_theater {
	border-right: 2px solid #5B5B5B;
	width: 187px;
	text-align: left;
}
.row_date {
	margin-left: 5px;
	margin-bottom: 5px;
}
.row_screen{
	margin-left: 5px;
	margin-bottom: 5px;
}
.row_number{
	margin-left: 5px;
	margin-bottom: 5px;
}
.seat_number{
	margin-left: 5px;
	margin-bottom: 5px;
}
.payment_adult{
	margin-left: 5px;
	margin-bottom: 5px;
}
.payment_youth{
	margin-left: 5px;
	margin-bottom: 5px;
}
.payment_senior{
	margin-left: 5px;
	margin-bottom: 5px;
}
.payment_special{
	margin-left: 5px;
	margin-bottom: 5px;
}
.payment_final{
	margin-left: 5px;
	margin-bottom: 5px;
}
.info_seat {
	border-right: 2px solid #5B5B5B;
	width: 173px;
	text-align: left;
}
.info_payment {
	width: 155px;
	text-align: left;
}
.won {
	color: #BF2828;
	text-align:right;
	margin-right: 5px;
}
</style>

<script type="text/javascript">
    $(function() {
		$(".movie").click(function() {
			$(".movie").attr('class', 'movie');
			$(this).addClass("selected");
			$("#selectedMovie").val($(this).find(".movietitle").html());
			
			var title_k = $(this).find(".movietitle").html();
			
			let img = document.querySelector(".movie_poster > img");
			let title = document.querySelector(".movie_title");
			let titleK = document.querySelector(".movie_title_k");
			
			var param = { title_k : title_k };
			
			$.ajax({
				url:"/reservation/search_main_image",
				type:"POST",
				data: param,
				dataType: "JSON",
				error: function(xhr){
					alert(xhr.status)
				},
				success:function(jsonObj){
					if(jsonObj.findFlag){
						img.src = jsonObj.main_image;
						title.innerHTML = jsonObj.title_k;
						titleK.value = jsonObj.title_k;
					}//end if
				}//success
			});//ajax
			
			chkSelected();
		})//click
		
		$(".time").click(function() {
			$(".time").removeClass("selected");
			$(this).addClass("selected");
		})//click
		
		$(".refresh").click(function() {
			$(".movie").removeClass("selected");
			$(".day").removeClass("movie-date-wrapper-active");
			$(".time").removeClass("selected");
		})//click
		
		//날짜 구현
		const date = new Date();
        // console.log(date.getFullYear());
        const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
        const reserveDate = document.querySelector(".datelist");

      
            const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"]
            const year = date.getFullYear();
            const month = date.getMonth();
            
            /* 2025년 1월 */
            const liMonth = document.createElement("li");
            liMonth.classList = "month";
            const spanYear = document.createElement("span");
            const spanMonth = document.createElement("span");
            spanYear.classList = "year";
            spanMonth.classList = "month";
            spanYear.innerHTML = year;
            spanMonth.innerHTML = month+1;
            liMonth.append(spanYear);
            liMonth.append(spanMonth);
            reserveDate.append(liMonth);
            
            for(i = 0; i < 14; i++){
            	//마지막 날을 넘었을 경우
            	if(Number(date.getDate()+i) > lastDay.getDate()){
            		month += 1;
            		spanYear.innerHTML = year;
            		spanMonth.innerHTML = month+1;
            		liMonth.append(spanYear);
                    liMonth.append(spanMonth);
                    reserveDate.append(liMonth);
            	}//end if
            	
            	const li = document.createElement("li");
                const spanWeekOfDay = document.createElement("span");
                const spanDay = document.createElement("span");
                const hiddenMonth = document.createElement("input");
                hiddenMonth.setAttribute("type", "hidden");
                hiddenMonth.setAttribute("id", "getMonth");
                

                //class넣기
                li.classList = "day";
                spanWeekOfDay.classList = "movie-week-of-day";
                spanDay.classList = "movie-day";

                //weekOfDay[new Date(2020-03-날짜)]
                const dayOfWeek = weekOfDay[new Date(year + "-" + (month+1) + "-" + Number(date.getDate()+i)).getDay()];
                //out.println(dayOfWeek);
                console.log(year);
                console.log(month+1);

                //요일 넣기
                if (dayOfWeek === "토") {
                    spanWeekOfDay.classList.add("saturday");
                    spanDay.classList.add("saturday");
                } else if (dayOfWeek === "일") {
                    spanWeekOfDay.classList.add("sunday");
                    spanDay.classList.add("sunday");
                }
                spanWeekOfDay.innerHTML = dayOfWeek + "	";
                li.append(spanWeekOfDay);
                //날짜 넣기
                spanDay.innerHTML = "	" + Number(date.getDate()+i);
                li.append(spanDay);
           //     hiddenMonth.setAttribute("value", (month+1));
                hiddenMonth.setAttribute("value", year + "-" + (month+1) + "-" + Number(date.getDate()+i));
                li.append(hiddenMonth);
                reserveDate.append(li);

                //dayClickEvent(li);
            }//end for
            
            /*
            for (i = date.getDate(); i <= lastDay.getDate(); i++) {
            	if(i - date.getDate() > 14){
            		break;
            	}

                const button = document.createElement("button");
                //button.setAttribute("type", "button");
                const li = document.createElement("li");
                const spanWeekOfDay = document.createElement("span");
                const spanDay = document.createElement("span");

                //class넣기
                button.classList = "movie-date-wrapper";
                li.classList = "day";
                spanWeekOfDay.classList = "movie-week-of-day";
                spanDay.classList = "movie-day";

                //weekOfDay[new Date(2020-03-날짜)]
                const dayOfWeek = weekOfDay[new Date(year + "-" + (month+1) + "-" + i).getDay()];
                //out.println(dayOfWeek);
                console.log(year);
                console.log(month+1);

                //요일 넣기
                if (dayOfWeek === "토") {
                    spanWeekOfDay.classList.add("saturday");
                    spanDay.classList.add("saturday");
                } else if (dayOfWeek === "일") {
                    spanWeekOfDay.classList.add("sunday");
                    spanDay.classList.add("sunday");
                }
                spanWeekOfDay.innerHTML = dayOfWeek + "	";
                li.append(spanWeekOfDay);
                //button.append(spanWeekOfDay);
                //날짜 넣기
                spanDay.innerHTML = "	" + i;
                li.append(spanDay);
                //button.append(spanDay);
                //button.append(i);
                reserveDate.append(li);

                dayClickEvent(li);
            }
            */
            
       //     $(document).on("click", ".day", function(){
    	   //날짜 클릭
    	   //영화, 날짜 모두 클릭할 경우 스케줄 구현 메소드 chkSelected ajax 실행
			$(".day").click(function(){
            	$(".day").removeClass("selected");
    			$(this).addClass("selected");
            	var str_date = $(this).find("input[type='hidden']").val();
    			//alert(str_date);
    			var param = { sc_date_str : str_date };
    			
    			let date = document.querySelector(".sc_date");
    			let date_str = document.querySelector(".movie_sc_date_str");
			
				$.ajax({
					url:"/reservation/search_sc_date",
					type:"POST",
					data: param,
					dataType: "JSON",
					error: function(xhr){
						alert(xhr.status)
					},
					success:function(jsonObj){
						if(jsonObj.findFlag){
							date.innerHTML = jsonObj.sc_date;
							date_str.value = jsonObj.sc_date;
			    			chkSelected();
						}//end if
					}//success
				});//ajax
    		});//click
            
	}); // ready
    
        function move(url) {
            if (url == 'movie_list') {
                location.href = "http://localhost/myPage/movieList";
            } else if (url == 'movie_view') {
                location.href = "http://localhost/myPage/movieView";
            } else {
                location.href = "http://localhost/myPage/movieReview";
            }

        }
	

        function dayClickEvent(button) {
            button.addEventListener("click", function() {
                const movieDateWrapperActive = document.querySelectorAll(".movie-date-wrapper-active");
                movieDateWrapperActive.forEach((list) => {
                    list.classList.remove("movie-date-wrapper-active");
                })
                button.classList.add("movie-date-wrapper-active");
            })
			//alert("asdf");
        }
        
        

		/* $(document).on("click", "li[class='day']", function() {			
			var str_date = $(this).val();
			alert("asdf");
			
		})//click */
        
		//영화, 날짜 모두 클릭할 경우 스케줄을 구현하는 일을 하는 메소드
        function chkSelected(){
    		const hasMovie = $(".movie").hasClass('selected');
    		const hasDay = $(".day").hasClass('selected');
    		
    		if(!hasMovie || !hasDay){
    			//alert("asdf");
    			return;
    		}//end if
    		
    		if(hasMovie && hasDay){
    			//alert("fdsa");
    			var sc_date_str = $(".movie_sc_date_str").val();
    			var title_k = $(".movie_title").html();
    			
    			var param = { sc_date_str : sc_date_str, title_k : title_k };
    			
    			const reserveList =  document.querySelector(".theater");
    			
    			$.ajax({
					url:"/reservation/search_screen_info",
					type:"POST",
					data: param,
					dataType: "JSON",
					error: function(xhr){
						alert(xhr.status);
						alert("서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.");
					},
					success:function(data){
						alert(data.screenList.length);						
						$(".timelist").empty();
						$(".timelist").append(data);
					}//success
				});//ajax
    		}//end if
    		
    	}//chkSelected

</script>

</head>
<body>
<div id="wrap"
     style="min-height: 1200px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center; ">
    <jsp:include page="/WEB-INF/views/member/common/header.jsp"/>
    
    <form action="" method="post" id="step1">
	<div style="display: flex; justify-content: center;">
			<div class="section section-movie">
				<div class="ticket_head section-movie">영화</div>
				<div class="section-body" style="margin-top: 5px;">
					<div class="movielist">
					<c:forEach var="rmd" items="${ movieList }" varStatus="i">
							<div class="movie">
							<c:choose>
							<c:when test="${ rmd.audience_rating eq 0 }">
							<img src="http://localhost/reservation_images/adult.png" class="content_rate">
							</c:when>
							<c:when test="${ rmd.audience_rating eq 1 }">
							<img src="http://localhost/reservation_images/fifteen.png" class="content_rate">
							</c:when>
							<c:when test="${ rmd.audience_rating eq 2 }">
							<img src="http://localhost/reservation_images/twelve.png" class="content_rate">
							</c:when>
							<c:otherwise>
							<img src="http://localhost/reservation_images/all.png" class="content_rate">
							</c:otherwise>
							</c:choose>
							<span class="movietitle"> ${ rmd.title_k }</span></div>
					</c:forEach>
							<input type="hidden" id=selectedMovie>
					</div>
				</div>
			</div>
			<div class="section section-date">
				<div class="ticket_head section-date">날짜</div>
				<div class="section-body">
					<div class="datelist">
						
					</div>
				</div>
			</div>
			<div class="section section-time">
				<div class="ticket_head section-time">
					<span>시간</span>
					<i class="bi bi-arrow-counterclockwise"></i>
					<input type="button" class="refresh" value="다시하기"/>
				</div>
				<div class="section-body">
					<div class="time-option">
						<span class="morning">모닝</span>
						<span class="night">심야</span>
					</div>
					<div class="placeholder hidden">영화, 극장, 날짜를 선택해주세요.</div>
					<div class="timelist">
					<div class="theater">
					<c:forEach var="rsd" items="${ screenList }" varStatus="i">
						<span class="title">
						</span>
						<ul>
						<li class="screen_time" style="margin-bottom: 15px;">
						<span class="time">
							{ rsd.sc_time_str }
						</span>
						<span class="morning count">{ rsd.total_seat}석 </span>
						<span class="name">${ rsd.category } </span>
						<span>${ rsd.th_num }관 </span>
						<div class="endtime">종료시간 11:10</div>
						</li>
					</c:forEach>
						<!-- <li class="screen_time">
						<span class="time">
							11:30
						</span>
						<span class="count">120석</span>
						<div class="endtime">종료시간 13:20</div>
						</li>
						<li class="screen_time">
						<span class="time">
							13:40
						</span>
						<span class="count">
							<span>120석</span>
						</span>
						<div class="endtime">종료시간 15:30</div>
						</li>
						<li class="screen_time">
						<span class="time">
							15:50
						</span>
						<span class="count">
						 <span>120석</span>
						</span>
						<div class="endtime">종료시간 17:40</div>
						</li>
						<li class="screen_time">
						<span class="time">
							18:00
						</span>
						<span class="count"><span>120석</span></span>
						<div class="endtime">종료시간 19:50</div>
						</li>
						<li class="screen_time">
						<span class="time">
							20:10
						</span>
						<span class="count"><span>120석</span></span>
						<div class="endtime">종료시간 22:00</div>
						</li>
						<li></li>
						</ul> -->
					</div>
					<!-- <div class="theater">
						<span class="title">
							<span class="name">2D(자막)</span>
							<span class="floor">4관 8층</span>
							<span class="seatcount">(총128석)</span>
						</span>
						<ul>
						<li class="screen_time" style="margin-bottom: 15px;">
						<span class="time">
							09:20
						</span>
						<span class="morning count">120석</span>
						<div class="endtime">종료시간 11:10</div>
						</li>
						<li class="screen_time">
						<span class="time">
							11:30
						</span>
						<span class="count">120석</span>
						<div class="endtime">종료시간 13:20</div>
						</li>
						<li class="screen_time">
						<span class="time">
							13:40
						</span>
						<span class="count">
							<span>120석</span>
						</span>
						<div class="endtime">종료시간 15:30</div>
						</li>
						<li class="screen_time">
						<span class="time">
							15:50
						</span>
						<span class="count">
						 <span>120석</span>
						</span>
						<div class="endtime">종료시간 17:40</div>
						</li>
						<li class="screen_time">
						<span class="time">
							18:00
						</span>
						<span class="count"><span>120석</span></span>
						<div class="endtime">종료시간 19:50</div>
						</li>
						<li class="screen_time">
						<span class="time">
							20:10
						</span>
						<span class="count"><span>120석</span></span>
						<div class="endtime">종료시간 22:00</div>
						</li>
						<li></li>
						</ul>
					</div> -->
					</div>
				</div>
			</div>
		</div>
		<!-- E wrap -->
		<div id="ticket_tnb" class="tnb_container">
			<div class="info info_movie">
				<div class="movie_poster">
				<img id="main_image" src="http://localhost/mvc_emp/design/common/images/88076_1000.jpg" alt="영화 포스터" />
				</div>
				<div class="movie_title" name="title_k">제목 </div>
				<input type="hidden" class="movie_title_k" name="title_k"/>
				<!-- <div class="movie_type">타입 </div>
				<div class="movie_rating">등급 </div> -->
			</div>
			<div class="info info_theater">
				<div class="row_date">일시 
				<span class="sc_date"></span>
				<input type="hidden" class="movie_sc_date_str" name="sc_date_str"/>
				</div>
				<div class="row_screen">상영관 </div>
				<div class="row_number">인원 </div>
			</div>
			<div class="info info_seat">
				<div class="seat_number">좌석번호 </div>
			</div>
			<div class="info info_payment">
				<div class="payment_adult">일반</div>
				<div class="payment_youth">청소년</div>
				<div class="payment_senior">경로</div>
				<div class="payment_special">우대</div>
				<div class="payment_final">
					<span class="total">총금액</span>
					<span class="data">
						<span class="price"></span>
						<span class="won">원</span>
					</span>
				</div>
				<div></div>
			</div>
			<input type="button" class="btn btn-danger btnSeat" value="좌석선택" style="margin-left: 30px;"/>
		</div>
	</form>
    
    <jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
</div>
</body>
</html>
