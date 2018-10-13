package winwin.dao;

import winwin.dto.User;

public interface UserDao {

	public int selectCnt(User user);

	public User select(User user);

	public void join(User user);

}
