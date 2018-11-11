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
	public void userDetailUpdate(String jobopenNo, JobopenDetail jobopenDetail, JobopenBasic jobopenBasic, Member member, UserDetail userDetail, HttpSession session, Model model) {
		logger.info("userDetail update 활성화");
		
		int jobopenNum = Integer.parseInt(jobopenNo);
		jobopenBasic.setJobopenNo(jobopenNum);

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
		
		//userDetail 데이터 가져오기
		userDetail.setJobopenNo(jobopenNum);
		userDetail.setUserId((String)session.getAttribute("id"));
		UserDetail userD = apply1Service.selectUserDetail(userDetail);
		
		//전화번호 split하기
		String[] phoneNum = userD.getPhoneNum().split("-");
		
		logger.info("phoneNum : " + phoneNum.toString()); 

		model.addAttribute("task", task);
		model.addAttribute("jobopenBasic", jobOpen);
		model.addAttribute("member", viewUserDetail);
		model.addAttribute("userDetail", userD);
		model.addAttribute("phoneNum", phoneNum);
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
	public String academicProc(HighSchool highSchool, College college, University university, GSchool gSchool, HttpSession session) {
		
		
		logger.info("academic POST 활성화");
		logger.info("HighSchool : " + highSchool);
		logger.info("College : " + college);
		logger.info("University : " + university);
		logger.info("GSchool : " + gSchool);
		
		String userId = (String)session.getAttribute("id");

		if(!highSchool.getHsName().equals("")) {
			apply1Service.insertHighSchool(highSchool);
			apply1Service.updateMemCountH(userId);
		} 
		
		if(!college.getColName().equals("")) {
			apply1Service.insertCollege(college);
			apply1Service.updateMemCountC(userId);
		}

		if(!university.getUnivName().equals("")) {
			apply1Service.insertUniversity(university);
			apply1Service.updateMemCountU(userId);
		}
		
		if(!gSchool.getGsName().equals("")) {
			apply1Service.insertGSchool(gSchool);
			apply1Service.updateMemCountGS(userId);
		} 
		
		if(highSchool.getHsName().equals("") && college.getColName().equals("") && university.getUnivName().equals("") && gSchool.getGsName().equals("")) {
			apply1Service.updateMemCountNone(userId);
		}
		
		
		return "redirect:/apply/military?jobopenNo="+highSchool.getJobopenNo();
	}
	
	@RequestMapping(value="/academicUpdate", method=RequestMethod.GET)
	public void academicUpdate(String jobopenNo, JobopenBasic jobopenBasic, HighSchool highSchool, College college, University university, GSchool gSchool, HttpSession session, Model model) {
		
		int jobopenNum = Integer.parseInt(jobopenNo);
		jobopenBasic.setJobopenNo(jobopenNum);
		
		//apply헤더 정보 가져오기
		jobopenBasic.setJobopenNo(jobopenNum);
		JobopenBasic jobOpen = apply1Service.viewJobOpen(jobopenBasic);
		
		//HighSchool 정보 가져오기
		highSchool.setJobopenNo(jobopenNum);
		highSchool.setUserId((String)session.getAttribute("id"));
		HighSchool hsD = apply1Service.selectHighSchool(highSchool); 
		
		//College 정보 가져오기
		college.setJobopenNo(jobopenNum);
		college.setUserId((String)session.getAttribute("id"));
		College colD = apply1Service.selectCollege(college);

		//University 정보 가져오기
		university.setJobopenNo(jobopenNum);
		university.setUserId((String)session.getAttribute("id"));
		University univD = apply1Service.selectUniversity(university);
		
		//GSchool 정보 가져오기
		gSchool.setJobopenNo(jobopenNum);
		gSchool.setUserId((String)session.getAttribute("id"));
		GSchool gsD = apply1Service.selectGSchool(gSchool);
		
		model.addAttribute("jobopenBasic", jobOpen);
		model.addAttribute("highSchool", hsD);
		model.addAttribute("college", colD);
		model.addAttribute("university", univD);
		model.addAttribute("gSchool", gsD );
	}

	@RequestMapping(value="/academicUpdate", method=RequestMethod.POST)
	public ModelAndView academicUpdateProc() {
		
		return null;
	}

	
	
	
	@RequestMapping(value="/military", method=RequestMethod.GET)
	public void military(String jobopenNo, JobopenBasic jobopenBasic, HttpSession session, Model model) {
		
		logger.info("military 활성화");
		logger.info("공고번호"+jobopenNo);
		
		
		jobopenBasic.setJobopenNo(Integer.parseInt(jobopenNo));
		JobopenBasic jobOpen = apply1Service.viewJobOpen(jobopenBasic);
		
		model.addAttribute("jobopenBasic", jobOpen);

	}


	@RequestMapping(value="/military", method=RequestMethod.POST)
	public String militaryProc(Military military) {
		
		logger.info("Apply1Controller_militaryProc : " + military);
		apply1Service.insertMilitary(military);
		
		return "redirect:/apply/career?jobopenNo="+military.getJobopenNo();	
	}
	
	
	@RequestMapping(value="/militaryUpdate", method=RequestMethod.GET)
	public void militaryUpdate(String jobopenNo, JobopenBasic jobopenBasic, HttpSession session, Military military, Model model) {
		
		int jobopenNum = Integer.parseInt(jobopenNo);
		jobopenBasic.setJobopenNo(jobopenNum);
		
		//apply헤더 정보 가져오기
		jobopenBasic.setJobopenNo(jobopenNum);
		JobopenBasic jobOpen = apply1Service.viewJobOpen(jobopenBasic);
		
		//military 정보 가져오기
		military.setJobopenNo(jobopenNum);
		military.setUserId((String)session.getAttribute("id"));
		Military mil = apply1Service.selectMilitary(military);

		model.addAttribute("jobopenBasic", jobOpen);
		model.addAttribute("military", mil);
	}


	@RequestMapping(value="/militaryUpdate", method=RequestMethod.POST)
	public ModelAndView militaryUpdateProc(Military military) {
		
		apply1Service.updateMilitary(military);
		return null;
	}

}
