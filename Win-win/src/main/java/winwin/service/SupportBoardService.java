package winwin.service;

import java.util.List;
import java.util.Map;

import winwin.dto.JobopenBasic;
import winwin.dto.Material;
import winwin.dto.SupportBoard;
import winwin.util.Paging;

public interface SupportBoardService {

	public int totalCnt(Map<String, Object> param);
	
	public int resultCnt(Map<String, Object> param);
	
	public List<SupportBoard> list(Paging paging, Map<String, Object> param);
	
	public SupportBoard detail(Map<String, Object> param);
	
	public List<SupportBoard> resultlist(Paging paging, Map<String, Object> param);
	
	public List<JobopenBasic> getTitle();
	
	public Paging getPaging(int curPage, int listCount, int pageCount, Map<String, Object> param);
	
	public Paging resultPaging(int curPage, int listCount, int pageCount, Map<String, Object> param);

	public void emailupdate(int passNo);
	
	public Material download(Material file);
}
