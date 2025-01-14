package kr.co.sist.kjy_prj.config;

import kr.co.sist.kjy_prj.member.intercepter.MemberLoginInterceptor;
import kr.co.sist.kjy_prj.member.intercepter.MemberPasswordInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author : user
 * @fileName : InterceptorConfig
 * @since : 25. 1. 6.
 */
@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

    private final MemberLoginInterceptor mi;
    private final MemberPasswordInterceptor passwordAuthInterceptor;


    @Autowired
    public InterceptorConfig(MemberLoginInterceptor mi, MemberPasswordInterceptor passwordAuthInterceptor) {
        this.mi = mi;
        this.passwordAuthInterceptor = passwordAuthInterceptor;
    }

    // 사용자 mypage에만..
    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(mi).addPathPatterns("/member/mypage/**","/myPage/**");
        registry.addInterceptor(passwordAuthInterceptor).addPathPatterns("/myPage/**");

    }
} // InterceptorConfig 끝
