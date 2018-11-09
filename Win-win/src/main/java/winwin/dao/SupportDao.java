package winwin.dao;

import java.util.List;
import java.util.Map;

import winwin.dto.JobopenBasic;
import winwin.dto.SupportBoard;

public interface SupportDao {
	
	// support total Count
	public int totalCnt(Map<String, Object> param);
	
	// result total Count
	public int resultCnt();
	
	public List<SupportBoard> list(Map<String, Object> param);
	
	public SupportBoard detail(Map<String, Object> param);
	
	public List<SupportBoard> resultlist(Map<String, Object> param);
	
	public List<JobopenBasic> getTitle();
	
	public SupportBoard view(SupportBoard board);
	
	public SupportBoard Search(String search);
	
	public SupportBoard status(SupportBoard board);
	
	public SupportBoard send(SupportBoard board);

	public SupportBoard emailsend(SupportBoard board);

	public SupportBoard pass(SupportBoard board);

	public SupportBoard selectTitle(SupportBoard board);


}
