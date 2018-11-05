package winwin.service;

import java.util.List;
import java.util.Map;

import winwin.dto.SupportBoard;
import winwin.util.Paging;

public interface SupportBoardService {

	public int totalCnt();
	
	public List<SupportBoard> list(Paging paging, Map<String, Object> param);
	
	public Paging getPaging(int curPage, int listCount, int pageCount);
	
	public SupportBoard view(SupportBoard board);
	
	public SupportBoard Search(String search);
	
	public SupportBoard status(SupportBoard board);
}
