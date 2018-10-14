package winwin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winwin.service.JobopenService;

@Controller
@RequestMapping(value="/apply")
public class ApplyMenuController {
	
	@Autowired JobopenService jobopenService;
	
	@RequestMapping(value="/selectApply", method = RequestMethod.GET)
	public void selectApply() {
		// 채용공고 제목,채용공고 번호 리스트 불러오기 
//		jobopenService.selectBasic();
	}
	
	@RequestMapping(value="/passfail", method = RequestMethod.GET)
	public void passfail() {
		// 채용공고 제목,채용공고 번호 리스트 불러오기 
//		jobopenService.selectBasic();
	}
	
//	@RequestMapping(value="/passfail", method = RequestMethod.POST)
//	public void passfailProc(User user, JobopenBasic jobopenBasic) {
//		// 지원서 작성 view 띄우기 
//		
//	}
}
