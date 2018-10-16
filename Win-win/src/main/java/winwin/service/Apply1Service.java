package winwin.service;

import org.springframework.stereotype.Service;

import winwin.dto.Academic;
import winwin.dto.JobopenBasic;
import winwin.dto.Military;
import winwin.dto.User;
import winwin.dto.UserDetail;

public interface Apply1Service {

	public JobopenBasic viewJobOpen(JobopenBasic jopopenBasic);
	
	public User viewUser(User user);
	
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
