<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="공통디자인 - 메뉴" %>
    
<!-- dashboard.js 삽입-->
<script src="../common/js/menu.js"></script>
    
<script type="text/javascript">
$(function(){
	$("#sideMenu ul li").click(function() {
		$("#sideMenu ul li").removeClass('on');
		$(this).addClass('on');
	});//sideMenubar ul li - click
});//ready() 
</script>
<div id="sideMenu" class="border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary">
	<div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu" aria-labelledby="sidebarMenuLabel">
		<div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
			<ul class="nav nav-pills flex-column">
				<li class="nav-item">
					<a class="nav-link d-flex align-items-center gap-2" href="#" style="color: #8C3434;">대시보드</a>
				</li>
				<li class="nav-item">
					<a class="nav-link d-flex align-items-center gap-2" href="#" style="color: #8C3434;">회원관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link d-flex align-items-center gap-2" href="#void" style="color: #8C3434;">영화관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link d-flex align-items-center gap-2" href="#" style="color: #8C3434;">예매관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link d-flex align-items-center gap-2" href="#" onclick="location.href='/login/logout';" style="color: #8C3434;">로그아웃</a>
				</li>
			</ul>
		</div>
	</div>
</div>