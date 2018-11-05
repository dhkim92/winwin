package winwin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.College;
import winwin.dto.GSchool;
import winwin.dto.HighSchool;
import winwin.dto.JobopenBasic;
import winwin.dto.JobopenDetail;
import winwin.dto.Member;
import winwin.dto.Military;
import winwin.dto.University;
import winwin.dto.UserDetail;
import winwin.service.Apply1Service;

@Controller
@RequestMapping(value="/apply")
public class Apply1Controller {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired Apply1Service apply1Service;
	
	@RequestMapping(value="/userDetail", method=RequestMethod.GET)
	public void userDetail(String title, String jobopenNo, JobopenDetail jobopenDetail, JobopenBasic jobopenBasic, Member member, HttpSession session, Model model) {	
		logger.info("userDetail 활성화");
		logger.info("공고명"+title);
		logger.info("공고번호"+jobopenNo);
		
		int jobopenNum = Integer.parseInt(jobopenNo);
		
		//apply헤더 정보 가져오기
		jobopenBasic.setJobopenNo(jobopenNum);
		JobopenBasic jobOpen = apply1Service.viewJobOpen(jobopenBasic);
		
		//apply헤더_task 정보 가져오기
		jobopenDetail.setJobopenNo(jobopenNum);
		List<JobopenDetail> task = new ArrayList<>();
		task.addAll(apply1Service.viewTask(jobopenDetail));
		logger.info("task : " + task.toString());
		
		//개인정보 가져오기
		member.setUserid((String)session.getAttribute("id"));
		Member viewUserDetail = apply1Service.viewMember(member);
		
		logger.info("userDetailController : " + viewUserDetail);
		
		model.addAttribute("task", task);
		model.addAttribute("jobopenBasic", jobOpen);
		model.addAttribute("member", viewUserDetail);
		
	}
	

	@RequestMapping(value="/userDetail", method=RequestMethod.POST)
	public String userDetailProc(UserDetail userDetail, HttpSession session, Model model) {
		
		logger.info("userDetail 데이터 insert 활성화");
//		userDetail.setUserId((String)session.getAttribute("id"));
		
		logger.info("Apply1Cont_userDetailProc() : " + userDetail);
		apply1Service.insertUserDetail(userDetail);
		
		logger.info(userDetail.toString());
		
		return "redirect:/apply/academic?jobopenNo="+userDetail.getJobopenNo();
	}

	@RequestMapping(value="/userDetailUpdate", method=RequestMethod.GET)
	public void userDetailUpdate(JobopenBasic jobopenBasic, Member user, UserDetail userDetail, HttpSession session, Model model) {

		
		
//		apply1Service.viewJobOpen(jobopenBasic);
//		apply1Service.viewUser(user);
		apply1Service.selectUserDetail(userDetail);
		
	}

	@RequestMapping(value="/userDetailUpdate", method=RequestMethod.POST)
	public ModelAndView userDetailUpdateProc(UserDetail userDetail) {
		
//		apply1Service.updateUserDetail(userDetail);
		return null;
	}

	
	
	
	@RequestMapping(value="/academic", method=RequestMethod.GET)
	public void academic(String jobopenNo, JobopenBasic jobopenBasic, HttpSession session, Model model) {
		
		logger.info("academic 활성화");
		logger.info("공고번호"+jobopenNo);
		
		
		jobopenBasic.setJobopenNo(Integer.parseInt(jobopenNo));
		JobopenBasic jobOpen = apply1Service.viewJobOpen(jobopenBasic);
		
		model.addAttribute("jobopenBasic", jobOpen);

	}
	

	@RequestMapping(value="/academic", method=RequestMethod.POST)
	public String academicProc(HighSchool highSchool, College college, University university, GSchool gSchool) {
		
		
		logger.info("academic POST 활성화");
		logger.info("HighSchool : " + highSchool);
		logger.info("College : " + college);
		logger.info("University : " + university);
		logger.info("GSchool : " + gSchool);
		
		apply1Service.insertHighSchool(highSchool);
		apply1Service.insertCollege(college);
		apply1Service.insertUniversity(university);
		apply1Service.insertGSchool(gSchool);
		
		
		
		return "redirect:/apply/military?jobopenNo="+highSchool.getJobopenNo();
	}
	
	@RequestMapping(value="/academicUpdate", method=RequestMethod.GET)
	public void academicUpdate(JobopenBasic jobopenBasic, HighSchool highSchool, College college, University university, GSchool gSchool, HttpSession session, Model model) {
		
		apply1Service.viewJobOpen(jobopenBasic);
		apply1Service.selectHighSchool(highSchool);
		apply1Service.selectCollege(college);
		apply1Service.selectUniversity(university);
		apply1Service.selectGSchool(gSchool);

	}

	@RequestMapping(value="/academicUpdate", method=RequestMethod.POST)
	public ModelAndView academicUpdateProc() {
		
		return null;
	}

	
	
	
	@RequestMapping(value="/military", method=RequestMethod.GET)
	public void military(JobopenBasic jobopenBasic, HttpSession session, Model model) {
		
//		apply1Service.viewJobOpen(jobopenBasic);

	}


	@RequestMapping(value="/military", method=RequestMethod.POST)
	public String militaryProc(Military military) {
		
		logger.info("Apply1Controller_militaryProc : " + military);
		apply1Service.insertMilitary(military);
		
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
