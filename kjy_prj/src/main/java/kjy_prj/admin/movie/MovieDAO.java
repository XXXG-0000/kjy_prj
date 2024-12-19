package kjy_prj.admin.movie;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.sist.dao.MyBatisHandler;

@Repository
public class MovieDAO {

//	private static MovieDAO mDAO;
	
	//Singleton
//	private MovieDAO() { }
	
//	public static MovieDAO getInstance() {
//		if(mDAO == null) {
//			mDAO = new MovieDAO();
//		}//end if
//		return mDAO;
//	}//getInstance
	
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
