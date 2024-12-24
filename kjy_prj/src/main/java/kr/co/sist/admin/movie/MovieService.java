package kr.co.sist.admin.movie;

import java.util.List;

public interface MovieService {
	
	public int totalCount(SearchVO sVO);
	
	public int pageScale();
	
	public int totalPage(int totalCount, int pageScale);
	
	public int currentPage(String paramPage);
	
	public int startNum(int currentPage, int pageScale);
	
	public int endNum(int startNum, int pageScale);
	
	public List<MovieDomain> searchBoard(SearchVO sVO);
	
	public boolean addMovie(MovieVO mVO);

}
