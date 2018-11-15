package winwin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.SupportDao;
import winwin.dto.JobopenBasic;
import winwin.dto.Material;
import winwin.dto.SupportBoard;
import winwin.util.Paging;

@Service
public class SupportBoardServiceImpl implements SupportBoardService{

	@Autowired SupportDao dao;
	
	@Override
	public int totalCnt(Map<String, Object> param) {
		return dao.totalCnt(param);
	}

	@Override
	public int resultCnt(Map<String, Object> param) {
		return dao.resultCnt(param);
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
	public Paging getPaging(int curPage, int listCount, int pageCount, Map<String, Object> param) {
		
		int totalCount = this.totalCnt(param);	
		Paging paging = new Paging(totalCount, curPage, listCount, pageCount);	
		return paging;		
	}

	@Override
	public Paging resultPaging(int curPage, int listCount, int pageCount, Map<String, Object> param) {
		
		int resultCount = this.resultCnt(param);	
		Paging paging = new Paging(resultCount, curPage, listCount, pageCount);	
		return paging;	
	}
	
	@Override
	public SupportBoard detail(Map<String, Object> param) {
		return dao.detail(param);
	}

	@Override
	public void emailupdate(int passNo) {
		dao.emailupdate(passNo);
		
	}

	@Override
	public Material download(Material file) {
		return dao.download(file);
		
	}







}
