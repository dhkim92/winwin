package winwin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.AdminDao;
import winwin.dto.Admin;

@Service
public class AdminService {

	@Autowired
	AdminDao admindao;

	public void adminlogin(Admin admin) {
		admindao.adminlogin(admin);		
	}
	
	
}
