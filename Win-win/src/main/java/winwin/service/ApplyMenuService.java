package winwin.service;

import java.util.List;

import winwin.dto.JobopenBasic;
import winwin.dto.Member;
import winwin.dto.NoticeBoard;
import winwin.dto.QnaBoard;

public interface ApplyMenuService {

	public List getJobopenBasic();

	public List getJobopenBasic2();

	public List getNoticeBoard();

	public List getQnaBoard();

	public boolean pwCheck(Member member);

}
