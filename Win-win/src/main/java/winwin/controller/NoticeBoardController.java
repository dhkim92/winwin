package winwin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import winwin.dto.Material;
import winwin.dto.NoticeBoard;
import winwin.service.NoticeBoardService;
import winwin.util.Paging;

@Controller
public class NoticeBoardController {
	
	private static Logger logger;
	
	@Autowired NoticeBoardService service;

	@RequestMapping(value="/notice/list")
	public void list(Model m,HttpServletRequest req) {
		int total = service.totalCnt();
		String curr =req.getParameter("curPage");
		
		int curPage = 0;
		if( !"".equals(curr) && curr != null ) {
			curPage = Integer.parseInt(curr);
		}
		Paging paging = new Paging(total, curPage);
		List<NoticeBoard> list = service.list(paging);
		m.addAttribute("list", list);
		m.addAttribute("paging", paging);
	}
	
	@RequestMapping(value="/notice/view", method=RequestMethod.GET)
	public void view(NoticeBoard board,Model m) {
		NoticeBoard resBoard = service.view(board);
		List<Material> files = service.filesByBoardNo(board);
		m.addAttribute("board", resBoard);
		m.addAttribute("files", files);		
	}
	
	@RequestMapping(value="/notice/download", method=RequestMethod.POST)
	public void download(Material file) {
		service.selectFile(file);
	}
	
	@RequestMapping(value="/notice/write", method=RequestMethod.GET)
	public void write() {
		
	}
	
	@RequestMapping(value="/notice/write", method=RequestMethod.POST)
	public void writeProc(MultipartFile up,NoticeBoard board,Material file) {
		if(up==null) {
			service.write(board);
		}else {
			service.insertFile(file);
			service.write(board);
		}
	}
	
	@RequestMapping(value="/notice/delete", method=RequestMethod.POST)
	public String delete(NoticeBoard board, Material file) {
		service.deleteBoard(board);
		service.deleteFile(file);
		return "redirect:/notice/list";
	}
	
	@RequestMapping(value="/notice/update", method=RequestMethod.GET)
	public void update(NoticeBoard board) {
//		service.view(board);
//		service.FilesByBoardNo(board);
	}
	
	@RequestMapping(value="/notice/update", method=RequestMethod.POST)
	public void updateProc(MultipartFile up,NoticeBoard board, Material file) {
		if(up==null) {
			service.deleteFilesByBoardNo(board);
			service.updateBoard(board);
		}else {
			service.deleteFilesByBoardNo(board);
			service.insertFile(file);
			service.updateBoard(board);
		}
		
	}
}
