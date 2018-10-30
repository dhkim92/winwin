package winwin.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.Academic;
import winwin.dto.AcademicArr;
import winwin.dto.JobopenBasic;
import winwin.dto.Member;
import winwin.dto.Military;
import winwin.dto.UserDetail;
import winwin.service.Apply1Service;

@Controller
@RequestMapping(value="/apply")
public class Apply1Controller {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired Apply1Service apply1Service;
	
	@RequestMapping(value="/userDetail", method=RequestMethod.GET)
	public void userDetail(String title, String jobopenNo, JobopenBasic jobopenBasic, Member member, HttpSession session, Model model) {	
		logger.info("userDetail 활성화");
		logger.info("공고명"+title);
		logger.info("공고번호"+jobopenNo);
		
		jobopenBasic.setJobopenNo(Integer.parseInt(jobopenNo));
		JobopenBasic jobOpen = apply1Service.viewJobOpen(jobopenBasic);
		
		
		member.setUserid((String)session.getAttribute("id"));
		Member viewUserDetail = apply1Service.viewMember(member);
		
		logger.info("userDetailController : " + viewUserDetail);
		model.addAttribute("jobopenBasic", jobOpen);
		model.addAttribute("member", viewUserDetail);
		
	}
	
	@RequestMapping(value="/timer", method=RequestMethod.GET)
	public void timer(JobopenBasic jobopenBasic, Member user, HttpSession session, Model model) {
		
//		apply1Service.viewJobOpen(jobopenBasic);
//		apply1Service.viewUser(user);
		
	}

	@RequestMapping(value="/userDetail", method=RequestMethod.POST)
	public String userDetailProc(UserDetail userDetail, HttpSession session, Model model) {
		
		logger.info("userDetail 데이터 insert 활성화");
//		userDetail.setUserId((String)session.getAttribute("id"));
		
		logger.info("Apply1Cont_userDetailProc() : " + userDetail);
		apply1Service.insertUserDetail(userDetail);
		
		return "redirect:/apply/academic";
	}

	@RequestMapping(value="/userDetailUpdate", method=RequestMethod.GET)
	public void userDetailUpdate(JobopenBasic jobopenBasic, Member user, UserDetail userDetail, HttpSession session, Model model) {

//		apply1Service.viewJobOpen(jobopenBasic);
//		apply1Service.viewUser(user);
		apply1Service.selectUserDetail(userDetail);
		
	}

	@RequestMapping(value="/userDetailUpdate", method=RequestMethod.POST)
	public ModelAndView userDetailUpdateProc(UserDetail userDetail) {
		
		apply1Service.updateUserDetail(userDetail);
		return null;
	}

	
	
	
	@RequestMapping(value="/academic", method=RequestMethod.GET)
	public void academic(JobopenBasic jobopenBasic,HttpSession session ,Model model) {
		
//		apply1Service.viewJobOpen(jobopenBasic);
				
	}

	@RequestMapping(value="/academic", method=RequestMethod.POST)
	public ModelAndView academicProc(HttpSession session, AcademicArr acaArr) {
		
		logger.info(acaArr.toString());
		
//		apply1Service.insertAcademic(academic);
		return null;
	}
	
	@RequestMapping(value="/academicUpdate", method=RequestMethod.GET)
	public void academicUpdate(JobopenBasic jobopenBasic, Academic academic, HttpSession session, Model model) {
		
		apply1Service.viewJobOpen(jobopenBasic);
		apply1Service.selectAcademic(academic);

	}

	@RequestMapping(value="/academicUpdate", method=RequestMethod.POST)
	public ModelAndView academicUpdateProc(Academic academic) {
		
		apply1Service.updateAcademic(academic);
		return null;
	}

	
	
	
	@RequestMapping(value="/military", method=RequestMethod.GET)
	public void military(JobopenBasic jobopenBasic, HttpSession session, Model model) {
		
//		apply1Service.viewJobOpen(jobopenBasic);

	}


	@RequestMapping(value="/military", method=RequestMethod.POST)
	public String militaryProc( Military military) {
		
		logger.info("Apply1Controller_militaryProc : " + military);
//		apply1Service.insertMilitary(military);
		
		return "redirect:/apply/career";	
	}
	
	
	@RequestMapping(value="/militaryUpdate", method=RequestMethod.GET)
	public void militaryUpdate(JobopenBasic jobopenBasic, Military military, Model model) {
		
		apply1Service.viewJobOpen(jobopenBasic);
		apply1Service.selectMilitary(military);
		
	}


	@RequestMapping(value="/militaryUpdate", method=RequestMethod.POST)
	public ModelAndView militaryUpdateProc(Military military) {
		
		apply1Service.updateMilitary(military);
		return null;
	}

}
