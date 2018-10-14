package winwin.service;

import java.util.List;

import winwin.dto.File;
import winwin.dto.NoticeBoard;
import winwin.util.Paging;

public interface NoticeBoardService {

	public int totalCnt();
	
	public List<NoticeBoard> list(Paging paging);
	
	public NoticeBoard view(NoticeBoard board);
	
	public void write(NoticeBoard board);
	
	public void updateBoard(NoticeBoard board);
	
	public void deleteBoard(NoticeBoard board);
	
	public void insertFile(File file);
	
	public void deleteFile(File file);
	
	public void deleteFilesByBoardNo(NoticeBoard board);
	
	public File selectFile(File file);
	
	public List<File> FilesByBoardNo(NoticeBoard board);
	
}
