package kr.co.sist.kjy_prj.member.reservation;

import java.util.List;

public interface ReservationService {

	public List<ReservationMovieDomain> searchScreeningMovie();
	
	public String searchMovieInfo(ReservationMovieVO rmVO);
	
	public String searchScDate(ReservationScreeningInfoVO rsVO);
	
	public ReservationScreeningInfoDomain searchScDate2(ReservationScreeningInfoVO rsVO);
	
	public List<ReservationScreeningInfoDomain> searchThInfo(ReservationScreeningInfoVO rsVO);

	public List<ReservationScreeningInfoDomain> searchScreenInfo(
			ReservationScreeningInfoDomain rsid, List<ReservationScreeningInfoDomain> thNumList,
			ReservationScreeningInfoVO rsVO);
	
}
