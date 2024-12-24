package kr.co.sist.member.join;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author : user
 * @fileName : JoinContoller
 * @since : 24. 12. 16.
 */
@Controller
public class JoinController {


    @GetMapping("/join")
    public String joinFrm() {

        return "member/join/join_page";

    }





} // JoinController 끝
