package kr.co.sist.admin.movie;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired(required = false)
	private MovieDAOImpl mDAO;

	@Override
	public int totalCount(SearchVO sVO) {
		int cnt = 0;
		
		try {
			MovieDAOImpl mDAO = MovieDAOImpl.getInstance();
			cnt = mDAO.selectTotalCount(sVO);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return cnt;
	}

	@Override
	public int pageScale() {
		int pageScale = 10;
		return pageScale;
	}

	@Override
	public int totalPage(int totalCount, int pageScale) {
		int totalPage = (int)Math.ceil((double)totalCount/pageScale);	
		return totalPage;
	}//totalPage

	@Override
	public int currentPage(String paramPage) {
		int currentPage = 1; // 현재 페이지
		if(paramPage != null){
			try{
				currentPage = Integer.parseInt(paramPage);
			}catch(NumberFormatException nfe){
				
			}//end catch
		}// end if
		
		return currentPage;
	}//currentPage

	@Override
	public int startNum(int currentPage, int pageScale) {
		int startNum = currentPage * pageScale - pageScale + 1; // pagination의 시작 번호
		return startNum;
	}//startNum

	@Override
	public int endNum(int startNum, int pageScale) {
		int endNum = startNum + pageScale - 1; // 끝 번호
		return endNum;
	}//endNum

	@Override
	public List<MovieDomain> searchBoard(SearchVO sVO) {
		List<MovieDomain> list = null;
		
		try {
			MovieDAOImpl mDAO = MovieDAOImpl.getInstance();
			list = mDAO.selectMovie(sVO);
			
			//업무로직의 처리
			String tempTitle="";
			for(MovieDomain tempDomain : list){
				tempTitle = tempDomain.getTitle_k();
				if(tempTitle.length() > 30){
					tempDomain.setTitle_k(tempTitle.substring(0,29)+"...더보기");
				}//end if
			}//end for
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return list;
	}

	@Override
	public boolean addMovie(MovieVO mVO) {
		boolean flag = false;
		
		try {
			MovieDAOImpl mDAO = MovieDAOImpl.getInstance();
			flag = mDAO.insertMovie(mVO) == 1;
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return flag;
	}
	
	
	
	/**
	 * 영화를 추가하는 일을 하는 메소드
	 * @param mVO
	 * @return 영화 추가 여부
	 */
//	public boolean addMovie(MovieVO mVO) {
//		boolean flag = false;
//		
//		try {
//			MovieDAO mDAO = MovieDAO.getInstance();
//			flag = mDAO.insertMovie(mVO) == 1;
//		} catch(PersistenceException pe) {
//			pe.printStackTrace();
//		}//end catch
//		
//		return flag;
//	}//addMovie
	
}//class
