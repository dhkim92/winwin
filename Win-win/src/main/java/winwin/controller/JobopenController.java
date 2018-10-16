package winwin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value="/basicInfo", method=RequestMethod.GET)
	public void basic() {
		
	}
	
	@RequestMapping(value="/basicInfo", method=RequestMethod.POST)
	public String basicProc(/*Basic basic*/) {
		
//		service.insert(Basic);
		
		return "detailInfo";
	}
	
	@RequestMapping(value="/detailInfo", method=RequestMethod.GET)
	public void detail() {
		
	}
	
	@RequestMapping(value="/detailInfo", method=RequestMethod.POST)
	public String detailProc(/*Basic basic, @RequestParam Detail[] detail*/) {
		
//		service.update(Basic);
		
//		for(int i=0;i<detail.size();i++){
//		service.insert(detail.get(i));
//		}
		
		return "register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void regi(/*Model model*/) {
		
//		Basic basic = service.selectBasic(jobOpen);
//		List<Detail> detail = service.selectDetail(jobOpen);
		
//		model.addAttribute("basic", basic);
//		model.addAttribute("detail", detail);
	}
	
}





















