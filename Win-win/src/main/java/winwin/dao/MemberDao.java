package winwin.dao;

import winwin.dto.Member;

public interface MemberDao {

	public int selectCnt(Member member);

	public Member select(Member member);

	public void join(Member member);

	public int idcheck(Member member);

	public int emailSearchCnt(Member member);

	public Member emailSearch(Member member);

}
