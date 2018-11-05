package winwin.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.Activity;
import winwin.dto.ActivityArr;
import winwin.dto.Career;
import winwin.dto.CareerArr;
import winwin.dto.College;
import winwin.dto.Experience;
import winwin.dto.ExperienceArr;
import winwin.dto.GSchool;
import winwin.dto.HighSchool;
import winwin.dto.Introduce;
import winwin.dto.JobopenBasic;
import winwin.dto.Language;
import winwin.dto.LanguageArr;
import winwin.dto.License;
import winwin.dto.LicenseArr;
import winwin.dto.Material;
import winwin.dto.MaterialArr;
import winwin.dto.Member;
import winwin.dto.Military;
import winwin.dto.Support;
import winwin.dto.University;
import winwin.dto.UserDetail;
import winwin.service.Apply2Service;

@Controller
@RequestMapping(value="/apply")
public class Apply2Controller {
	
	@Autowired Apply2Service apply2Service;
	@Autowired ServletContext context;
	private static final Logger logger = LoggerFactory.getLogger(JobopenController.class);
	
	@RequestMapping(value="/career", method=RequestMethod.GET)
	public void career(String jobopenNo, JobopenBasic jobopenBasic, HttpSession session, Model model) {
		
		jobopenBasic.setJobopenNo(Integer.parseInt(jobopenNo));	//수정
		model.addAttribute("jobopenBasic", apply2Service.viewJobOpen(jobopenBasic));
		
	}

 
	@RequestMapping(value="/career", method=RequestMethod.POST) 
	public String careerProc(HttpSession session, JobopenBasic jobopenBasic, LanguageArr langArr, LicenseArr licArr, CareerArr carArr, ActivityArr actArr, ExperienceArr expArr/*, MaterialArr matArr*/) {

		Language[] lang = langArr.getLangArr();
		List<Language> langList = new LinkedList<>(Arrays.asList(lang));

		List<Language> resLangList = new ArrayList<>();
		Iterator<Language> langIter = langList.iterator();
		System.out.println(langList);
		System.out.println(jobopenBasic.getJobopenNo());
//		while(langIter.hasNext()) {
//			Language l = langIter.next();
//
//			if(		(!(l.getgrade()==null) && !(l.getgrade()=="0")) 
//				&& (!(l.getTestName()==null) && !(l.getTestName()=="0"))
//				&& (!(l.getScore()==null) && !(l.getScore()==""))
//				&& (!(l.getlDate()==null) && !(l.getlDate()==""))
//				&& (!(l.getlOrgan()==null) && !(l.getlOrgan()==""))) {
//				resLangList.add(l);
//			}
//		}
//		
//		for(int i=0; i<resLangList.size(); i++) {
//			resLangList.get(i).setJobopenNo(Integer.parseInt(jobopenNo));
//			resLangList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertLanguage(resLangList.get(i));
//		}
//		
//		License[] lic = licArr.getLicArr();
//		List<License> licList = new LinkedList<>(Arrays.asList(lic));
//		
//		List<License> resLicList = new ArrayList<>();
//		Iterator<License> licIter = licList.iterator();
//
//		while(licIter.hasNext()) {
//			License l = licIter.next();
//			
//			if(		(!(l.getLiName()==null) && !(l.getLiName()=="")) 
//					&& (!(l.getLiDate()==null) && !(l.getLiDate()=="0"))
//					&& (!(l.getLiOrgan()==null) && !(l.getLiOrgan()==""))) {
//				resLicList.add(l);
//			}
//		}
//		
//		for(int i=0; i<resLicList.size(); i++) {
//			resLicList.get(i).setJobopenNo(Integer.parseInt(jobopenNo));
//			resLicList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertLicense(resLicList.get(i));
//		}
//		
//		Career[] car = carArr.getCarArr();
//		List<Career> carList = new LinkedList<>(Arrays.asList(car));
//		
//		List<Career> resCarList = new ArrayList<>();
//		Iterator<Career> carIter = carList.iterator();
//
//		while(carIter.hasNext()) {
//			Career c = carIter.next();
//			
//			if(		(!(c.getcStartDate()==null) && !(c.getcStartDate()=="")) 
//					&& (!(c.getcEndDate()==null) && !(c.getcEndDate()==""))
//					&& (!(c.getcName()==null) && !(c.getcName()==""))
//					&& (!(c.getPosition()==null) && !(c.getPosition()==""))
//					&& (!(c.getTask()==null) && !(c.getTask()==""))
//					&& (!(c.getSalary()==null) && !(c.getSalary()==""))
//					&& (!(c.getcContent()==null) && !(c.getcContent()==""))) {
//				resCarList.add(c);
//			}
//		}
//		
//		for(int i=0; i<resCarList.size(); i++) {
//			resCarList.get(i).setJobopenNo(Integer.parseInt(jobopenNo));
//			resCarList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertCareer(resCarList.get(i));
//		}
//		
//		
//		Activity[] act = actArr.getActArr();
//		List<Activity> actList = new LinkedList<>(Arrays.asList(act));
//		
//		List<Activity> resActList = new ArrayList<>();
//		Iterator<Activity> actIter = actList.iterator();
//
//		while(actIter.hasNext()) {
//			Activity a = actIter.next();
//			
//			if(		(!(a.getaName()==null) && !(a.getaName()=="")) 
//					&& (!(a.getaStartDate()==null) && !(a.getaStartDate()==""))
//					&& (!(a.getaEndDate()==null) && !(a.getaEndDate()==""))
//					&& (!(a.getaContent()==null) && !(a.getaContent()==""))) {
//				resActList.add(a);
//			}
//		}
//		
//		for(int i=0; i<resActList.size(); i++) {
//			resActList.get(i).setJobopenNo(Integer.parseInt(jobopenNo));
//			resActList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertActivity(resActList.get(i));
//		}
//		
//		
//		Experience[] exp = expArr.getExpArr();
//		List<Experience> expList = new LinkedList<>(Arrays.asList(exp));
//		
//		List<Experience> resExpList = new ArrayList<>();
//		Iterator<Experience> expIter = expList.iterator();
//
//		while(expIter.hasNext()) {
//			Experience e = expIter.next();
//			
//			if(		(!(e.geteOption()==null) && !(e.geteOption()=="0")) 
//					&& (!(e.geteOrgan()==null) && !(e.geteOption()==""))
//					&& (!(e.geteStartDate()==null) && !(e.geteStartDate()==""))
//					&& (!(e.geteEndDate()==null) && !(e.geteEndDate()==""))
//					&& (!(e.geteContent()==null) && !(e.geteContent()==""))) {
//				resExpList.add(e);
//			}
//		}
//		
//		for(int i=0; i<resExpList.size(); i++) {
//			resExpList.get(i).setJobopenNo(Integer.parseInt(jobopenNo));
//			resExpList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertExperience(resExpList.get(i));
//		}
//		
//		
////		Material[] mat = matArr.getMatArr();
////		List<Material> matList = new LinkedList<>(Arrays.asList(mat));
////		
////		List<Material> resMatList = new ArrayList<>();
////		Iterator<Material> matIter = matList.iterator();
////		System.out.println(mat);
////		while(matIter.hasNext()) {
////			Material m = matIter.next();
////			
//////			if() {
////				resMatList.add(m);
//////			}
////		}
////		
////		for(int i=0; i<resMatList.size(); i++) {
////			resMatList.get(i).setPortfolioId(3);
////			resLicList.get(i).setUserId((String)session.getAttribute("id"));
////			apply2Service.insertMaterial(resMatList.get(i));
////		}
////		
//		return "redirect:/apply/introduce?jobopenNo="+resLicList.get(0).getJobopenNo();
		return "redirect:/apply/introduce";

	}
		
	@RequestMapping(value="/careerUpdate", method=RequestMethod.GET)
	public void careerUpdate(JobopenBasic jobopenBasic, Model model, HttpSession session, Language language, License license, Career career, Activity activity, Experience experience, Material material) {
		
		jobopenBasic.setJobopenNo(3);	//수정
		model.addAttribute("jobopenBasic", apply2Service.viewJobOpen(jobopenBasic));
		
		apply2Service.selectLanguage(language);
		apply2Service.selectLicense(license);
		apply2Service.selectCareer(career);
		apply2Service.selectActivity(activity);
		apply2Service.selectExperience(experience);
		apply2Service.selectMaterial(material);
		
	}


	@RequestMapping(value="/careerUpdate", method=RequestMethod.POST)
	public String careerUpdateProc(LanguageArr langArr, LicenseArr licArr, CareerArr carArr, ActivityArr actArr, ExperienceArr expArr, MaterialArr matArr) {
	
		
		return "redirect:/apply/introduce";

	}

	
	
	@RequestMapping(value="/introduce", method=RequestMethod.GET)
	public void introduce(String jobopenNo, JobopenBasic jobopenBasic, Model model) {
		
		jobopenBasic.setJobopenNo(Integer.parseInt(jobopenNo));	//수정
		model.addAttribute("jobopenBasic", apply2Service.viewJobOpen(jobopenBasic));
	
	}
	
	
	@RequestMapping(value="/introduce", method=RequestMethod.POST)
	public String introduceProc(Introduce introduce, HttpSession session) {
		
		introduce.setUserId((String)session.getAttribute("id"));
		introduce.setJobopenNo(3);	//수정
		apply2Service.insertIntroduce(introduce);
		
		return "redirect:/apply/finish";
		
	}


	@RequestMapping(value="/introduceUpdate", method=RequestMethod.GET)
	public void introduceUpdate(JobopenBasic jobopenBasic, Introduce introduce, HttpSession session, Model model) {
		
		jobopenBasic.setJobopenNo(3);	//수정
		model.addAttribute("jobopenBasic", apply2Service.viewJobOpen(jobopenBasic));
		
		introduce.setUserId((String)session.getAttribute("id"));
		introduce.setJobopenNo(3);	//수정
		model.addAttribute("intro", apply2Service.selectIntroduce(introduce));

	}

	@RequestMapping(value="/introduceUpdate", method=RequestMethod.POST)
	public String introduceUpdateProc(Introduce introduce, HttpSession session, ModelAndView mav) {
	
		introduce.setUserId((String)session.getAttribute("id"));
		introduce.setJobopenNo(3);	//수정
		apply2Service.updateIntroduce(introduce);
		
		return "redirect:/apply/finish";
		
	}
	
	
	
	@RequestMapping(value="/finish", method=RequestMethod.GET)
	public void finish(HttpSession session, JobopenBasic jobopenBasic, Member member, UserDetail userDetail, HighSchool highSchool, College college, University university, GSchool gSchool, 
			Military military, Language language, License license, Career career, Activity activity, Experience experience, Introduce introduce, Model model) {
		
		jobopenBasic.setJobopenNo(3);	//수정
		model.addAttribute("jobopenBasic", apply2Service.viewJobOpen(jobopenBasic));

		member.setUserid((String)session.getAttribute("id"));
		model.addAttribute("member", apply2Service.selectMember(member));
		
		userDetail.setUserId((String)session.getAttribute("id"));
		userDetail.setJobopenNo(3);
		model.addAttribute("userDetail", apply2Service.selectUserDetail(userDetail));
		
		highSchool.setUserId((String)session.getAttribute("id"));
		highSchool.setJobopenNo(3);
		model.addAttribute("highSchool", apply2Service.selectHighSchool(highSchool));

		college.setUserId((String)session.getAttribute("id"));
		college.setJobopenNo(3);
		model.addAttribute("college", apply2Service.selectCollege(college));
		
		university.setUserId((String)session.getAttribute("id"));
		university.setJobopenNo(3);
		model.addAttribute("university", apply2Service.selectUniversity(university));
		
		gSchool.setUserId((String)session.getAttribute("id"));
		gSchool.setJobopenNo(3);
		model.addAttribute("gSchool", apply2Service.selectGSchool(gSchool));
		
		military.setUserId((String)session.getAttribute("id"));
		military.setJobopenNo(3);
		model.addAttribute("military", apply2Service.selectMilitary(military));
		
		language.setUserId((String)session.getAttribute("id"));
		language.setJobopenNo(3);
		model.addAttribute("langauge", apply2Service.selectLanguage(language));
		System.out.println(language.getgrade());

		license.setUserId((String)session.getAttribute("id"));
		license.setJobopenNo(3);
		model.addAttribute("license", apply2Service.selectLicense(license));
		System.out.println(license.getLiName());
		career.setUserId((String)session.getAttribute("id"));
		career.setJobopenNo(3);
		model.addAttribute("career", apply2Service.selectCareer(career));
		
		activity.setUserId((String)session.getAttribute("id"));
		activity.setJobopenNo(3);
		model.addAttribute("activity", apply2Service.selectActivity(activity));

		experience.setUserId((String)session.getAttribute("id"));
		experience.setJobopenNo(3);
		model.addAttribute("experience", apply2Service.selectExperience(experience));
		
		introduce.setUserId((String)session.getAttribute("id"));
		introduce.setJobopenNo(3);
		model.addAttribute("introduce", apply2Service.selectIntroduce(introduce));
		
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.GET)
	public String finishProc(HttpSession session, JobopenBasic jobopenBasic, Support support) {
		
		support.setJobopenNo(3);	//수정
		support.setUserId((String)session.getAttribute("id"));
		
		apply2Service.insertSupport(support);
		
		return "redirect:/user/main";
		
	}

}
