package winwin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import winwin.dto.JobopenBasic;
import winwin.dto.SupportBoard;
import winwin.service.SupportBoardService;
import winwin.util.Paging;

@Controller
public class ResultBoardController {

	private static Logger logger;

	@Autowired
	SupportBoardService service;

	@RequestMapping(value = "/result/list", method = RequestMethod.GET)
	public void list(Model model) {
		
//		int curPage = 1;
		List<JobopenBasic> title = service.getTitle();
		
//		model.addAttribute("curPage", curPage);
		model.addAttribute("title", title);
	}
	
	@ResponseBody
	@RequestMapping(value = "/result/search")
	public Paging listProcess(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "20") int limit,
			@RequestParam(required = false, defaultValue = "5") int pageCount,
			Map<String, Object> param) {

		Paging paging = service.getPaging(page, limit, pageCount, param);

		List<SupportBoard> resultlist = service.resultlist(paging, param);
		
		paging.setList(resultlist);
		
		return paging;
		
	}

	@RequestMapping(value = "/result/send", method = RequestMethod.GET)
	public SupportBoard send(SupportBoard board, Model m) {

		return board;
	}

	@RequestMapping(value = "/result/status", method = RequestMethod.GET)
	public SupportBoard status(SupportBoard board) {

		return board;
	}

	@RequestMapping(value = "/result/pass", method = RequestMethod.GET)
	public SupportBoard pass(SupportBoard board) {
		return board;
	}

	@RequestMapping(value = "/result/selectTitle", method = RequestMethod.GET)
	public SupportBoard selectTitle(SupportBoard board) {
		return board;
	}
}
