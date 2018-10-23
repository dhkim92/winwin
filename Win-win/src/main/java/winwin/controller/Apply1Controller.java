package winwin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.Academic;
import winwin.dto.JobopenBasic;
import winwin.dto.Military;
import winwin.dto.User;
import winwin.dto.UserDetail;
import winwin.service.Apply1Service;

@Controller
@RequestMapping(value="/apply")
public class Apply1Controller {

	@Autowired Apply1Service apply1Service;
	
	@RequestMapping(value="/userDetail", method=RequestMethod.GET)
	public void userDetail(JobopenBasic jobopenBasic, User user, HttpSession session, Model model) {
		
//		apply1Service.viewJobOpen(jobopenBasic);
//		apply1Service.viewUser(user);
		
	}
	
	@RequestMapping(value="/timer", method=RequestMethod.GET)
	public void timer(JobopenBasic jobopenBasic, User user, HttpSession session, Model model) {
		
//		apply1Service.viewJobOpen(jobopenBasic);
//		apply1Service.viewUser(user);
		
	}

	@RequestMapping(value="/userDetail", method=RequestMethod.POST)
	public ModelAndView userDetailProc(UserDetail userDetail, HttpSession session) {
		
		apply1Service.insertUserDetail(userDetail);
		return null;
	}

	@RequestMapping(value="/userDetailUpdate", method=RequestMethod.GET)
	public void userDetailUpdate(JobopenBasic jobopenBasic, User user, UserDetail userDetail, HttpSession session, Model model) {

		apply1Service.viewJobOpen(jobopenBasic);
		apply1Service.viewUser(user);
		apply1Service.selectUserDetail(userDetail);
		
	}

	@RequestMapping(value="/userDetailUpdate", method=RequestMethod.POST)
	public ModelAndView userDetailUpdateProc(UserDetail userDetail) {
		
		apply1Service.updateUserDetail(userDetail);
		return null;
	}

	
	
	
	@RequestMapping(value="/academic", method=RequestMethod.GET)
	public void academic(JobopenBasic jobopenBasic, Model model) {
		
//		apply1Service.viewJobOpen(jobopenBasic);
				
	}

	@RequestMapping(value="/academic", method=RequestMethod.POST)
	public ModelAndView academicProc(Academic academic, HttpSession session, Model model) {
		
		apply1Service.insertAcademic(academic);
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
	public ModelAndView militaryProc( Military military, HttpSession session, Model model) {
		
		apply1Service.insertMilitary(military);
		
		return null;	
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
