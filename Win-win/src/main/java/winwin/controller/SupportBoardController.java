package winwin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.SupportBoard;
import winwin.service.SupportBoardService;
import winwin.util.Paging;

@Controller
public class SupportBoardController {

	private static final Logger logger = LoggerFactory.getLogger(SupportBoardController.class);

	@Autowired
	SupportBoardService service;

	@RequestMapping(value = "/support/list", method = RequestMethod.GET)
	public ModelAndView list(@RequestParam(required = false, defaultValue = "0") int curPage,
			@RequestParam(required = false, defaultValue = "20") int listCount,
			@RequestParam(required = false, defaultValue = "5") int pageCount) throws Exception {

		Paging paging = service.getPaging(curPage, listCount, pageCount);

		List<SupportBoard> list = service.list(paging);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("support/list");
		mav.addObject("list", list);
		mav.addObject("paging", paging);

		return mav;
	}

	@RequestMapping(value = "/support/search", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> listProcess(String career, String employment, String duty, String academiccareer,
			String credit, String language, String score, String status, String clear) {

		Map<Object, Object> map = new HashMap<Object, Object>();

		boolean success = true;

		map.put("success", success);
		map.put("career", career);
		map.put("employment", employment);
		map.put("duty", duty);
		map.put("academiccareer", academiccareer);
		map.put("credit", credit);
		map.put("language", language);
		map.put("score", score);
		map.put("status", status);
		map.put("clear", clear);

		return map;
	}

	@RequestMapping(value = "/support/list", method = RequestMethod.POST)
	public ModelAndView Search(String career, String employment, String academiccareer, String title, String credit,
			String language, String score, String status, String clear,
			@RequestParam(required = false, defaultValue = "0") int curPage,
			@RequestParam(required = false, defaultValue = "20") int listCount,
			@RequestParam(required = false, defaultValue = "5") int pageCount) throws Exception {

		Paging paging = service.getPaging(curPage, listCount, pageCount);

		List<SupportBoard> list = service.list(paging);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("support/list");
		mav.addObject("list", list);
		mav.addObject("paging", paging);

		return mav;

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
