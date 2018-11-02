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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.Activity;
import winwin.dto.ActivityArr;
import winwin.dto.Career;
import winwin.dto.CareerArr;
import winwin.dto.Experience;
import winwin.dto.ExperienceArr;
import winwin.dto.Introduce;
import winwin.dto.JobopenBasic;
import winwin.dto.Language;
import winwin.dto.LanguageArr;
import winwin.dto.License;
import winwin.dto.LicenseArr;
import winwin.dto.Material;
import winwin.dto.MaterialArr;
import winwin.dto.Support;
import winwin.service.Apply2Service;

@Controller
@RequestMapping(value="/apply")
public class Apply2Controller {
	
	@Autowired Apply2Service apply2Service;
	@Autowired ServletContext context;
	private static final Logger logger = LoggerFactory.getLogger(JobopenController.class);
	
	@RequestMapping(value="/career", method=RequestMethod.GET)
	public void career(String jobopenNo, JobopenBasic jobopenBasic, HttpSession session, Model model) {
		
		jobopenBasic.setJobopenNo(3);	//수정
		model.addAttribute("jobopenBasic", apply2Service.viewJobOpen(jobopenBasic));
		
	}

 
	@RequestMapping(value="/career", method=RequestMethod.POST) 
	public String careerProc(String jobopenNo, HttpSession session, /*LanguageArr langArr,*/ CareerArr carArr) {
//
//		Language[] lang = langArr.getLangArr();
//		List<Language> langList = new LinkedList<>(Arrays.asList(lang));
//
//		List<Language> resLangList = new ArrayList<>();
//		Iterator<Language> langIter = langList.iterator();
//
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
//			resLangList.get(i).setJobopenNo(3);
//			resLangList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertLanguage(resLangList.get(i));
//		}
		
//		License[] lic = licArr.getLicArr();
//		List<License> licList = new LinkedList<>(Arrays.asList(lic));
//		
//		List<License> resLicList = new ArrayList<>();
//		Iterator<License> licIter = licList.iterator();
//		System.out.println(licList.toString());
//		while(licIter.hasNext()) {
//			License l = licIter.next();
			
//			if(		(!(l.getgrade()==null) && !(l.getgrade()=="0")) 
//					&& (!(l.getTestName()==null) && !(l.getTestName()=="0"))
//					&& (!(l.getScore()==null) && !(l.getScore()==""))
//					&& (!(l.getlDate()==null) && !(l.getlDate()==""))
//					&& (!(l.getlOrgan()==null) && !(l.getlOrgan()==""))) {
				
//				resLicList.add(l);
//			}
//		}
		
//		for(int i=0; i<resLicList.size(); i++) {
//			resLicList.get(i).setJobopenNo(3);
//			resLicList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertLicense(resLicList.get(i));
//		}
		
		Career[] car = carArr.getCarArr();
		List<Career> carList = new LinkedList<>(Arrays.asList(car));
		
		List<Career> resCarList = new ArrayList<>();
		Iterator<Career> carIter = carList.iterator();
		System.out.println(carList.toString());
		while(carIter.hasNext()) {
			Career c = carIter.next();
			
////			if() {
				resCarList.add(c);
////			}
		}
		
		for(int i=0; i<resCarList.size(); i++) {
			resCarList.get(i).setJobopenNo(3);
			resCarList.get(i).setUserId((String)session.getAttribute("id"));
			apply2Service.insertCareer(resCarList.get(i));
		}
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
////			if() {
//				resActList.add(a);
////			}
//		}
//		
//		for(int i=0; i<resActList.size(); i++) {
//			resActList.get(i).setJobopenNo(3);
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
////			if() {
//				resExpList.add(e);
////			}
//		}
//		
//		for(int i=0; i<resExpList.size(); i++) {
//			resExpList.get(i).setJobopenNo(3);
//			resExpList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertExperience(resExpList.get(i));
//		}
//		
//		
//		Material[] mat = matArr.getMatArr();
//		List<Material> matList = new LinkedList<>(Arrays.asList(mat));
//		
//		List<Material> resMatList = new ArrayList<>();
//		Iterator<Material> matIter = matList.iterator();
//		
//		while(matIter.hasNext()) {
//			Material m = matIter.next();
//			
////			if() {
//				resMatList.add(m);
////			}
//		}
//		
//		for(int i=0; i<resMatList.size(); i++) {
//			resMatList.get(i).setPortfolioId(3);
//			resLicList.get(i).setUserId((String)session.getAttribute("id"));
//			apply2Service.insertMaterial(resMatList.get(i));
//		}
//		
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
	public void introduce(JobopenBasic jobopenBasic, Model model) {
		
		jobopenBasic.setJobopenNo(3);	//수정
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
	public void finish(HttpSession session, JobopenBasic jobopenBasic,Model model) {
		
		jobopenBasic.setJobopenNo(3);	//수정
		model.addAttribute("jobopenBasic", apply2Service.viewJobOpen(jobopenBasic));

		//Member 이름 -> member
		//UserDetail 상세정보 -> userDetail
		
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.GET)
	public String finishProc(HttpSession session, Support support, JobopenBasic jobopenBasic,Model model) {
		
		support.setJobopenNo(3);	//수정
		support.setUserId((String)session.getAttribute("id"));
		apply2Service.insertSupport(support);

		return "redirect:/user/main";
		
	}

}
