package winwin.dao;

import java.util.List;

import winwin.dto.JobopenBasic;
import winwin.dto.JobopenDetail;

public interface JobopenDao {
	
	public void insertBasic(JobopenBasic basic);
	
	public void insertDetail(JobopenDetail detail);
	
	public List<JobopenDetail> selectDetail(JobopenDetail detail);
	
	public void updateBasic(JobopenBasic basic);
	
	public JobopenBasic selectByBasic(JobopenBasic basic);
	
	public JobopenDetail selectByDetail(JobopenDetail detail);
	
	public void deleteAll(JobopenBasic basic);
	
	public int CountBasic();

}
