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

import winwin.dto.Member;
import winwin.dto.RSA;
import winwin.service.MemberService;
import winwin.util.RSAUtil;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberservice;
	
	private static final Logger logger =
			LoggerFactory.getLogger(MemberController.class);
	

	@RequestMapping(value="/member/main", method=RequestMethod.GET)
	public void main() {
		logger.info("메인 페이지");
	}
	
	@RequestMapping(value="/member/join", method=RequestMethod.GET)
	public void join() {
		logger.info("회원가입 페이지");
	}
	
	@RequestMapping(value="/member/join", method=RequestMethod.POST)
	public String joinProc(Member member) {
		logger.info("회원가입 활성화");
		logger.info(member.toString());
		memberservice.join(member);
		
		return "redirect:/member/main";
	}
	
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
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
	
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public String loginProc(Member member, HttpSession session,  RedirectAttributes ra) {

		logger.info("로그인 활성화");
		
		//개인키 취득
				PrivateKey key = (PrivateKey) session.getAttribute("RSAprivateKey");
				
				if(key==null) {
					ra.addFlashAttribute("resultMsg","비정상적인 접근입니다.");
					return "redirect:/rsa/login";
				}
				
				//session에 저장된 개인키 초기화
				session.removeAttribute("RSAprivateKey");

				RSAUtil rsaUtil = new RSAUtil();

				//아이디/비밀번호 복호화
				try {
		
					String email = rsaUtil.getDecryptText(key, member.getUserid());
					String password = rsaUtil.getDecryptText(key, member.getPassword());
					
					logger.info("복호화 한 email : " + email);
					logger.info("복호화 한 password : " + password);
					logger.info(member.toString());
					member.setUserid(email);
					member.setPassword(password);
					boolean success = memberservice.login(member);
					
					if(success==true) {
						logger.info("email, password 일치!");
						member = memberservice.info(member);
						session.setAttribute("login", true);
						session.setAttribute("id", member.getUserid());
						return "redirect:/member/main";
					} else {
						logger.info("email, password 불일치!");
						return "redirect:/member/login";
					}
				} catch (Exception e) {
					ra.addFlashAttribute("resultMsg", "비정상적인 접근입니다");
					return "redirect:/member/login";
				}

	}

	@RequestMapping(value="member/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/member/main";
	}
}
