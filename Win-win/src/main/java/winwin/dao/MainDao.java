package winwin.dao;

import java.util.List;

public interface MainDao {

	public int countQnAUnanswered();

	public int allCountQnA();
	
	public List getNoticeBoard();

	public List getQnaBoard();

	public List getJobopenBasic();
	
}
