package winwin.dao;

import java.util.List;

import winwin.dto.ResultBoard;
import winwin.dto.SupportBoard;
import winwin.util.Paging;

public interface SupportDao {
	
	public int totalCnt();
	
	public List<SupportBoard> list(Paging paging);
	
	public SupportBoard view(SupportBoard board);
	
	public SupportBoard Search(String search);
	
	public SupportBoard status(SupportBoard board);


}
