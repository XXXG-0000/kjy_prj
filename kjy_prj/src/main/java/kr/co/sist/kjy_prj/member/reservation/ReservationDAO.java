package kr.co.sist.kjy_prj.member.reservation;

import java.util.List;

public interface ReservationDAO {
	
	public List<ReservationMovieDomain> selectScreeningMovie();
	
	public ReservationMovieDomain selectMovieInfo(ReservationMovieVO rmVO);
	
	public ReservationScreeningInfoDomain selectScDate(ReservationScreeningInfoVO rsVO);

	public ReservationScreeningInfoDomain selectScDate2(ReservationScreeningInfoVO rsVO);

	public int selectMovieNum(ReservationScreeningInfoVO rsVO);
	
	public List<ReservationScreeningInfoDomain> selectThInfo(ReservationScreeningInfoVO rsVO);

	public List<ReservationScreeningInfoDomain> selectScreenInfo(ReservationScreeningInfoVO rsVO);
	
}
