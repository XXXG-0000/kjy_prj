package kr.co.sist.kjy_prj.member.movie;

import kr.co.sist.kjy_prj.member.domain.MovieDomain;
import kr.co.sist.kjy_prj.member.domain.MovieOneDomain;
import kr.co.sist.kjy_prj.member.domain.ReviewDomain;
import kr.co.sist.kjy_prj.member.main.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author : user
 * @fileName : MovieMemberController
 * @since : 25. 1. 2.
 */


@Controller
public class MovieMemberController {

    private MainService ms;

    @Autowired
    public MovieMemberController(MainService ms) {
        this.ms = ms;
    }

    @GetMapping("/preMovie_chart")
    public String preMovieChart(Model model) {
        List<MovieDomain> list=  ms.getAllPreMovies();
        model.addAttribute("movieList", list);

        return "member/movie/preMovie_chart";
    }



    @GetMapping("/movie_chart")
    public String movieChart(Model model) {
       List<MovieDomain> list=  ms.getAllMovies();
       model.addAttribute("movieList", list);

        return "member/movie/movie_chart";
    }

    @GetMapping("/movie/detail/{movie_num}")
    public String movieDetail(@PathVariable("movie_num") int movie_num, Model model) {
        MovieOneDomain mod  = ms.getOneMovie(movie_num);
        model.addAttribute("detailMovie", mod);

        return "member/movie/movie_detail";
    }


    @GetMapping("/movie/detail_actor/{movie_num}")
    public String movieDetailActor(@PathVariable("movie_num") int movie_num, Model model) {
        MovieOneDomain mod  = ms.getOneMovie(movie_num);
        model.addAttribute("movie_num", movie_num);
        model.addAttribute("detailMovie", mod);
        return "member/movie/movie_actor";
    }


    @GetMapping("/movie/detail_stillCut/{movie_num}")
    public String movieDetailStillCut(@PathVariable("movie_num") int movie_num, Model model) {
        MovieOneDomain mod  = ms.getOneMovie(movie_num);
        List<String> imageList = ms.getMoiveStillCut(movie_num);
        model.addAttribute("movie_num", movie_num);
        model.addAttribute("imageList", imageList);
        model.addAttribute("still_cut_size", imageList.size());
        model.addAttribute("detailMovie", mod);
        return "member/movie/movie_stillCut";
    }


    @GetMapping("/movie/review/{movie_num}")
    @ResponseBody
    public List<ReviewDomain> movieReview(@PathVariable("movie_num") int movie_num) {
        return ms.getMovieAllReviews(movie_num);
    }


    @GetMapping("/movie/addPre")
    @ResponseBody
    public boolean addPre(@RequestParam(name = "memberId") String member_id, @RequestParam(name = "movie_num") int movie_num, Model model) {
        return ms.addPreEgg(movie_num, member_id);
    }

} // MovieMemberController 끝
