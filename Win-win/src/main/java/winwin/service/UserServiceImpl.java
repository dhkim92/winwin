package winwin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.UserDao;
import winwin.dto.Member;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userdao;
	
	public boolean login(Member member) {
		if( userdao.selectCnt(member) == 1 )	return true;
		else	return false;
	}

	public Member info(Member member) {
		return userdao.select(member);
	}

	public void join(Member member) {
		userdao.join(member);
	}

	@Override
	public boolean idcheck(Member member) {
		if(userdao.idcheck(member) > 0) {
			return true;
		}
		return false;
		
	}

	@Override
	public boolean emailSearchCnt(Member member) {
		if(userdao.emailSearchCnt(member) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Member emailSearch(Member member) {
		return userdao.emailSearch(member);
	}
}
