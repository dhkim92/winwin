package winwin.dao;

import java.util.List;
import java.util.Map;

import winwin.dto.SupportBoard;

public interface SupportDao {
	
	public int totalCnt();
	
	public List<SupportBoard> list(Map<String, Object> param);
	
	public SupportBoard view(SupportBoard board);
	
	public SupportBoard Search(String search);
	
	public SupportBoard status(SupportBoard board);


}
