package winwin.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
public class SupportBoardController {

	private static final Logger logger = LoggerFactory.getLogger(SupportBoardController.class);

	@Autowired
	SupportBoardService service;

	@RequestMapping(value = "/support/list", method = RequestMethod.GET)
	public void list(Model model) {
		
		int curPage = 1;
		List<JobopenBasic> title = service.getTitle();
		
		model.addAttribute("curPage", curPage);
		model.addAttribute("title", title);
	}

	/**
	 * 목록 ajax 호출 
	 * @param curPage
	 * @param listCount
	 * @param pageCount
	 * @param param
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/support/search")
	public List<SupportBoard> listProcess(@RequestParam(required = false, defaultValue = "1") int curPage,
			@RequestParam(required = false, defaultValue = "20") int listCount,
			@RequestParam(required = false, defaultValue = "5") int pageCount,
			Map<String, Object> param) {

		Paging paging = service.getPaging(curPage, listCount, pageCount);

		List<SupportBoard> list = service.list(paging, param);

		return list;
	}

	@RequestMapping(value = "/support/view")
	public SupportBoard view(SupportBoard board) {

		return board;
	}

	@RequestMapping(value = "/support/status", method = RequestMethod.GET)
	public SupportBoard status(SupportBoard board) {

		return board;
	}
}
