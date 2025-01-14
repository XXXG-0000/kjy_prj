package kr.co.sist.kjy_prj.member.intercepter;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.sist.kjy_prj.member.domain.MemberDomain;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

/**
 * @author : user
 * @fileName : MemberLoginInterceptor
 * @since : 25. 1. 6.
 */
@Component
public class MemberLoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        MemberDomain md = (MemberDomain) session.getAttribute("memberInfo");
        if (md == null) {
            String encodedMessage = java.net.URLEncoder.encode("로그인 한 사용자만 이용할 수 있습니다.", "UTF-8");
            response.sendRedirect("/login?errorMsg=" + encodedMessage);
            return false; // 요청 차단
        }
        return true; // 접근 허용
    }
} // MemberLoginInterceptor 끝
