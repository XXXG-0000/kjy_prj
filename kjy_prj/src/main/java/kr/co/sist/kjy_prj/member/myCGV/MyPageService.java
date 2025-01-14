package kr.co.sist.kjy_prj.member.myCGV;

import kr.co.sist.kjy_prj.member.crypto.CryptoService;
import kr.co.sist.kjy_prj.member.domain.MyLikeMovieDomain;
import kr.co.sist.kjy_prj.member.domain.MyReviewDomain;
import kr.co.sist.kjy_prj.member.domain.MyViewDomain;
import kr.co.sist.kjy_prj.member.domain.ReservationDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.encrypt.TextEncryptor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : user
 * @fileName : MyPageService
 * @since : 24. 12. 24.
 */
@Service
public class MyPageService {

    private MyPageMapper rm;
    private CryptoService cs;

    @Autowired
    public MyPageService(MyPageMapper reservationMapper, CryptoService cs) {
        this.rm = reservationMapper;
        this.cs = cs;
    }


    /**
     * 사용자의 아이디를 전달받아 예매내역을 가져온다.
     * @param member_id 사용자 아이디
     * @return List<ReservationDomain>
     */
    public List<ReservationDomain> searchMemberReservation(String member_id){
        return rm.selectReservation(member_id);

    }

    /**
     * 사용자의 아이디를 전달받아 내가 본 영화를 가져온다.
     * @param member_id 사용자 아이디
     * @return List<MyViewDomain>
     */
    public List<MyViewDomain> searchMemberMyView(String member_id){
        return rm.selectMyView(member_id);
    }


    /**
     * 사용자의 아이디를 전달받아 내가 작성한 리뷰를 가져온다
     * @param member_id 사용자 아이디
     * @return List<MyReviewDomain>
     */
    public List<MyReviewDomain> searchMemberMyReview(String member_id){return rm.selectMyReview(member_id);}


    /**
     * 사용자의 아이디를 전달받아 내가 좋아요를 누른 영화를 가져온다.
     * @param member_id 사용자 아이디.
     * @return List<MyLikeMovieDomain>
     */
    public List<MyLikeMovieDomain> searchMemberLikeMovie(String member_id){
        return rm.selectMyLikeMovie(member_id);}


    /**
     * 사용자의 아이디를 전달받아 가장 짧은 시간이 남은 예약 정보를 가져온다.
     * @param member_id 사용자 아이디
     * @return ReservationDomain
     */
    public ReservationDomain searchOneMemberReservation(String member_id){
        return rm.selectReservationOne(member_id);
    }


    public boolean removePreEgg(int egg_num){
        int rowCnt = rm.deleteMyLikeMovie(egg_num);
        return rowCnt > 0;
    }

    public boolean searchMemberPass(String member_id,String password){
       String oriPass =  rm.selectMemberPassword(member_id);
        PasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder.matches(password, oriPass);
    }

    public boolean verifyEmail(String member_id, String email){
        String oriEmail = rm.selectMemberEmail(member_id);
        boolean flag = email.equals(cs.decrypt(oriEmail));
        return flag;
    }

    public boolean removeReview(int review_num){
        int rowCnt = rm.deleteMyReview(review_num);
        return rowCnt > 0;
    }


} // MyPageService 끝 
