package winwin.service;

import java.util.List;
import java.util.Map;

import winwin.dto.JobopenBasic;
import winwin.dto.SupportBoard;
import winwin.util.Paging;

public interface SupportBoardService {

	public int totalCnt(Map<String, Object> param);
	
	public int resultCnt();
	
	public List<SupportBoard> list(Paging paging, Map<String, Object> param);
	
	public SupportBoard detail(Map<String, Object> param);
	
	public List<SupportBoard> resultlist(Paging paging, Map<String, Object> param);
	
	public List<JobopenBasic> getTitle();
	
	public Paging getPaging(int curPage, int listCount, int pageCount, Map<String, Object> param);
	
	public SupportBoard view(SupportBoard board);
	
	public SupportBoard Search(String search);
	
	public SupportBoard status(SupportBoard board);
	
	public SupportBoard send(SupportBoard board);

	public SupportBoard emailsend(SupportBoard board);

	public SupportBoard pass(SupportBoard board);

	public SupportBoard selectTitle(SupportBoard board);
}
