package winwin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.ResultDao;
import winwin.dto.SupportBoard;
import winwin.util.Paging;

@Service
public class ResultBoardServiceImpl implements ResultBoardService{
	
	@Autowired ResultDao dao;

	@Override
	public int totalCnt() {
		return dao.totalCnt();
	}

	@Override
	public List<SupportBoard> list(Paging paging, Map<String, Object> param) {
		param.put("startNo", paging.getStartNo());
		param.put("endNo", paging.getEndNo());
		param.put("curPage", paging.getCurPage());
		
		return dao.list(param);
	}
	
	@Override
	public Paging getPaging(int curPage, int listCount, int pageCount) {
		
		int totalCount = this.totalCnt();	
		Paging paging = new Paging(totalCount, curPage, listCount, pageCount);	
		return paging;		
	}

	@Override
	public SupportBoard send(SupportBoard board) {
		return dao.send(board);
	}

	@Override
	public SupportBoard status(SupportBoard board) {
		return dao.status(board);
	}

	@Override
	public SupportBoard pass(SupportBoard board) {
		return dao.pass(board);
	}

	@Override
	public SupportBoard selectTitle(SupportBoard board) {
		return dao.selectTitle(board);
	}

	

}
