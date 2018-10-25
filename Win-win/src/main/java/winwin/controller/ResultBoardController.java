package winwin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import winwin.dto.ResultBoard;
import winwin.dto.SupportBoard;
import winwin.service.ResultBoardService;
import winwin.util.Paging;

@Controller
public class ResultBoardController {

	private static Logger logger;

	@Autowired
	ResultBoardService service;

	@RequestMapping(value = "/result/list")
	public ModelAndView list(@RequestParam(required = false, defaultValue = "0") int curPage,
							 @RequestParam(required = false, defaultValue = "20") int listCount,
							 @RequestParam(required = false, defaultValue = "5") int pageCount) throws Exception {

		Paging paging = service.getPaging(curPage, listCount, pageCount);

		List<ResultBoard> list = service.list(paging);

		System.out.println("getPaging :" + paging);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("result/list");
		mav.addObject("list", list);
		mav.addObject("paging", paging);

		return mav;
	}

	@RequestMapping(value = "/result/send", method = RequestMethod.GET)
	public ResultBoard send(ResultBoard board, Model m) {

		return board;
	}

	@RequestMapping(value = "/result/status", method = RequestMethod.GET)
	public ResultBoard status(ResultBoard board) {

		return board;
	}

	@RequestMapping(value = "/result/pass", method = RequestMethod.GET)
	public ResultBoard pass(ResultBoard board) {
		return board;
	}

	@RequestMapping(value = "/result/selectTitle", method = RequestMethod.GET)
	public ResultBoard selectTitle(ResultBoard board) {
		return board;
	}
}
