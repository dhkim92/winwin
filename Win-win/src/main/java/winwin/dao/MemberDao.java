package winwin.dao;

import winwin.dto.Member;

public interface MemberDao {

	public int selectCnt(Member member);

	public Member select(Member member);

	public void join(Member member);

}
