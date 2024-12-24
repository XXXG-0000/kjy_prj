package kr.co.sist.admin.movie;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.exceptions.PersistenceException;

public interface MovieDAO {
	
	public int selectTotalCount(SearchVO sVO) throws PersistenceException;
	
	public List<MovieDomain> selectMovie(SearchVO sVO) throws PersistenceException;
	
	public int insertMovie(MovieVO mVO) throws PersistenceException;
	
}
