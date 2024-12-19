package kjy_prj.member.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author : user
 * @fileName : MyPageController
 * @since : 24. 12. 16.
 */

@Controller
public class MyPageController {


    @GetMapping("/myPage")
    public String myPage(){
        return "member/mypage/myPage";
    }



    @GetMapping("/myPage/myReservation")
    public String myReservation(){
        return "member/mypage/myReservation";
    }



    @GetMapping("/myPage/movieList")
    public String movieList(){
        return "member/mypage/movieList";
    }

    @GetMapping("/myPage/movieView")
    public String movieView(){
        return "member/mypage/movieView";
    }

    @GetMapping("/myPage/movieReview")
    public String movieReview(){
        return "member/mypage/movieReview";
    }

} // MyPageController 끝 
