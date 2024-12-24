package kr.co.sist.admin.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.admin.util.MovieUtil;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

@Controller
public class MovieController {
	@Autowired
	private MovieServiceImpl ms;
	@Autowired
	private MovieUtil mu;
	
	/*
	private MovieController() {
		
	}
	*/
	/*
	private MovieController(MovieServiceImpl ms) {
		this.ms = ms;
	}
	
	private MovieController(MovieUtil mu) {
		this.mu = mu;
	}
	*/
	@RequestMapping(value="/admin/movie/movie_list", method = {GET,POST})
	public String movieList(SearchVO sVO, 
							@RequestParam(value="currentPage", defaultValue="1") String paramPage, 
							Model model) {
		
		//게시판 리스트 구현
		//1. 총 레코드 수 구하기
		int totalCount = ms.totalCount(sVO);
				
		//2. 한 화면에 보여줄 렠모드의 수
		int pageScale = ms.pageScale();
				
		//3. 총 페이지 수
		int totalPage = ms.totalPage(totalCount, pageScale);
				
		//4. 검색의 시작 번호를 구하기(pagination의 번호)[1][2][3]
		//String paramPage = request.getParameter("currentPage");
		int currentPage = ms.currentPage(paramPage);
		int startNum = ms.startNum(currentPage, pageScale); // pagination의 시작 번호
				
		//5. 끝 번호 구하기
		int endNum = ms.endNum(startNum, pageScale); // pagination의 끝 번호
				
		sVO.setCurrentPage(currentPage);
		sVO.setStartNum(startNum);
		sVO.setEndNum(endNum);	
		sVO.setTotalPage(totalPage);
		sVO.setTotalCount(totalCount);
				
		//out.print(sVO);
				
		List<MovieDomain> listMovie = null;
		listMovie = ms.searchBoard(sVO); // 시작 번호, 끝 번호를 사용한 게시글 조회		
					
		//view에 써야하므로 model에 집어넣어야 한다
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageScale", pageScale);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("currentPage", currentPage);
		/* pageContext.setAttribute("startNum", startNum);
		pageContext.setAttribute("endNum", endNum);	 */
		model.addAttribute("listMovie", listMovie);	
				
		//이동 URL 설정
		sVO.setUrl("/admin/movie/movie_list");
		//pagination 생성
		String pagiNation = mu.pagination(sVO);
		model.addAttribute("pagiNation", pagiNation);
		
		return "admin/movie/movieList";
	}//movieList
	
	@GetMapping("/movie/movie_detail")
	public String movieDetail(
			@RequestParam(value="num") String tempNum,
			@RequestParam(defaultValue = "1") String currentPage,
			Model model) {
		String movePage = "movie/movie_detail";
		
		//영화의 고유 번호를 받는다
		int num = 0;
		try {
			num = Integer.parseInt(tempNum);
		} catch(NumberFormatException nfe) {
			movePage = "redirect:/movie/movie_list"; // 영화 관리 메인으로 반환
		}//end catch
		
		//입력된 영화 번호로 상세 조회 수행
		
		
		return movePage;
	}//movieDetail
	
	@GetMapping("/admin/movie/insert_movie")
	public String addMovie() {
		
		return "admin/movie/insertMovie";
	}//addMovie
	
	@PostMapping("/admin/movie/insert_movie_process")
	public String addMovieProcess(MovieVO mVO, GenreVO gVO, CastVO cVO,
							Model model) {
		boolean flag = false;
		String msg = "영화 추가에 실패했습니다.";
		
		flag = ms.addMovie(mVO);
		if(flag) {//영화 추가에 성공했을 경우
			msg = "영화 추가에 성공했습니다.";
		}//end if
		
		model.addAttribute("msg", msg);
		model.addAttribute("flag", flag);
		
		return "movie/movieAddProcess";
	}//addMovie
	
}//class
