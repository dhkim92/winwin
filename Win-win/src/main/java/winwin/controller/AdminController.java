package winwin.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winwin.dto.Admin;
import winwin.service.AdminService;

@Controller
public class AdminController {
	// 테스트 주석
	// 테스트 주석2
	// 테스트 주석 3
	@Autowired
	AdminService adminservice;

	private static final Logger logger =
			LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value="/admin/adminLogin", method=RequestMethod.GET)
	public void adminlogin(HttpSession session, Model model) {
		logger.info("관리자 로그인 폼");

	}
	
	@RequestMapping(value="/admin/adminLogin", method=RequestMethod.POST)
	public String adminloginProc(HttpSession session, Admin admin) {
		logger.info("관리자 로그인");
		adminservice.adminlogin(admin);
		return "redirect://";
	}
	
	@RequestMapping(value="/admin/adminLoginout", method=RequestMethod.POST)
	public String adminLogout(HttpSession session) {
		logger.info("관리자 로그아웃");
		session.invalidate();
		return "redirect://";
	}
}
