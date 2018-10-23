package winwin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.JobopenBasic;
import winwin.dto.JobopenDetail;
import winwin.service.JobopenService;

/**
 * 
 * @author 김동현
 * @category 채용 공고
 * 
 * Last Update : 18.10.10 
 * 
 * memo : start winwin project
 *
 */

@Controller
@RequestMapping(value="/jobOpen")
public class JobopenController {
	
	@Autowired
	JobopenService jobopenService;
	
	@RequestMapping(value="/basicInfo", method=RequestMethod.GET)
	public void basic() {
		
	}
	
	@RequestMapping(value="/basicInfo", method=RequestMethod.POST)
	public String basicProc(@Validated JobopenBasic jobopenBasic, Errors errors, HttpSession session) {
	      if( errors.hasErrors() ) {
	          jobopenBasic.setEndDate(null);
	          jobopenBasic.setStartDate(null);
	          jobopenBasic.setStartPay(0);
	          jobopenBasic.setEndPay(0);
	       }
	      
	      if(jobopenBasic.getRulePay()==null) {
	    	  jobopenBasic.setRulePay("0");
	      }
	      if(jobopenBasic.getAllOpen()==null) {
	    	  jobopenBasic.setAllOpen("0");
	      }
	      
	      jobopenService.writeBasic(jobopenBasic);
	      session.setAttribute("jobopen", jobopenBasic.getJobopenNo());
	      
	      System.out.println(jobopenBasic.getJobopenNo());
	
		return "redirect:detailInfo";
	}
	
	@RequestMapping(value="/detailInfo", method=RequestMethod.GET)
	public void detail() {
		
	}
	
	@RequestMapping(value="/detailInfo", method=RequestMethod.POST)
	public String detailProc(JobopenBasic jobopenBasic, @RequestParam(value="jobopenDetail[]") List<JobopenDetail> jobopenDetail) {
		
		jobopenService.updateBasic(jobopenBasic);
		
		for(int i=0;i<jobopenDetail.size();i++){
		jobopenService.writeDetail(jobopenDetail.get(i));
		}
		
		return "register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void regi(Model model, HttpSession session) {
		
		JobopenBasic jobopenBasic = new JobopenBasic();
		JobopenDetail jobopenDetail = new JobopenDetail();
		
		jobopenBasic.setTitle((String)session.getAttribute("title"));
		jobopenDetail.setTitle(jobopenBasic.getTitle());
		
		JobopenBasic basic = jobopenService.viewBasic(jobopenBasic);
		List<JobopenDetail> detail = jobopenService.selectDetail(jobopenDetail);
		
		model.addAttribute("basic", basic);
		model.addAttribute("detail", detail);
	}
	
}





















