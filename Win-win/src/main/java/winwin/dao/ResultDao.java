package winwin.dao;

import java.util.List;

import winwin.dto.ResultBoard;
import winwin.dto.SupportBoard;
import winwin.util.Paging;

public interface ResultDao {
	
	public int totalCnt();
	
	public List<ResultBoard> list(Paging paging);
	
	public ResultBoard send(ResultBoard board);
	
	public ResultBoard status(ResultBoard board);
	
	public ResultBoard pass(ResultBoard board);
	
	public ResultBoard selectTitle(ResultBoard board);

}
