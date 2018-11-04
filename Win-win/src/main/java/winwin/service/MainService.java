package winwin.service;

import winwin.dto.JobopenBasic;

public interface MainService {

	public void getJobopenBoard();

	public void getNoticeBoard();

	public void getQnABoard();

	public int countApplicants(JobopenBasic jobopenBasic);

	public int countQnAUnanswered();

}
