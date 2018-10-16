package winwin.service;

import org.springframework.beans.factory.annotation.Autowired;

import winwin.dao.MainDao;
import winwin.dto.JobopenBasic;

public class MainServiceImpl implements MainService {
	
	@Autowired MainDao mainDao;

	@Override
	public void getJobopenBoard() {
		mainDao.getJobopenBoard();
		
	}

	@Override
	public void getNoticeBoard() {
		mainDao.getNoticeBoard();
		
	}

	@Override
	public void getQnABoard() {
		mainDao.getQnABoard();
		
	}

	@Override
	public int countApplicants(JobopenBasic jobopenBasic) {
		return mainDao.countApplicants(jobopenBasic);
		
	}
	
//	@Override
//	public int countQnAUnanswered(QNA qna) {
//		return mainDao.countQnAUnanswered;
//	}

}
