package kjy_prj.member.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author : user
 * @fileName : MainController
 * @since : 24. 12. 16.
 */
@Controller
public class MainController {
    /**
     * 메인페이지
     * @return 사용자 메인페이지
     */
    @RequestMapping(value = "/",method = {RequestMethod.GET, RequestMethod.POST})
    public String mainPage(){
        return "main_page";
    }

} // MainController 끝 
