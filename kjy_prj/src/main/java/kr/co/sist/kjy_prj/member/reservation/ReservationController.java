package kr.co.sist.kjy_prj.member.reservation;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ReservationController {
	
	@Autowired(required = false)
	private ReservationServiceImpl rs;

	@GetMapping("/reservation")
	public String reservation(Model model) {
//								@RequestParam(value="movie_num", defaultValue = "0") String paramMovie,) {
	//	int movie_num = 
		List<ReservationMovieDomain> movieList = rs.searchScreeningMovie();
		
		model.addAttribute("movieList", movieList);
		
		return "member/reservation/reservationTicket";
	}//reservation
	
	@PostMapping("/reservation/search_main_image")
	@ResponseBody
	public String searchMovieInfoProcess(ReservationMovieVO rmVO) {
		String jsonObj = "";
		
		System.out.println(rmVO);
		
		jsonObj = rs.searchMovieInfo(rmVO);
		
		return jsonObj;
	}//searchMainImage
	
	@PostMapping("/reservation/search_sc_date")
	@ResponseBody
	public String searchScDateProcess(			
			ReservationScreeningInfoVO rsVO) {
		String jsonObj = "";
		
		jsonObj = rs.searchScDate(rsVO);
		
		return jsonObj;
	}//searchMainImage
	
	@PostMapping("/reservation/search_screen_info")
	public String searchScInfoProcess(
			ReservationScreeningInfoVO rsVO,
			Model model) {
		
		ReservationScreeningInfoDomain rsid = new ReservationScreeningInfoDomain();
		List<ReservationScreeningInfoDomain> thNumList = new ArrayList<ReservationScreeningInfoDomain>();
		List<ReservationScreeningInfoDomain> scheduleList = new ArrayList<ReservationScreeningInfoDomain>();
		
		System.out.println(rsVO);
		
		//날짜 찾기
		rsid = rs.searchScDate2(rsVO);
		//해당 영화의 번호 극장 번호, 영화명 찾기
		thNumList = rs.searchThInfo(rsVO);
		//해당 날짜에 해당하는 영화의 스케줄 찾기
		scheduleList = rs.searchScreenInfo(rsid, thNumList, rsVO);
		
		System.out.println("-------------------------------------result: " + scheduleList);
		
		model.addAttribute("screenList", scheduleList);
		
		return "member/reservation/reservationTicket";
	}//searchMainImage
	
	
}//class
