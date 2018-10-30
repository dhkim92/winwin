package winwin.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import winwin.dto.Material;
import winwin.dto.NoticeBoard;
import winwin.service.NoticeBoardService;
import winwin.util.Paging;

@Controller
public class NoticeBoardController {
	
	private static Logger logger
		=LoggerFactory.getLogger(NoticeBoardController.class);
	
	@Autowired ServletContext context;
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
	public void write(HttpSession session) {
		//관리자 초기 로그인 값
		session.setAttribute("admincode", 111111);
		session.setAttribute("adminname", "관리자");
	}
	
	@RequestMapping(value="/notice/write", method=RequestMethod.POST)
	public void writeProc(@ModelAttribute("board") NoticeBoard board,HttpServletResponse resp) {
		
		List<MultipartFile> up = board.getFiles();
		logger.info(board.toString());
		logger.info(String.valueOf(up.size()));
//		List<String> upNames = new ArrayList<>();
		
		int noticeNo = service.getNoticeNo();
		board.setNoticeno(noticeNo);
		
		if(up.size()==1 && up.get(0).getOriginalFilename().equals("") ) {
			
			logger.info(board.toString());
			
			logger.info("첨부된 파일이 없을 경우");
			
			service.write(board);
		
		}else {
			
			logger.info("파일을 첨부할 경우");
			

			for (MultipartFile data : up) {
															
				String realpath = context.getRealPath("upload");				
				String uid = UUID.randomUUID().toString().split("-")[4];				
				String stored = data.getOriginalFilename()+"_"+uid;
				File dest = new File(realpath, stored);

				//파일 업로드
				try {
					data.transferTo(dest);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				
				//DB 업로드
				Material file = new Material();
				
				file.setFilesize(data.getSize());
				file.setNoticeNo(noticeNo);
				file.setAdminCode(board.getCode());
				file.setStoredName(stored);
				file.setOriginName(data.getOriginalFilename());
				
				service.insertFile(file);
				
			}
			
			service.write(board);
			
		}
		
		resp.setContentType("text/html;charset=utf-8");
		try {
			PrintWriter out = resp.getWriter();
			out.println("<script>");
			out.println("alert('글쓰기 완료')");
			out.println("location.href='/notice/list'");
			out.println("</script>");
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
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
