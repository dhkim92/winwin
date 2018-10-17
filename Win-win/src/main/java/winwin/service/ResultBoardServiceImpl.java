package winwin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dto.ResultBoard;
import winwin.util.Paging;

@Service
public class ResultBoardServiceImpl implements ResultBoardService{
	
	@Autowired ResultBoardService dao;

	@Override
	public int totalCnt() {
		return dao.totalCnt();
	}

	@Override
	public List<ResultBoard> list(Paging paging) {
		return dao.list(paging);
	}

	@Override
	public ResultBoard send(ResultBoard board) {
		return dao.send(board);
	}

	@Override
	public ResultBoard status(ResultBoard board) {
		return dao.status(board);
	}

	@Override
	public ResultBoard pass(ResultBoard board) {
		return dao.pass(board);
	}

	@Override
	public ResultBoard selectTitle(ResultBoard board) {
		return dao.selectTitle(board);
	}

	

}
