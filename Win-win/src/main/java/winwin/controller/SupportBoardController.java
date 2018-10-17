package winwin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winwin.dto.SupportBoard;
import winwin.service.SupportBoardService;
import winwin.util.Paging;

@Controller
public class SupportBoardController {

	
private static Logger logger;
	
	@Autowired SupportBoardService service;

	@RequestMapping(value="/support/list")
	public void list(Model m,HttpServletRequest req) {
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
