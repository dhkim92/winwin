package winwin.service;

import java.util.List;

import winwin.dto.JobopenBasic;

public interface MainService {

	public int countQnAUnanswered();
	
	public List getNoticeBoard();

	public List getQnaBoard();

	public List getJobopenBasic();

}
