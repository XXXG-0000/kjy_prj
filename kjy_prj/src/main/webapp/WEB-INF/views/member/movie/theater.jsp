<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CGV 강남</title>
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
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        .container {
            /* max-width: 800px; */
            width: 980px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .tab-buttons {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        .tab-buttons button {
            flex: 1;
            padding: 10px;
            border: none;
            background-color: #6c757d;
            color: #fff;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            margin: 0 5px;
        }

		.tab-buttons button.active {
			background-color: #FB4357;
		}



        .tab-content {
            display: none;
            margin: 0; justify-content: center; 
        }

        .tab-content.active {
            display: block;
            margin: 0; justify-content: center; 
        }

        h4 {
            font-size: 1.2rem;
            margin-top: 20px;
            color: #333;
            display: flex;
            align-items: center;
        }

        h4 span {
            display: inline-block;
            margin-right: 10px;
            background-color: #6c757d;
            color: #fff;
            border-radius: 50%;
            padding: 5px 10px;
            font-size: 0.8rem;
        }

        .info-contents {
            margin-top: 10px;
            line-height: 1.6;
            font-size: 0.9rem;
            color: #555;
        }

        .info-contents p {
            margin-bottom: 15px;
        }

        .round.gray {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #6c757d;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .round.gray:hover {
            background-color: #5a6268;
        }

        /* 자주가는 CGV 섹션 */
        .sect-common {
            background-color: #e9ecef;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
        }

        .sect-common h4 img {
            display: block;
            margin: 0 auto 10px;
            max-width: 200px;
        }

        .sect-favorite ul {
            display: flex;
            justify-content: space-around;
            padding: 0;
            list-style: none;
        }

        .sect-favorite ul li {
            text-align: center;
        }

        .sect-favorite ul li a {
            text-decoration: none;
            color: #333;
            font-size: 0.9rem;
        }

        .sect-favorite ul li span {
            display: block;
            font-size: 1.1rem;
            color: #6c757d;
            font-weight: bold;
        }


         .movie-item {
        margin-bottom: 20px;
    }

    .time-buttons a {
        margin: 5px 5px 5px 0;
        display: inline-block;
    }
    
    /* 영화 스케줄 */
    .sect_schedule {
    	overflow-x: auto;
 margin: 0; justify-content: center; 
    }
    
    .item {
    	width: 800px;
    	height: 111px;
    }
    
    .item-wrap {
    	width: 800px;
    	height: 48px;
    }
    
    .item-wrap ul {
		overflow-x: auto;
    	display: flex;
  		list-style: none;
  		flex-wrap: wrap;
  		text-align: center;
  		cursor: pointer;
    }
    
    
    .item-wrap li {
    	/* width: calc(100% / 8); */
		/* position: relative; */
		float: left;
		width: 100px;
    	height: 48px;   	
     	display: block;
    }
    
    li .none {
    	display: none;
    }
    
    li .on {
    	width: 77px;
    	height: 48px;
    }
    .day {
    	display: inline-block;
    }
    /* E Schedule */
    button {
    	height: 48px;
    }
    .day strong {
    	font-size: 30px;
    }
    </style>
    <script type="text/javascript">

  	$(function(){
  	//날짜 구현
  		const date = new Date();
  	    // console.log(date.getFullYear());
  	    const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
  	    const reserveItem = document.querySelector(".item");
  	    console.log(reserveItem);

  	  
  	        const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"]
  	        const year = date.getFullYear();
  	        const month = date.getMonth();
  	        
  	        /* 2025년 1월 */
  	        for(i = 0; i < 14; i++){
  	        	//마지막 날을 넘었을 경우
  	        	if(Number(date.getDate()+i) > lastDay.getDate()){
  	        		month += 1;
  	        	}//end if
  	        	
  	        	const li = document.createElement("li");
  	        	if(i > 8){
  	        		li.classList = "none";
  	        	}
  	        	const div = document.createElement("div");
  	        	div.classList = "day";
  	            const spanMonth = document.createElement("span");
  	        	spanMonth.innerHTML = month+1+"월	";
  	        	div.append(spanMonth);
  	            const emDay = document.createElement("em");
  	            const strongDay = document.createElement("strong");
  	            const hiddenMonth = document.createElement("input");
  	            hiddenMonth.setAttribute("type", "hidden");
  	            hiddenMonth.setAttribute("id", "getMonth");

  	            //weekOfDay[new Date(2020-03-날짜)]
  	            const dayOfWeek = weekOfDay[new Date(year + "-" + (month+1) + "-" + Number(date.getDate()+i)).getDay()];
  	            //out.println(dayOfWeek);
  	            console.log(year);
  	            console.log(month+1);
  	            
  	            emDay.innerHTML = dayOfWeek + "	";
  	         	div.append(emDay);
  	            //날짜 넣기
  	            strongDay.innerHTML = Number(date.getDate()+i);
  	          	div.append(strongDay);
  	       //     hiddenMonth.setAttribute("value", (month+1));
  	            hiddenMonth.setAttribute("value", year + "-" + (month+1) + "-" + Number(date.getDate()+i));
  	            div.append(hiddenMonth);
  	            li.append(div);
  	            reserveItem.append(li);

  	        }//end for
  	        
  	        $(".item").children("li").click(function(){
  	        	$(".time").removeClass("on");
  				$(this).addClass("on");
  	        })//click
  	        
  	        $(".btn-prev").click(function(){
  	        	 activateLi()
  	        })
  	        
  	        $(".btn-next").click(function(){
  	        	 activateLi()
  	        })
  	});//ready
    
  	function activateLi(){
  		if($("li"))
  		$("li").toggleClass("none");
  	}
  	
    </script>
</head>
<body>
<div id="wrap"
	 style="min-height: 1400px;  margin-top: 50px; display: flex; flex-direction: column; align-items: center; ">
<jsp:include page="/WEB-INF/views/member/common/header.jsp"/>
<div class="container">
<h3 align="center" style="margin-bottom: 15px;"><img src="https://img.cgv.co.kr/R2014/images/title/h3_theater.gif" alt="THEATER"  > </h3>
<img src="https://img.cgv.co.kr/Theater/Theater/2024/1231/17356319393670.jpg" alt="CGV강남 극장이미지" style="width: 940px; height: 400px; border-radius: 8px; margin-bottom: 30px">

    <!-- 탭 버튼 -->
    <div class="tab-buttons">
        <button class="tab-btn active" data-tab="showtimes">상영시간표</button>
        <button class="tab-btn" data-tab="transportAndParking">교통 및 주차 안내</button>
    </div>

    <!-- 상영시간표 내용 -->
    <!-- 상영시간표 내용 -->
<div class="tab-content active" id="showtimes">
    <h4>상영시간표</h4>
    <div class="sect_schedule" >
    	<div id="slider" class="slider">
    		<div class="item-wrap">
    		<ul class="item">
    			
    		</ul>
    	</div>
    	<button type="button" class="btn-prev"></button>
    	<button type="button" class="btn-next"></button>
    	<!-- <input type="button" class="btn-next" value="다음 날짜보기"/> -->
    	</div>
    </div>
    <div class="info-contents">
        <!-- <p>
            <strong>오늘의 상영시간표</strong><br />
            CGV 강남에서는 다양한 영화들이 상영 중입니다. 아래에서 영화와 상영 시간을 선택하세요.
        </p> -->
        <!-- 영화별 시간표 -->
        <div class="movie-schedule">
            <!-- 영화 A -->
            <div class="movie-item">
                <h3>영화 A</h3><span>환타지, 뮤지컬/160분/2024.11.20 개봉</span>
                <div class="time-buttons">
                    <a href="booking.html?movie=A&time=10:00" class="round gray">10:00</a>
                    <a href="booking.html?movie=A&time=12:30" class="round gray">12:30</a>
                    <a href="booking.html?movie=A&time=15:00" class="round gray">15:00</a>
                </div>
            </div>

            <!-- 영화 B -->
            <div class="movie-item">
                <h3>영화 B</h3><span>환타지, 뮤지컬/160분/2024.11.20 개봉</span>
                <div class="time-buttons">
                    <a href="booking.html?movie=B&time=11:00" class="round gray">11:00</a>
                    <a href="booking.html?movie=B&time=14:00" class="round gray">14:00</a>
                    <a href="booking.html?movie=B&time=16:30" class="round gray">16:30</a>
                </div>
            </div>

            <!-- 영화 C -->
            <div class="movie-item">
                <h3>영화 C</h3><span>환타지, 뮤지컬/160분/2024.11.20 개봉</span>
                <div class="time-buttons">
                    <a href="booking.html?movie=C&time=13:00" class="round gray">13:00</a>
                    <a href="booking.html?movie=C&time=16:00" class="round gray">16:00</a>
                    <a href="booking.html?movie=C&time=18:30" class="round gray">18:30</a>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- 대중교통 및 주차 안내 내용 -->
    <div class="tab-content" id="transportAndParking">
        <h4>대중교통 안내</h4>
        <div class="info-contents">
            <p>
                # 지하철<br />
                - 2호선 강남역 11번 출구 도보 5분<br />
                - 9호선 신논현역 5번 출구 도보 5분<br />
                - 신분당선 신논현역 6번 출구 도보 3분<br />
            </p>
            <p>
                # 버스<br />
                - 간선버스 : 140, 144, 145, 146, 360, 400, 402, 420, 421, 440, 441, 452, 470, 640, 643, 741<br />
                심야 : N13, N31, N37, N75<br />
                - 지선버스 : 3412, 4312, 8146, 8541<br />
                - 광역버스 : 1005, 1100, 1101, 1151, 1241, 등등<br />
                심야 : 1101N, 3100N<br />
            </p>
        </div>
        <a class="round gray" href="https://map.naver.com/p?title=CGV%EA%B0%95%EB%82%A8&lng=127.026325&lat=37.501528&zoom=15&type=0&c=15.00,0,0,0,dh" id="btn_roadmap" target="_blank" title="새창 열림"><span>실시간 빠른 길 찾기</span></a>

        <h4>자가용 주차 안내</h4>
        <div class="info-contents">
            <p>
                ■ 주차안내 (발렛주차)<br />
                - 스타플렉스 건물 지하2층~4층<br />
                - 발렛서비스 운영시간<br />
                  : 오전 8시 이후 ~ 오후 20시<br />
                  : 발렛 무료 서비스는 영화 관람 고객 한정 (영화 미관람 시 별도 정산)<br />
                  (20시 이후 입차 차량은 발렛서비스 제한될 수 있음)<br />
            </p>
            <p>
                ■ 주차확인 (인증방법)<br />
                - 출차 시 영화티켓 제시<br />
                  (모바일/지류 모두 가능)<br />
            </p>
            <p>
                ■ 주차요금<br />
                - 영화 관람 시 3시간 6,000원<br />
                - 초과 시 10분 당 1,000원<br />
            </p>
        </div>
    </div>
</div>

<script>
// JavaScript로 탭 전환 로직 구현
const tabButtons = document.querySelectorAll('.tab-btn');
const tabContents = document.querySelectorAll('.tab-content');

// 기본 탭 설정
document.getElementById('showtimes').classList.add('active');

tabButtons.forEach(button => {
    button.addEventListener('click', () => {
        tabButtons.forEach(btn => btn.classList.remove('active'));
        button.classList.add('active');

        tabContents.forEach(content => content.classList.remove('active'));
        document.getElementById(button.getAttribute('data-tab')).classList.add('active');
    });
});
</script>
<jsp:include page="/WEB-INF/views/member/common/footer.jsp"/>
</body>
</html>
