package winwin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winwin.dto.QnaBoard;
import winwin.dto.QnaComment;
import winwin.service.QnaBoardService;
import winwin.util.Paging;

@Controller
public class QnaBoardController {

	private static Logger logger
		= LoggerFactory.getLogger(QnaBoardController.class);
	
	@Autowired QnaBoardService service;
	
	@RequestMapping(value="/qna/list")
	public void list(Model m,HttpServletRequest req) {
		
		//관리자 초기 로그인 값
		HttpSession session =  req.getSession();
		session.setAttribute("login", true);
		session.setAttribute("id", "USER2@naver.com");
		session.setAttribute("name", "이현우");		
		
		int total = service.totalCnt();
		String curr =req.getParameter("curPage");
		
		int curPage = 0;
		if( !"".equals(curr) && curr != null ) {
			curPage = Integer.parseInt(curr);
		}
		
		Paging paging = new Paging(total, curPage);
		List<QnaBoard> list = service.list(paging);
		m.addAttribute("list", list);
		m.addAttribute("paging", paging);
	}
	@RequestMapping(value="/qna/list", method=RequestMethod.POST)
	public void listProc(QnaBoard board) {
		QnaBoard resBoard = service.view(board);
		if(board.getPw().equals(resBoard.getPw())) {
			logger.info("pw 일치");

		}else {
			logger.info("pw 불일치");
			int i = 4/0; //에러 함수 호출시키기
		}
	}
	
	
	@RequestMapping(value="/qna/view", method=RequestMethod.GET)
	public void view(QnaBoard board,Model m) {
		QnaBoard resBoard = service.view(board);
//		List<QnaComment> comments = service.selectCommentByBoardNo(board);
		m.addAttribute("board", resBoard);
//		m.addAttribute("comments", comments);
		
	}
	
	@RequestMapping(value="/qna/view", method=RequestMethod.POST)
	public void viewProc(QnaComment comment,QnaBoard board,Model m) {
		service.deleteComment(comment);
		service.insertComment(comment);
		service.selectCommentByBoardNo(board);
	}
	
	@RequestMapping(value="/qna/write", method=RequestMethod.GET)
	public void write() {
		
	}
	
	@RequestMapping(value="/qna/write", method=RequestMethod.POST)
	public void writeProc(QnaBoard board,HttpServletResponse resp) {
		logger.info(board.toString());
		service.write(board);
		
		resp.setContentType("text/html;charset=utf-8");
		try {
			PrintWriter out = resp.getWriter();
			out.println("<script>");
			out.println("alert('글쓰기 완료')");
			out.println("location.href='/qna/list'");
			out.println("</script>");
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/qna/delete", method=RequestMethod.POST)
	public String delete(QnaBoard board) {
		service.deleteBoard(board);
		service.deleteCommentsByBoardNo(board);
		return "redirect:/qna/list";
	}
	
	@RequestMapping(value="/qna/update", method=RequestMethod.GET)
	public void update(QnaBoard board) {
		service.view(board);
	}
	
	@RequestMapping(value="/qna/update", method=RequestMethod.POST)
	public void updateProc(QnaBoard board) {
		service.updateBoard(board);
		
		
	}
	
}
