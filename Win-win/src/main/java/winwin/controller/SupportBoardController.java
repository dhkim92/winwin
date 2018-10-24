package winwin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.SupportBoard;
import winwin.service.SupportBoardService;
import winwin.util.Paging;

@Controller
public class SupportBoardController {

	
	private static final Logger logger =
			LoggerFactory.getLogger(SupportBoardController.class);
	
	@Autowired SupportBoardService service;

	@RequestMapping(value="/support/list")
	public ModelAndView list(@RequestParam(required=false, defaultValue="0") int curPage,
							 @RequestParam(required=false, defaultValue="20") int listCount,
							 @RequestParam(required=false, defaultValue="10") int pageCount) throws Exception{
		
		Paging paging = service.getPaging(curPage, listCount, pageCount);
		
		List<SupportBoard> list = service.list(paging);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("support/list");
		mav.addObject("list",list);
		
		return mav;
	}
	
	@RequestMapping(value="/support/view")
	public SupportBoard view(SupportBoard board) {
		
		return board;
	}
	
	@RequestMapping(value="/support/Search", method=RequestMethod.GET)
	public SupportBoard Search(String search, SupportBoard board) {
		
		return board;
	}
	
	@RequestMapping(value="/support/status", method=RequestMethod.GET)
	public SupportBoard status(SupportBoard board) {
		
		return board;
	}
}
