package kr.co.sist.kjy_prj.member.reservation;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.sist.dao.MyBatisHandler;

public class ReservationDAOImpl implements ReservationDAO {

	private static ReservationDAOImpl rDAO;
	
	//singleton
	private ReservationDAOImpl() {
		
	}
	
	public static ReservationDAOImpl getInstance() {
		if(rDAO == null) {
			rDAO = new ReservationDAOImpl();
		}//end if;
		return rDAO;
	}//getInstance
	
	@Override
	public List<ReservationMovieDomain> selectScreeningMovie() {
		List<ReservationMovieDomain> list = new ArrayList<ReservationMovieDomain>();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		
		try {
			list = handler.selectList("kjy_prj.member.reservation.selectScreeningMovie");
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return list;
	}//selectAllMovie

	@Override
	public ReservationMovieDomain selectMovieInfo(ReservationMovieVO rmVO) {
		ReservationMovieDomain rmd = new ReservationMovieDomain();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		
		try {
			rmd = handler.selectOne("kjy_prj.member.reservation.selectMovieInfo", rmVO);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return rmd;
	}//selectMainImage

	@Override
	public ReservationScreeningInfoDomain selectScDate(ReservationScreeningInfoVO rsVO) {
		ReservationScreeningInfoDomain rsd = new ReservationScreeningInfoDomain();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		//String sc_date_str = rsVO.getSc_date_str();
		
		try {
			rsd = handler.selectOne("kjy_prj.member.reservation.selectScDate", rsVO);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return rsd;
	}
	
	

	@Override
	public int selectMovieNum(ReservationScreeningInfoVO rsVO) {
		int movie_num = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		//String sc_date_str = rsVO.getSc_date_str();
		
		try {
			System.out.println("-------------------------------------selectMovieNum: " + rsVO);
			movie_num = handler.selectOne("kjy_prj.member.reservation.selectMovieNum", rsVO);
			System.out.println(movie_num);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return movie_num;
	}

	@Override
	public ReservationScreeningInfoDomain selectScDate2(ReservationScreeningInfoVO rsVO) {
		ReservationScreeningInfoDomain rsd = new ReservationScreeningInfoDomain();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		//String sc_date_str = rsVO.getSc_date_str();
		
		try {
			rsd = handler.selectOne("kjy_prj.member.reservation.selectScDate2", rsVO);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return rsd;
	}

	@Override
	public List<ReservationScreeningInfoDomain> selectThInfo(ReservationScreeningInfoVO rsVO) {
		List<ReservationScreeningInfoDomain> list = new ArrayList<ReservationScreeningInfoDomain>();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		//String sc_date_str = rsVO.getSc_date_str();
		
		try {
			list = handler.selectList("kjy_prj.member.reservation.selectThInfo", rsVO);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return list;
	}

	@Override
	public List<ReservationScreeningInfoDomain> selectScreenInfo(ReservationScreeningInfoVO rsVO) {
		List<ReservationScreeningInfoDomain> list = new ArrayList<ReservationScreeningInfoDomain>();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		//String sc_date_str = rsVO.getSc_date_str();
		
		try {
			list = handler.selectList("kjy_prj.member.reservation.selectScreenInfo", rsVO);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return list;
	}
	
	

}//class
