package kr.co.sist.kjy_prj.member.intercepter;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.sist.kjy_prj.member.domain.MemberDomain;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;


/**
 * @author : user
 * @fileName : MemberPasswordInterceptor
 * @since : 25. 1. 6.
 */
@Component
public class MemberPasswordInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();

        // 로그인한 사용자의 정보
        MemberDomain md = (MemberDomain) session.getAttribute("memberInfo");

        // 네이버 로그인 여부 (예: social_f가 'Y'이면 네이버 로그인)
        boolean isNaverLogin = md != null && "Y".equals(md.getSocial_f());

        // 세션에서 비밀번호 인증 시간 확인
        Long passwordAuthTime = (Long) session.getAttribute("passwordAuthTime");

        // 이메일 인증 여부 확인
        boolean isEmailVerified = md != null && "N".equals(md.getSocial_f()); // 예: social_f가 'N'일 경우 이메일 인증이 필요

        // 패스워드 인증이 필요한 경우
        if (!isNaverLogin && (passwordAuthTime == null || System.currentTimeMillis() - passwordAuthTime > 5 * 60 * 1000)) {
            // 이메일 검증이 필요한 경우
            if (isEmailVerified) {
                response.sendRedirect("/member/verifyEmail");  // 이메일 인증 페이지로 리다이렉트
            } else {
                response.sendRedirect("/member/verifyPassword");  // 패스워드 인증 페이지로 리다이렉트
            }
            return false;
        }

        // 네이버 로그인 사용자에게는 패스워드 인증을 건너뛰고 이메일 인증만 진행
        if (isNaverLogin) {
            // 이메일 인증 페이지로 리다이렉트
            response.sendRedirect("/member/verifyEmail");
            return false;
        }

        // 인증 시간이 유효한 경우 요청 처리
        return true;
    }
} // MemberPasswordInterceptor 끝 
