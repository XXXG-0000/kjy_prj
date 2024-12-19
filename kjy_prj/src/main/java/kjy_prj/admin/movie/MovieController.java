package kjy_prj.admin.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
public class MovieController {

	private MovieService ms;
	
	private MovieController(MovieService ms) {
		this.ms = ms;
	}
	
//	@RequestMapping(value="/movie/movie_list", method = {GET,POST})
//	public String movieList(SearchVO sVO, 
//							@RequestParam(value="currentPage", defaultValue="1") String paramPage, 
//							Model model) {
//		
//		return "";
//	}//movieList
//	
//	@GetMapping("/movie/movie_detail")
//	public String movieDetail(
//			@RequestParam(value="num") String tempNum,
//			@RequestParam(defaultValue = "1") String currentPage,
//			Model model) {
//		String movePage = "movie/movie_detail";
//		
//		//영화의 고유 번호를 받는다
//		int num = 0;
//		try {
//			num = Integer.parseInt(tempNum);
//		} catch(NumberFormatException nfe) {
//			movePage = "redirect:/movie/movie_list"; // 영화 관리 메인으로 반환
//		}//end catch
//		
//		//입력된 영화 번호로 상세 조회 수행
//		
		
//		return movePage;
//	}//movieDetail
//	
//	@PostMapping("/movie/insert_movie")
//	public String addMovie(MovieVO mVO, Model model) {
//		boolean flag = false;
//		String msg = "영화 추가에 실패했습니다.";
//		
//		flag = ms.addMovie(mVO);
//		if(flag) {//영화 추가에 성공했을 경우
//			msg = "영화 추가에 성공했습니다.";
//		}//end if
//		
//		model.addAttribute("msg", msg);
//		model.addAttribute("flag", flag);
//		
//		return "movie/movieAddProcess";
//	}//addMovie
}
