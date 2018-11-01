package winwin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import winwin.dto.JobopenBasic;
import winwin.dto.JobopenDetail;
import winwin.service.JobopenService;
import winwin.util.Paging;

@Controller
@RequestMapping(value="/jobOpen")
public class JobopenBoardController {
	
	@Autowired JobopenService jobopenService;
	
	@RequestMapping(value="/list", method = RequestMethod.GET) 
	public void list(
			Model model,
			@RequestParam(required=false, defaultValue="0") int curPage,
			@RequestParam(required=false, defaultValue="15") int listCount,
			@RequestParam(required=false, defaultValue="10") int pageCount) {			
		
		Paging paging = jobopenService.getPaging(curPage, listCount, pageCount);
		model.addAttribute("paging", paging);
		
		List<JobopenBasic> list = jobopenService.selectBasic(paging);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="/view", method = RequestMethod.GET)
	public void view(JobopenBasic jobopenbasic, JobopenDetail jobopenDetail) {
	
//		jobopenService.viewBasic(jobopenbasic);
//		jobopenService.viewDetail(jobopenDetail);	
		
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public void delete(JobopenBasic jobopenBasic) {
		
		jobopenService.deleteJobopen(jobopenBasic.getJobopenNo());
	}
}
