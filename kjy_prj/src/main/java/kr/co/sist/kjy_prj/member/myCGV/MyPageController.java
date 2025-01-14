package kr.co.sist.kjy_prj.member.myCGV;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.sist.kjy_prj.member.domain.*;
import lombok.experimental.PackagePrivate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;
import java.util.List;

/**
 * @author : user
 * @fileName : MyPageController
 * @since : 24. 12. 16.
 */

@Controller
@SessionAttributes({"reservations", "currentDate"})
public class MyPageController {

    private final MyPageService ms;

    @Autowired
    public MyPageController(MyPageService ms) {
        this.ms = ms;
    }

    //마이페이지
    @GetMapping("/myPage")
    public String myPage(HttpSession session, Model model, RedirectAttributes redirectAttributes) {
        ReservationDomain reservation = null;
        Date current = new Date();
        MemberDomain md = (MemberDomain) session.getAttribute("memberInfo");
        if (md != null) {
            List<ReservationDomain> list = ms.searchMemberReservation(md.getMember_id()); // 회원의 아이디로 예매내역 조회
            reservation = ms.searchOneMemberReservation(md.getMember_id());
            model.addAttribute("reservations", list); // 냅다 세션에 넣어버리기.
            model.addAttribute("currentDate", current); // 현재 날짜 넣어버림
            model.addAttribute("reservation", reservation);
            return "member/mypage/myPage";

        }
        redirectAttributes.addFlashAttribute("errorMsg", "로그인 후 이용해주세요.");
        return "redirect:/login";
    }

    //나의 예매내역 페이지
    @GetMapping("/myPage/myReservation")
    public String myReservation() {
        return "member/mypage/myReservation";
    }

    //내가 본 영화
    @GetMapping("/myPage/movieView")
    public String movieView(HttpSession session, RedirectAttributes redirectAttributes, Model model) {
        MemberDomain md = (MemberDomain) session.getAttribute("memberInfo");
        if (md != null) {
            List<MyViewDomain> myViewDomainList = ms.searchMemberMyView(md.getMember_id());
            model.addAttribute("myViewDomainList", myViewDomainList);
            return "member/mypage/movieView";
        }
        redirectAttributes.addFlashAttribute("errorMsg", "로그인 후 이용해주세요.");
        return "redirect:/login";
    }


    //내가 작성한 리뷰
    @GetMapping("/myPage/movieReview")
    public String movieReview(HttpSession session, RedirectAttributes redirectAttributes, Model model) {
        MemberDomain md = (MemberDomain) session.getAttribute("memberInfo");
        if (md != null) {
            List<MyReviewDomain> myReviewDomainList = ms.searchMemberMyReview(md.getMember_id());
            model.addAttribute("myReviewDomainList", myReviewDomainList);
            return "member/mypage/movieReview";
        }
        redirectAttributes.addFlashAttribute("errorMsg", "로그인 후 이용해주세요.");
        return "redirect:/login";
    }


    // 내가 좋아요를 누른 영화 리스트
    @GetMapping("/myPage/movieList")
    public String movieList(HttpSession httpSession, RedirectAttributes redirectAttributes, Model model) {
        MemberDomain md = (MemberDomain) httpSession.getAttribute("memberInfo");
        if (md != null) {
            List<MyLikeMovieDomain> myLike = ms.searchMemberLikeMovie(md.getMember_id());
            model.addAttribute("myLike", myLike);
            return "member/mypage/movieList";
        }
        redirectAttributes.addFlashAttribute("errorMsg", "로그인 후 이용해주세요.");
        return "redirect:/login";
    }

    @GetMapping("/myPage/movieList/delete/{egg_num}")
    @ResponseBody
    public boolean movieListDelete(@PathVariable(name = "egg_num") int egg_num) {
        return ms.removePreEgg(egg_num);
    }

    @GetMapping("/member/verifyPassword")
    public String verifyPassword() {
        return "member/verifyPassword";
    }


    @PostMapping("/member/verifyPassword")
    public String verifyPassword(@RequestParam("password") String password, HttpSession session, RedirectAttributes redirectAttributes) {
        // 예: DB에서 사용자 비밀번호 확인 (로직 추가 필요)
        MemberDomain md = (MemberDomain) session.getAttribute("memberInfo");
        boolean isValidPassword = ms.searchMemberPass(md.getMember_id(), password); // 임시 비밀번호 검증

        if (isValidPassword) {
            // 인증 성공 -> 세션에 인증 시간 저장
            session.setAttribute("passwordAuthTime", System.currentTimeMillis());

            // 원래 요청했던 URL 가져오기
            String redirectUrl = (String) session.getAttribute("redirectUrl");
            if (redirectUrl != null) {
                session.removeAttribute("redirectUrl"); // URL 사용 후 삭제
                return "redirect:" + redirectUrl; // 원래 URL로 이동
            }

            // 기본 마이페이지로 리다이렉트
            return "redirect:/myPage";
        } else {
            // 인증 실패 -> 에러 메시지와 함께 다시 패스워드 검증 페이지로 이동
            redirectAttributes.addFlashAttribute("errorMsg", "비밀번호가 다릅니다. 다시 시도 해주세요.");
            return "redirect:/member/verifyPassword";
        }
    }

    @GetMapping("/member/verifyEmail")
    public String verifyEmail() {
        return "member/verifyEmail";
    }

    @PostMapping("/member/verifyEmail")
    public String verifyEmail(@RequestParam("email") String email, HttpSession session, RedirectAttributes redirectAttributes) {
        // 이메일 검증 로직 (DB에서 확인하거나 인증 이메일 발송 등)
        MemberDomain md = (MemberDomain) session.getAttribute("memberInfo");

        boolean isEmailValid = ms.verifyEmail(md.getMember_id(), email);  // 이메일 검증 메소드 호출

        if (isEmailValid) {
            // 이메일 인증 성공 -> 세션에 인증 시간 저장
            session.setAttribute("emailAuthTime", System.currentTimeMillis());
            session.setAttribute("passwordAuthTime", System.currentTimeMillis());

            // 원래 요청한 URL을 가져오기
            String redirectUrl = (String) session.getAttribute("redirectUrl");
            if (redirectUrl != null) {
                session.removeAttribute("redirectUrl");  // URL 사용 후 삭제
                return "redirect:" + redirectUrl;  // 원래 URL로 이동
            }

            // 기본 마이페이지로 리다이렉트
            return "redirect:/myPage";
        } else {
            // 이메일 인증 실패 -> 에러 메시지와 함께 다시 이메일 인증 페이지로 이동
            redirectAttributes.addFlashAttribute("errorMsg", "이메일이 다릅니다. 다시 시도 해주세요.");
            return "redirect:/member/verifyEmail";
        }
    }

    @GetMapping("myPage/movieReview/delete/{review_num}")
    @ResponseBody
    public boolean reviewDelete(@PathVariable int review_num) {
        return ms.removeReview(review_num);
    }


} // MyPageController 끝
