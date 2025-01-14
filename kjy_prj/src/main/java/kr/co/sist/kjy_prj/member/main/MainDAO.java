package kr.co.sist.kjy_prj.member.main;

import kr.co.sist.kjy_prj.member.domain.MainMovieDomain;
import kr.co.sist.kjy_prj.member.domain.MovieDomain;
import kr.co.sist.kjy_prj.member.domain.MovieOneDomain;
import kr.co.sist.kjy_prj.member.domain.ReviewDomain;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author : user
 * @fileName : MainDAO
 * @since : 24. 12. 19.
 */
@Mapper
public interface MainDAO {

    @Select("select movie_num, title_k, rate,audience_rating, MAIN_IMAGE, RELEASE_DATE from movie where SCREENING_F='1' order by rate desc")
    List<MovieDomain> findAllMovies();

    @Select("select movie_num, title_k, rate,audience_rating, MAIN_IMAGE, RELEASE_DATE from movie where SCREENING_F='0' order by rate desc")
    List<MovieDomain> findAllPreMovies();

    @Select("select MAIN_VIDEO_NUM from MAIN_VIDEO where V_F='Y'")
    List<Integer> countMainMovie();

    @Select("select v_url, V_F, V_TITLE, V_INFO from MAIN_VIDEO  where main_video_num = #{num}  ")
    MainMovieDomain findMainMovieByNum(int num);


    MovieOneDomain selectOneMovie(int movie_num);

    List<ReviewDomain> selectMovieReview(int movie_num);

    @Select("select STILL_CUT from STILL_CUT where MOVIE_NUM =#{movie_num}")
    List<String> selectMovieStilCut(int movie_num);

    @Insert("insert into PRE_EGG (EGG_NUM, MOVIE_NUM, MEMBER_ID, EGG_F) values (PRE_EGG_SEQ.nextval, #{movie_num}, #{member_id},'G')")
    int insertEgg(int movie_num, String member_id);



} // MainDAO 끝
