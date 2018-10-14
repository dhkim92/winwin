package winwin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import winwin.dao.QnaBoardDao;
import winwin.dto.QnaBoard;
import winwin.dto.QnaComment;
import winwin.util.Paging;

public class QnaBoardServiceImpl implements QnaBoardService{

	@Autowired QnaBoardDao dao;
	@Override
	public int totalCnt() {
		return dao.totalCnt();
	}

	@Override
	public List<QnaBoard> list(Paging paging) {
		return dao.list(paging);
	}

	@Override
	public QnaBoard view(QnaBoard board) {
		return dao.view(board);
	}

	@Override
	public void write(QnaBoard board) {
		dao.write(board);
	}

	@Override
	public void updateBoard(QnaBoard board) {
		dao.updateBoard(board);
	}

	@Override
	public void deleteBoard(QnaBoard board) {
		dao.deleteBoard(board);
	}

	@Override
	public List<QnaComment> selectCommentByBoardNo(QnaBoard board) {
		return dao.selectCommentByBoardNo(board);
	}

	@Override
	public void insertComment(QnaComment comment) {
		dao.insertComment(comment);
	}

	@Override
	public void deleteComment(QnaComment comment) {
		dao.deleteComment(comment);
	}

	@Override
	public void deleteCommentsByBoardNo(QnaBoard board) {
		dao.deleteCommentsByBoardNo(board);
	}

	

}
