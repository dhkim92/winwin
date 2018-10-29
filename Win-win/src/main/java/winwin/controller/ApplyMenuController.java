package winwin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.JobopenBasic;
import winwin.service.ApplyMenuService;

@Controller
@RequestMapping(value="/applyMenu")
public class ApplyMenuController {
	
	@Autowired ApplyMenuService applyMenuService;
	
	@RequestMapping(value="/selectApply", method = RequestMethod.GET)
	public void selectApply(Model model) {

		List<JobopenBasic> list = applyMenuService.getJobopenBasic();
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value="/selectApply", method = RequestMethod.POST)
	public @ResponseBody Map<String, List> selectApplyProc(HttpServletResponse resp) {
		
		Map<String, List> map = new HashMap<String, List>();
		
		
		List<JobopenBasic> list1 = applyMenuService.getJobopenBasic();
		
		List<JobopenBasic> list2 = applyMenuService.getJobopenBasic2();
		
		map.put("result1", list1);
		map.put("result2", list2);
		return map;
		
		
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
