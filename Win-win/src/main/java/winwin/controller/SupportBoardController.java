package winwin.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import winwin.dto.JobopenBasic;
import winwin.dto.SupportBoard;
import winwin.service.SupportBoardService;
import winwin.util.Paging;

@Controller
public class SupportBoardController {

	private static final Logger logger = LoggerFactory.getLogger(SupportBoardController.class);

	@Autowired
	SupportBoardService service;

	@RequestMapping(value = "/support/list", method = RequestMethod.GET)
	public void list(Model model) {
		List<JobopenBasic> title = service.getTitle();
		/*
		int curPage = 1;
		model.addAttribute("curPage", curPage);
		*/
		model.addAttribute("title", title);
	}

	/**
	 * 목록 ajax 호출 
	 * @param page
	 * @param limit
	 * @param pageCount
	 * @param param
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/support/search")
	public Paging listProcess(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "20") int limit,
			@RequestParam(required = false, defaultValue = "5") int pageCount,
			@RequestParam Map<String, Object> param) {
		
		Paging paging = service.getPaging(page, limit, pageCount, param);
		
		List<SupportBoard> list = service.list(paging, param);
		
		paging.setList(list);
		return paging;
	}
	
	@ResponseBody
	@PostMapping(value = "/support/detail")
	public SupportBoard detail(@RequestParam Map<String, Object> param) {
		
		SupportBoard detail = service.detail(param);
		
		return detail;
	}

	@RequestMapping(value = "/support/status", method = RequestMethod.GET)
	public SupportBoard status(SupportBoard board) {

		return board;
	}
}
