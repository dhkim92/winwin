package winwin.service;

import java.util.List;
import java.util.Map;

import winwin.dto.SupportBoard;
import winwin.util.Paging;

public interface ResultBoardService {

	public int totalCnt();

	public List<SupportBoard> list(Paging paging, Map<String, Object> param);
	
	public Paging getPaging(int curPage, int listCount, int pageCount);

	public SupportBoard send(SupportBoard board);

	public SupportBoard status(SupportBoard board);

	public SupportBoard pass(SupportBoard board);

	public SupportBoard selectTitle(SupportBoard board);

}
