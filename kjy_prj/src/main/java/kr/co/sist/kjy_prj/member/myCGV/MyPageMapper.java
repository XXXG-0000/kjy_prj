package kr.co.sist.kjy_prj.member.myCGV;

import kr.co.sist.kjy_prj.member.domain.MyLikeMovieDomain;
import kr.co.sist.kjy_prj.member.domain.MyReviewDomain;
import kr.co.sist.kjy_prj.member.domain.MyViewDomain;
import kr.co.sist.kjy_prj.member.domain.ReservationDomain;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author : user
 * @fileName : MyPageDAO
 * @since : 24. 12. 24.
 */

@Mapper
public interface MyPageMapper {

    //사용자 예약 정보를 받아오는 쿼리
    List<ReservationDomain> selectReservation(@Param("member_id") String member_id);

    //가장 짧은 시간이 남은 사용자 예약 정보를 받아오는 쿼리
    ReservationDomain selectReservationOne(@Param("member_id") String reservation_id);

    //내가 본 영화리스트
    List<MyViewDomain> selectMyView(@RequestParam("member_id") String member_id);

    //내가 작성한 리뷰리스트
    List<MyReviewDomain> selectMyReview(@RequestParam("member_id") String member_id);

    // 내가 좋아요를 누른 영화
    List<MyLikeMovieDomain> selectMyLikeMovie(@RequestParam("member_id") String member_id);


    @Delete("delete from PRE_EGG where EGG_NUM = #{egg_num}")
    int deleteMyLikeMovie(@Param("egg_num") int egg_num);


    @Select("select password from member where MEMBER_ID=#{member_id}")
    String selectMemberPassword(@Param("member_id") String member_id);

    @Select("select EMAIL from member where MEMBER_ID=#{member_id}")
    String selectMemberEmail(@Param("member_id") String member_id);

    @Delete("delete from REVIEW where REVIEW_NUM=#{review_num}")
    int deleteMyReview(@Param("review_num") int review_num);

}
