package winwin.dao;

import java.util.List;
import java.util.Map;

import winwin.dto.SupportBoard;

public interface ResultDao {
	
	public int totalCnt();
	
	public List<SupportBoard> list(Map<String, Object> param);
	
	public SupportBoard send(SupportBoard board);
	
	public SupportBoard status(SupportBoard board);
	
	public SupportBoard pass(SupportBoard board);
	
	public SupportBoard selectTitle(SupportBoard board);

}
