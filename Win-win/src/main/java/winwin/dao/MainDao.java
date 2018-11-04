package winwin.dao;

import winwin.dto.JobopenBasic;

public interface MainDao {
	
	public void getJobopenBoard();
	
	public void getNoticeBoard();
	
	public void getQnABoard();
	
	public int countApplicants(JobopenBasic jobopenBasic);

	public int countQnAUnanswered();

	public int allCountQnA();
	
}
