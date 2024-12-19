package kjy_prj.member.mypage.information;

import ch.qos.logback.core.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author : user
 * @fileName : MyInformationController
 * @since : 24. 12. 16.
 */
@Controller
@RequestMapping("/myPage/information/")
public class MyInformationController {



    @GetMapping("myInformation")
    public String myInformation(Model model) {
        return "member/mypage/information/myInformation";
    }

    @GetMapping("retired")
    public String retired(Model model) {
        return "member/mypage/information/retired";
    }

    @GetMapping("modifyPass")
    public String modifyPass(Model model) {
        return "memeber/mypage/information/modifyPass";
    }
} // MyInformationController 끝 
