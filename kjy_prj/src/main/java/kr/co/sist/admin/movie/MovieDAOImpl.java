package kr.co.sist.admin.movie;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.sist.dao.MyBatisHandler;

public class MovieDAOImpl implements MovieDAO {
	private static MovieDAOImpl mDAO;
	//Singleton
	
	private MovieDAOImpl() {

	}
	
	public static MovieDAOImpl getInstance() {
		if(mDAO == null) {
			mDAO = new MovieDAOImpl();
		}//end if
		return mDAO;
	}//getInstance

	@Override
	public int selectTotalCount(SearchVO sVO) throws PersistenceException {
		int totalCount = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		
		try {
			totalCount = handler.selectOne("kjy_prj.admin.movie.totalCnt", sVO);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return totalCount;
	}//selectTotalCount

	/**
	 * 영화 목록을 보여주는 일을 하는 메소드
	 */
	@Override
	public List<MovieDomain> selectMovie(SearchVO sVO) throws PersistenceException {
		List<MovieDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		
		try {
			list = handler.selectList("kjy_prj.admin.movie.selectMovie", sVO);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return list;
	}

	/**
	 * 영화를 추가하는 일을 하는 메소드
	 */
	@Override
	public int insertMovie(MovieVO mVO) throws PersistenceException {
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession handler = mbh.getHandler();
		
		try {
			cnt = handler.insert("kjy_prj.admin.movie.insertMovie", mVO);
		} finally {
			mbh.closeHandler(handler);
		}//end finally
		
		return cnt;
	}//insertMovie


	
	
	
	
//	public int insertMovie(MovieVO mVO) throws PersistenceException {
//		int cnt = 0;
//		MyBatisHandler mbh = MyBatisHandler.getInstance();
//		SqlSession handler = mbh.getHandler();
//		
//		try {
//			cnt = handler.insert("kjy_prj.admin.movie.insertMovie", mVO);
//		} finally {
//			mbh.closeHandler(handler);
//		}//end finally
		
		
//		return cnt;
//	}
}//class
