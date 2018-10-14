package winwin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import winwin.dao.NoticeBoardDao;
import winwin.dto.File;
import winwin.dto.NoticeBoard;
import winwin.util.Paging;

public class NoticeBoardServiceImpl implements NoticeBoardService{

	@Autowired NoticeBoardDao dao;
	
	@Override
	public int totalCnt() {
		return dao.totalCnt();
	}

	@Override
	public List<NoticeBoard> list(Paging paging) {
		return dao.list(paging);
	}

	@Override
	public NoticeBoard view(NoticeBoard board) {
		dao.hit(board);
		return dao.view(board);
	}

	@Override
	public void write(NoticeBoard board) {
		dao.write(board);
	}

	@Override
	public void updateBoard(NoticeBoard board) {
		dao.updateBoard(board);
	}

	@Override
	public void deleteBoard(NoticeBoard board) {
		dao.deleteBoard(board);
	}

	@Override
	public void insertFile(File file) {
		dao.insertFile(file);
	}

	@Override
	public void deleteFile(File file) {
		dao.deleteFile(file);
	}

	@Override
	public List<File> FilesByBoardNo(NoticeBoard board) {
		return dao.FilesByBoardNo(board);
	}

	@Override
	public File selectFile(File file) {
		return dao.selectFile(file);
	}

	@Override
	public void deleteFilesByBoardNo(NoticeBoard board) {
		dao.deleteFilesByBoardNo(board);
	}

}
