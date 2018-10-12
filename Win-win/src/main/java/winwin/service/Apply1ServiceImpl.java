package winwin.service;

import org.springframework.beans.factory.annotation.Autowired;

import winwin.dao.Apply1Dao;
import winwin.dto.Academic;
import winwin.dto.JobopenBasic;
import winwin.dto.Military;
import winwin.dto.User;
import winwin.dto.UserDetail;

public class Apply1ServiceImpl implements Apply1Service {

	@Autowired Apply1Dao dao;
	
	public JobopenBasic viewJopOpen(JobopenBasic jopopenBasic) {
		return dao.selectJobOpen(jopopenBasic);
	}
	
	public User viewUser(User user) {
		return dao.selectUser(user);
	}
	
	public void insertUserDetail(UserDetail userDetail) {
		dao.insertUserDetail(userDetail);
	}
	
	public UserDetail selectUserDetail(UserDetail userDetail) {
		return dao.selectUserDetail(userDetail);
	}
	
	public void updateUserDetail(UserDetail userDetail) {
		dao.updateUserDetail(userDetail);
	}
	
	public void insertAcademic(Academic academic) {
		dao.insertAcademic(academic);
	}
	
	public Academic selectAcademic(Academic academic) {
		return dao.selectAcademic(academic);
	}
	
	public void updateAcademic(Academic academic) {
		dao.updateAcademic(academic);
	}
	public void insertMilitary(Military military) {
		dao.insertMilitary(military);
	}
	
	public Military selectMilitary(Military military) {
		return dao.selectMilitary(military);
	}
	
	public void updateMilitary(Military military) {
		dao.updateMilitary(military);
	}
	
}
