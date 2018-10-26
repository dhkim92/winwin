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
	public void list() {
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
