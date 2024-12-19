package kjy_prj.member.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author : user
 * @fileName : LoginController
 * @since : 24. 12. 16.
 */
@Controller
public class MemberLoginController {

    @GetMapping("/login")
    public String loginFrm() {
        return "member/login/login_page";
    }







} // LoginController 끝 
