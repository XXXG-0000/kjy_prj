package kr.co.sist.kjy_prj.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author : user
 * @fileName : TheaterController
 * @since : 25. 1. 3.
 */
@Controller
public class TheaterController {

    @GetMapping("/theater")
    public String theater() {
        return "member/movie/theater";
    }
} // TheaterController 끝 
