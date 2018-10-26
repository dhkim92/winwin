package winwin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.Activity;
import winwin.dto.Career;
import winwin.dto.Experience;
import winwin.dto.Introduce;
import winwin.dto.JobopenBasic;
import winwin.dto.Language;
import winwin.dto.License;
import winwin.dto.Material;
import winwin.dto.Member;
import winwin.dto.Support;
import winwin.service.Apply2Service;

@Controller
@RequestMapping(value="/apply")
public class Apply2Controller {
	
	@Autowired Apply2Service apply2Service;

	
	@RequestMapping(value="/career", method=RequestMethod.GET)
	public void career(JobopenBasic jobopenBasic, HttpSession session, Model model) {
		
//		apply2Service.viewJobOpen(jobopenBasic);
		
	}


	@RequestMapping(value="/career", method=RequestMethod.POST) 
	public ModelAndView careerProc
		(@RequestParam(value="language[]") Language[] language, @RequestParam(value="license[]")List<License> license, @RequestParam(value="career[]")List<Career> career, 
					@RequestParam(value="activity[]")List<Activity> activity, @RequestParam(value="experience[]")List<Experience> experience, @RequestParam(value="file[]")List<Material> file) {
		
		for(int i=0; i<language.length; i++) {
//	         apply2Service.insertLanguage(language[i]);
	    }
	      
		for(int i=0; i<license.size(); i++) {
	         apply2Service.insertLicense(license.get(i));
	    }
		
		for(int i=0; i<career.size(); i++) {
	         apply2Service.insertCareer(career.get(i));
	    }
		
		for(int i=0; i<activity.size(); i++) {
	         apply2Service.insertActivity(activity.get(i));
	    }
		
		for(int i=0; i<experience.size(); i++) {
	         apply2Service.insertExperience(experience.get(i));
	    }
		
		for(int i=0; i<file.size(); i++) {
	         apply2Service.insertFile(file.get(i));
	    }
		return null;
	      
	
	}
		
	@RequestMapping(value="/careerUpdate", method=RequestMethod.GET)
	public void careerUpdate(Model model, HttpSession session, Language language, License license, Career career, Activity activity, Experience experience, Material file) {
		
		apply2Service.selectLanguage(language);
		apply2Service.selectLicense(license);
		apply2Service.selectCareer(career);
		apply2Service.selectActivity(activity);
		apply2Service.selectExperience(experience);
		apply2Service.selectFile(file);
		
	}


	@RequestMapping(value="/careerUpdate", method=RequestMethod.POST)
	public ModelAndView careerUpdateProc
	(@RequestParam(value="language[]")List<Language> language, @RequestParam(value="license[]")List<License> license, @RequestParam(value="career[]")List<Career> career, 
				@RequestParam(value="activity[]")List<Activity> activity, @RequestParam(value="experience[]")List<Experience> experience, @RequestParam(value="file[]")List<Material> file) {
	
		for(int i=0; i<language.size(); i++) {
	         apply2Service.updateLanguage(language.get(i));
	    }
	      
		for(int i=0; i<license.size(); i++) {
	         apply2Service.updateLicense(license.get(i));
	    }
		
		for(int i=0; i<career.size(); i++) {
	         apply2Service.updateCareer(career.get(i));
	    }
		
		for(int i=0; i<activity.size(); i++) {
	         apply2Service.updateActivity(activity.get(i));
	    }
		
		for(int i=0; i<experience.size(); i++) {
	         apply2Service.updateExperience(experience.get(i));
	    }
		
		for(int i=0; i<file.size(); i++) {
	         apply2Service.updateFile(file.get(i));
	    }
		return null;
      

	}

	
	
	@RequestMapping(value="/introduce", method=RequestMethod.GET)
	public void introduce(JobopenBasic jobopenBasic, Model model) {
		
//		apply2Service.viewJobOpen(jobopenBasic);
	}
	
	
	@RequestMapping(value="/introduce", method=RequestMethod.POST)
	public String introduceProc(Introduce introduce, HttpSession session) {
		
		introduce.setUserId((String)session.getAttribute("id"));
		introduce.setJobopenNo(3);
		apply2Service.insertIntroduce(introduce);
		
		return "/apply/finish";
	}


	@RequestMapping(value="/introduceUpdate", method=RequestMethod.GET)
	public void introduceUpdate(JobopenBasic jobopenBasic, Introduce introduce, HttpSession session, Model model) {
		
//		apply2Service.viewJobOpen(jobopenBasic);
		introduce.setUserId((String)session.getAttribute("id"));
		introduce.setJobopenNo(3);	//수정
		model.addAttribute("intro", apply2Service.selectIntroduce(introduce));

	}

	@RequestMapping(value="/introduceUpdate", method=RequestMethod.POST)
	public String introduceUpdateProc(Introduce introduce, HttpSession session) {
	
		introduce.setUserId((String)session.getAttribute("id"));
		introduce.setJobopenNo(3);	//수정
		apply2Service.updateIntroduce(introduce);
		
		return "/apply/finish";
	}
	
	
	
	@RequestMapping(value="/finish")
	public String finish(HttpSession session, Support support) {
		
		support.setJobopenNo(3);	//수정
		support.setUserId((String)session.getAttribute("id"));
		apply2Service.insertSupport(support);
		
		return "/main/usermain";
	}


}
