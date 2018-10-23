package winwin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.SupportDao;
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
	public List<SupportBoard> list(Paging paging) {
		return dao.list(paging);
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

}
