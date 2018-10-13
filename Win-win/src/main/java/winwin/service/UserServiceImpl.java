package winwin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.UserDao;
import winwin.dto.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userdao;
	
	public boolean login(User user) {
		if( userdao.selectCnt(user) == 1 )	return true;
		else	return false;
	}

	public User info(User user) {
		return userdao.select(user);
	}

	public void join(User user) {
		userdao.join(user);
	}
}
