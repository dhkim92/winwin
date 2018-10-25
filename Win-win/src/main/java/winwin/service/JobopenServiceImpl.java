package winwin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.JobopenDao;
import winwin.dto.JobopenBasic;
import winwin.dto.JobopenDetail;
import winwin.util.Paging;

@Service
public class JobopenServiceImpl implements JobopenService {

	@Autowired
	JobopenDao jobopenDao;
	
	@Override
	public void writeBasic(JobopenBasic basic) {
		jobopenDao.insertBasic(basic);
	}

	@Override
	public void writeDetail(JobopenDetail detail) {
		jobopenDao.insertDetail(detail);
	}

	@Override
	public List<JobopenDetail> selectDetail(JobopenDetail detail) {
		return jobopenDao.selectDetail(detail);
	}

	@Override
	public void updateBasic(JobopenBasic basic) {
		jobopenDao.updateBasic(basic);
	}

	@Override
	public JobopenBasic viewBasic(JobopenBasic basic) {
		return jobopenDao.selectByBasic(basic);
	}

	@Override
	public JobopenDetail viewDetail(JobopenDetail detail) {
		return jobopenDao.selectByDetail(detail);
	}

	@Override
	public void deleteJobOpen(JobopenBasic basic) {
		jobopenDao.deleteAll(basic);
		
	}

	@Override
	public int CountBasic() {
		return jobopenDao.CountBasic();
	}
	
	@Override
	public List selectBasic(Paging paging) {
		return jobopenDao.selectBasic(paging);
	}


	@Override
	public Paging getPaging(int curPage, int listCount, int pageCount) {

		int totalCount = this.CountBasic();
		
		Paging paging = new Paging(totalCount, curPage, listCount, pageCount);
		
		return paging;		
	}

}
