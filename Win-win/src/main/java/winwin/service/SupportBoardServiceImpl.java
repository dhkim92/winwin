package winwin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.SupportDao;
import winwin.dto.JobopenBasic;
import winwin.dto.SupportBoard;
import winwin.util.Paging;

@Service
public class SupportBoardServiceImpl implements SupportBoardService{

	@Autowired SupportDao dao;
	
	@Override
	public int totalCnt() {
		return dao.totalCnt();
	}

	@Override
	public int resultCnt() {
		return dao.resultCnt();
	}
	
	@Override
	public List<SupportBoard> list(Paging paging, Map<String, Object> param) {
		param.put("startNo", paging.getStartNo());
		param.put("endNo", paging.getEndNo());
		param.put("curPage", paging.getCurPage());
		return dao.list(param);
	}
	
	@Override
	public List<SupportBoard> resultlist(Paging paging, Map<String, Object> param) {
		param.put("startNo", paging.getStartNo());
		param.put("endNo", paging.getEndNo());
		param.put("curPage", paging.getCurPage());
		return dao.resultlist(param);
	}
	
	@Override
	public List<JobopenBasic> getTitle() {
		return dao.getTitle();
	}
	
	@Override
	public Paging getPaging(int curPage, int listCount, int pageCount) {
		
		int totalCount = this.totalCnt();	
		Paging paging = new Paging(totalCount, curPage, listCount, pageCount);	
		return paging;		
	}

	@Override
	public SupportBoard view(SupportBoard board) {
		return dao.view(board);
	}

	@Override
	public SupportBoard Search(String search) {
		return dao.Search(search);
	}

	@Override
	public SupportBoard status(SupportBoard board) {
		return dao.status(board);
	}

	@Override
	public SupportBoard send(SupportBoard board) {
		return dao.send(board);
	}

	@Override
	public SupportBoard emailsend(SupportBoard board) {
		return dao.emailsend(board);
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
