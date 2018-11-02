package winwin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import winwin.dto.JobopenBasic;
import winwin.dto.Member;
import winwin.service.ApplyMenuService;

@Controller
@RequestMapping(value="/applyMenu")
public class ApplyMenuController {
	
	@Autowired ApplyMenuService applyMenuService;
	
	@RequestMapping(value="/selectApply", method = RequestMethod.GET)
	public void selectApply(Model model) {

		List<JobopenBasic> list = applyMenuService.getJobopenBasic();
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value="/selectApply", method = RequestMethod.POST)
	public @ResponseBody Map<String, List> selectApplyProc(HttpServletResponse resp) {
		
		Map<String, List> map = new HashMap<String, List>();
		
		
		List<JobopenBasic> list1 = applyMenuService.getJobopenBasic();
		
		List<JobopenBasic> list2 = applyMenuService.getJobopenBasic2();
		
		map.put("result1", list1);
		map.put("result2", list2);
		
		System.out.println("end날짜 확인" +list2);
		
		return map;
		
		
	}
	
	@RequestMapping(value="/passfail", method = RequestMethod.GET)
	public void passfail(Model model) {		
		List<JobopenBasic> list = applyMenuService.getJobopenBasic();
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="/passfail", method = RequestMethod.POST)
	public @ResponseBody Map<String, List> passfailProc(HttpServletResponse resp) {
		Map<String, List> map = new HashMap<String, List>();
		
		
		List<JobopenBasic> list1 = applyMenuService.getJobopenBasic();
		
		List<JobopenBasic> list2 = applyMenuService.getJobopenBasic2();
		
		map.put("result1", list1);
		map.put("result2", list2);
		return map;		
		
	}
	
	
	@RequestMapping(value="/sessionCheck", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> sessionCheck(HttpServletResponse resp, HttpSession session) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		Object obj = session.getAttribute("login");
		
		map.put("result", obj);
		return map;
		
	}
	
	
	@RequestMapping(value="/passfailCheck", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> passfailCheck(HttpSession session /*, String pw */) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		Object obj = session.getAttribute("login");

//		// 세션에서 로그인 아이디 가져와서 입력받은 비밀번호랑 정보 같은지 확인해서 결과 반환
//		
//		Object LoginId = session.getAttribute("id");
//		
//		Member member = new Member();
//		
//		member.setUserid((String)session.getAttribute("id"));
//		member.setPwd(pw);
//		
//		boolean pwCheck = applyMenuService.pwCheck(member);
		
		map.put("result", obj);
//		map.put("pwCheck", pwCheck);
		return map;
	}

	@RequestMapping(value="/pwdCheck", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> pwdCheck(HttpSession session , String pw ) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 세션에서 로그인 아이디 가져와서 입력받은 비밀번호랑 정보 같은지 확인해서 결과 반환
		
		Object LoginId = session.getAttribute("id");
		
		Member member = new Member();
		
		member.setUserid((String)session.getAttribute("id"));
		member.setPwd(pw);
		
		boolean pwCheck = applyMenuService.pwCheck(member);
		
		map.put("pwCheck", pwCheck);
		return map;
	}
	
	
}
