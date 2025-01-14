package kr.co.sist.kjy_prj.member.reservation;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.kjy_prj.admin.movie.MovieDAOImpl;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired(required = false)
	private ReservationDAOImpl rDAO;
	
	@Override
	public List<ReservationMovieDomain> searchScreeningMovie() {
		List<ReservationMovieDomain> list = new ArrayList<ReservationMovieDomain>();
		
		try {
			rDAO = ReservationDAOImpl.getInstance();
			list = rDAO.selectScreeningMovie();
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return list;
	}//searchAllMovie

	@Override
	public String searchMovieInfo(ReservationMovieVO rmVO) {
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("findFlag", false);
		ReservationMovieDomain rmd = new ReservationMovieDomain();
		System.out.println("---------------------------service: " + rmVO);
		
		try {
			rDAO = ReservationDAOImpl.getInstance();
			rmd = rDAO.selectMovieInfo(rmVO);
			System.out.println("---------------------------service: " + rmd);
			System.out.println("---------------------------service: " + rmd.getMain_image());
			if(rmd.getMain_image() != "") {
				jsonObj.put("findFlag", rmd.getMain_image() != "");
				jsonObj.put("main_image", rmd.getMain_image());
				jsonObj.put("title_k", rmd.getTitle_k());
			}//end if
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		
		return jsonObj.toJSONString();
	}//searchMainImage

	@Override
	public String searchScDate(ReservationScreeningInfoVO rsVO) {
		JSONObject jsonObj = new JSONObject();
		
		jsonObj.put("findFlag", false);
		ReservationScreeningInfoDomain rsd = new ReservationScreeningInfoDomain();
		System.out.println("---------------------------service: " + rsVO);
		
		try {
			rDAO = ReservationDAOImpl.getInstance();
			rsd = rDAO.selectScDate(rsVO);
			System.out.println("---------------------------service: " + rsd);
			System.out.println("---------------------------service: " + rsd.getSc_date_str());
			if(rsd.getSc_date_str() != null) {
				jsonObj.put("findFlag", rsd.getSc_date_str() != null);
				jsonObj.put("sc_date", rsd.getSc_date_str());
			}//end if
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return jsonObj.toJSONString();
	}//searchScDate

	@Override
	public ReservationScreeningInfoDomain searchScDate2(ReservationScreeningInfoVO rsVO) {
		ReservationScreeningInfoDomain rsid = new ReservationScreeningInfoDomain();
		
		try {
			rDAO = ReservationDAOImpl.getInstance();
			rsid = rDAO.selectScDate2(rsVO);
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		
		return rsid;
	}

	@Override
	public List<ReservationScreeningInfoDomain> searchThInfo(ReservationScreeningInfoVO rsVO) {
		List<ReservationScreeningInfoDomain> list = new ArrayList<ReservationScreeningInfoDomain>();
		
		try {
			rDAO = ReservationDAOImpl.getInstance();
			list = rDAO.selectThInfo(rsVO);
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return list;
	}

	@Override
	public List<ReservationScreeningInfoDomain> searchScreenInfo(
			ReservationScreeningInfoDomain rsid, List<ReservationScreeningInfoDomain> thNumList,
			ReservationScreeningInfoVO rsVO) {
		List<ReservationScreeningInfoDomain> list = new ArrayList<ReservationScreeningInfoDomain>();
		System.out.println("-----------------------------------------before: " + rsVO);
		
		try {
			rDAO = ReservationDAOImpl.getInstance();
			for(ReservationScreeningInfoDomain tempDomain : thNumList) {
				rsVO.setSc_date(rsid.getSc_date());
				rsVO.setTh_num(tempDomain.getTh_num());
				rsVO.setMovie_num(rDAO.selectMovieNum(rsVO));
				System.out.println("----------------------------------------searchScreenInfo: " + rsVO);
				list.addAll(rDAO.selectScreenInfo(rsVO));
				System.out.println("----------------------------------------searchScreenInfo list: " +list);
			}
			
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return list;
	}



}//class
