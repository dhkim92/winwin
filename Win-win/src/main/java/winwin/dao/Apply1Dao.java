package winwin.dao;

import winwin.dto.Academic;
import winwin.dto.JobopenBasic;
import winwin.dto.Military;
import winwin.dto.User;
import winwin.dto.UserDetail;

public interface Apply1Dao {

public JobopenBasic selectJobOpen(JobopenBasic jopopenBasic);
	
	public User selectUser(User user);

	public void insertUserDetail(UserDetail userDetail);

	public UserDetail selectUserDetail(UserDetail userDetail);
	
	public void updateUserDetail(UserDetail userDetail);

	public void insertAcademic(Academic academic);

	public Academic selectAcademic(Academic academic);

	public void updateAcademic(Academic academic);

	public void insertMilitary(Military military);

	public Military selectMilitary(Military military);

	public void updateMilitary(Military military);
}
