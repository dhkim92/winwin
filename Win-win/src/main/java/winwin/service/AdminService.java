package winwin.service;

import org.springframework.stereotype.Service;

import winwin.dto.Admin;

@Service
public interface AdminService {

	public void adminlogin(Admin admin);
	
	
}
