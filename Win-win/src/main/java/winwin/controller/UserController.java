package winwin.controller;

import java.security.PrivateKey;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winwin.dto.User;
import winwin.dto.RSA;
import winwin.service.UserService;
import winwin.util.RSAUtil;

@Controller
public class UserController {
	
	@Autowired
	UserService userservice;
	
	private static final Logger logger =
			LoggerFactory.getLogger(UserController.class);
	
	
	@RequestMapping(value="/user/join", method=RequestMethod.GET)
	public void join() {
		logger.info("회원가입 페이지");
	}
	
	@RequestMapping(value="/user/join", method=RequestMethod.POST)
	public String joinProc(User user) {
		logger.info("회원가입 성공");
		logger.info(user.toString());
		userservice.join(user);
		
		return "redirect:/user/login";
	}
	
	@RequestMapping(value="/user/login", method=RequestMethod.GET)
	public void login(HttpSession session, Model model) {
		logger.info("로그인 페이지");
		
		PrivateKey key = (PrivateKey) session.getAttribute("RSAprivateKey");
		    if (key != null) { // 기존 key 파기
		        session.removeAttribute("RSAprivateKey");
		        logger.info("기존 key파기 성공");
		    }
		    
		    RSAUtil rsaUtil = new RSAUtil();
		    RSA rsa = rsaUtil.createRSA();
		    
		    model.addAttribute("modulus", rsa.getModulus());
		    model.addAttribute("exponent", rsa.getExponent());
		    session.setAttribute("RSAprivateKey", rsa.getPrivateKey());
	}
	
	@RequestMapping(value="/user/login", method=RequestMethod.POST)
	public String loginProc(User user, HttpSession session,  RedirectAttributes ra) {

		logger.info("로그인 활성화");
		logger.info(user.toString());
		
		//개인키 취득
				PrivateKey key = (PrivateKey) session.getAttribute("RSAprivateKey");
				
				if(key==null) {
					ra.addFlashAttribute("resultMsg","비정상적인 접근입니다.");
					return "redirect:/user/login";
				}
				
				//session에 저장된 개인키 초기화
				session.removeAttribute("RSAprivateKey");

				RSAUtil rsaUtil = new RSAUtil();

				//아이디/비밀번호 복호화
				try {
		
					String email = rsaUtil.getDecryptText(key, user.getUserid());
					String password = rsaUtil.getDecryptText(key, user.getPwd());
					
					logger.info("복호화 한 email : " + email);
					logger.info("복호화 한 password : " + password);
					logger.info(user.toString());
					user.setUserid(email);
					user.setPwd(password);
					boolean success = userservice.login(user);
					
					if(success==true) {
						logger.info("email, password 일치!");
						user = userservice.info(user);
						session.setAttribute("login", true);
						session.setAttribute("id", user.getUserid());
						return "redirect:/main/usermain";
					} else {
						logger.info("email, password 불일치!");
						return "redirect:/user/login";
					}
				} catch (Exception e) {
					ra.addFlashAttribute("resultMsg", "비정상적인 접근입니다");
					return "redirect:/user/login";
				}

	}
	
	@RequestMapping(value="user/loginHelper", method=RequestMethod.GET)
	public void loginHelper() {
		logger.info("이메일/비밀번호찾기 페이지");
	}
	
	@RequestMapping(value="user/loginHelper", method=RequestMethod.POST)
	public void loginHelperProc() {
		
	}
	
	@RequestMapping(value="user/pwchange", method=RequestMethod.GET)
	public void pwChange() {
		logger.info("비밀번호 변경 페이지");
	}
	
	@RequestMapping(value="user/pwchange", method=RequestMethod.POST)
	public void pwChangeProc() {
		
	}
	
	@RequestMapping(value="user/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("로그아웃 성공");
		session.invalidate();
		return "redirect:/user/login";
	}
}
