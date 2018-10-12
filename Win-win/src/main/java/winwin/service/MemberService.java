package winwin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.MemberDao;
import winwin.dto.Member;

@Service
public class MemberService {
	
	@Autowired
	MemberDao memberDao;

	public boolean login(Member member) {
		if( memberDao.selectCnt(member) == 1 )	return true;
		else	return false;
	}

	public Member info(Member member) {
		return memberDao.select(member);
	}

	public void join(Member member) {
		memberDao.join(member);
	}
}
