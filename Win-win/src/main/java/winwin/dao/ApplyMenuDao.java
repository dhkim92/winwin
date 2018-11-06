package winwin.dao;

import java.util.List;

import winwin.dto.Member;
import winwin.dto.Support;

public interface ApplyMenuDao {

	public List getJobopenBasic();

	public List getJobopenBasic2();

	public List getNoticeBoard();

	public List getQnaBoard();

	public int pwCheck(Member member);

	public int checkApplicant(Support supp);

}
